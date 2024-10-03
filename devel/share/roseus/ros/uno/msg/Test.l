;; Auto-generated. Do not edit!


(when (boundp 'uno::Test)
  (if (not (find-package "UNO"))
    (make-package "UNO"))
  (shadow 'Test (find-package "UNO")))
(unless (find-package "UNO::TEST")
  (make-package "UNO::TEST"))

(in-package "ROS")
;;//! \htmlinclude Test.msg.html


(defclass uno::Test
  :super ros::object
  :slots (_x _y _label ))

(defmethod uno::Test
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:label __label) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _label (string __label))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; string _label
    4 (length _label)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get uno::Test :md5sum-) "758d8c9fcfdf72f4de3bde06357b9c26")
(setf (get uno::Test :datatype-) "uno/Test")
(setf (get uno::Test :definition-)
      "float32 x
float32 y
string label
")



(provide :uno/Test "758d8c9fcfdf72f4de3bde06357b9c26")


