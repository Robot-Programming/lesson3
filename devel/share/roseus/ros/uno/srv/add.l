;; Auto-generated. Do not edit!


(when (boundp 'uno::add)
  (if (not (find-package "UNO"))
    (make-package "UNO"))
  (shadow 'add (find-package "UNO")))
(unless (find-package "UNO::ADD")
  (make-package "UNO::ADD"))
(unless (find-package "UNO::ADDREQUEST")
  (make-package "UNO::ADDREQUEST"))
(unless (find-package "UNO::ADDRESPONSE")
  (make-package "UNO::ADDRESPONSE"))

(in-package "ROS")





(defclass uno::addRequest
  :super ros::object
  :slots (_a _b ))

(defmethod uno::addRequest
  (:init
   (&key
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _b (float __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; float32 _a
    4
    ;; float32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _a
       (sys::poke _a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _b
       (sys::poke _b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _b
     (setq _b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass uno::addResponse
  :super ros::object
  :slots (_sum ))

(defmethod uno::addResponse
  (:init
   (&key
    ((:sum __sum) 0.0)
    )
   (send-super :init)
   (setq _sum (float __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; float32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _sum
       (sys::poke _sum (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _sum
     (setq _sum (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass uno::add
  :super ros::object
  :slots ())

(setf (get uno::add :md5sum-) "210a18f816d5b88becb133b82fae0c4c")
(setf (get uno::add :datatype-) "uno/add")
(setf (get uno::add :request) uno::addRequest)
(setf (get uno::add :response) uno::addResponse)

(defmethod uno::addRequest
  (:response () (instance uno::addResponse :init)))

(setf (get uno::addRequest :md5sum-) "210a18f816d5b88becb133b82fae0c4c")
(setf (get uno::addRequest :datatype-) "uno/addRequest")
(setf (get uno::addRequest :definition-)
      "float32 a
float32 b
---
float32 sum
")

(setf (get uno::addResponse :md5sum-) "210a18f816d5b88becb133b82fae0c4c")
(setf (get uno::addResponse :datatype-) "uno/addResponse")
(setf (get uno::addResponse :definition-)
      "float32 a
float32 b
---
float32 sum
")



(provide :uno/add "210a18f816d5b88becb133b82fae0c4c")


