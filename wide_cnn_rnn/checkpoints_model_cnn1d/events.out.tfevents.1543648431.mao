       �K"	  �+� �Abrain.Event:2JG-7l�     ��0�	�S�+� �A"ߨ


global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 
�
global_step
VariableV2*
_class
loc:@global_step*
	container *
shape: *
dtype0	*
_output_shapes
: *
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
�
!global_step/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
global_step/cond/SwitchSwitch!global_step/IsVariableInitialized!global_step/IsVariableInitialized*
_output_shapes
: : *
T0

a
global_step/cond/switch_tIdentityglobal_step/cond/Switch:1*
T0
*
_output_shapes
: 
_
global_step/cond/switch_fIdentityglobal_step/cond/Switch*
_output_shapes
: *
T0

h
global_step/cond/pred_idIdentity!global_step/IsVariableInitialized*
T0
*
_output_shapes
: 
b
global_step/cond/readIdentityglobal_step/cond/read/Switch:1*
T0	*
_output_shapes
: 
�
global_step/cond/read/Switch	RefSwitchglobal_stepglobal_step/cond/pred_id*
_output_shapes
: : *
T0	*
_class
loc:@global_step
�
global_step/cond/Switch_1Switchglobal_step/Initializer/zerosglobal_step/cond/pred_id*
_class
loc:@global_step*
_output_shapes
: : *
T0	
}
global_step/cond/MergeMergeglobal_step/cond/Switch_1global_step/cond/read*
T0	*
N*
_output_shapes
: : 
S
global_step/add/yConst*
_output_shapes
: *
value	B	 R *
dtype0	
b
global_step/addAddglobal_step/cond/Mergeglobal_step/add/y*
T0	*
_output_shapes
: 

ConstConst"/device:CPU:0*;
value2B0 B*../../data/android_train_complete.tfrecord*
dtype0*
_output_shapes
: 
v
flat_filenames/shapeConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
���������
x
flat_filenamesReshapeConstflat_filenames/shape"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:
]
buffer_sizeConst"/device:CPU:0*
value
B	 R�*
dtype0	*
_output_shapes
: 
U
seedConst"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
V
seed2Const"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
_
countConst"/device:CPU:0*
dtype0	*
_output_shapes
: *
valueB	 R
���������
[

batch_sizeConst"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
_
drop_remainderConst"/device:CPU:0*
value	B
 Z *
dtype0
*
_output_shapes
: 
�
OneShotIteratorOneShotIterator"/device:CPU:0*
shared_name *o
output_shapes^
\:���������@:���������@:����������:���������:���������*
	container *
output_types	
2				*
_output_shapes
: *0
dataset_factoryR
_make_dataset_AsAROsJbEI0
h
IteratorToStringHandleIteratorToStringHandleOneShotIterator"/device:CPU:0*
_output_shapes
: 
�
IteratorGetNextIteratorGetNextOneShotIterator"/device:CPU:0*p
_output_shapes^
\:���������@:���������@:����������:���������:���������*
output_types	
2				*o
output_shapes^
\:���������@:���������@:����������:���������:���������
�
CastCastIteratorGetNext:2"/device:CPU:0*
Truncate( *(
_output_shapes
:����������*

DstT0*

SrcT0	
�
Cast_1CastIteratorGetNext:1"/device:CPU:0*
Truncate( *'
_output_shapes
:���������@*

DstT0*

SrcT0	
�
:batch_normalization/gamma/Initializer/ones/shape_as_tensorConst*,
_class"
 loc:@batch_normalization/gamma*
valueB:�*
dtype0*
_output_shapes
:
�
0batch_normalization/gamma/Initializer/ones/ConstConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@batch_normalization/gamma*
valueB
 *  �?
�
*batch_normalization/gamma/Initializer/onesFill:batch_normalization/gamma/Initializer/ones/shape_as_tensor0batch_normalization/gamma/Initializer/ones/Const*
T0*,
_class"
 loc:@batch_normalization/gamma*

index_type0*
_output_shapes	
:�
�
batch_normalization/gamma
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *,
_class"
 loc:@batch_normalization/gamma*
	container *
shape:�
�
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
batch_normalization/gamma/readIdentitybatch_normalization/gamma*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes	
:�
�
:batch_normalization/beta/Initializer/zeros/shape_as_tensorConst*+
_class!
loc:@batch_normalization/beta*
valueB:�*
dtype0*
_output_shapes
:
�
0batch_normalization/beta/Initializer/zeros/ConstConst*+
_class!
loc:@batch_normalization/beta*
valueB
 *    *
dtype0*
_output_shapes
: 
�
*batch_normalization/beta/Initializer/zerosFill:batch_normalization/beta/Initializer/zeros/shape_as_tensor0batch_normalization/beta/Initializer/zeros/Const*
T0*+
_class!
loc:@batch_normalization/beta*

index_type0*
_output_shapes	
:�
�
batch_normalization/beta
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *+
_class!
loc:@batch_normalization/beta*
	container 
�
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes	
:�
�
batch_normalization/beta/readIdentitybatch_normalization/beta*
_output_shapes	
:�*
T0*+
_class!
loc:@batch_normalization/beta
�
Abatch_normalization/moving_mean/Initializer/zeros/shape_as_tensorConst*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB:�*
dtype0*
_output_shapes
:
�
7batch_normalization/moving_mean/Initializer/zeros/ConstConst*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB
 *    *
dtype0*
_output_shapes
: 
�
1batch_normalization/moving_mean/Initializer/zerosFillAbatch_normalization/moving_mean/Initializer/zeros/shape_as_tensor7batch_normalization/moving_mean/Initializer/zeros/Const*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*

index_type0*
_output_shapes	
:�
�
batch_normalization/moving_mean
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *2
_class(
&$loc:@batch_normalization/moving_mean*
	container 
�
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
use_locking(*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:�
�
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*
_output_shapes	
:�*
T0*2
_class(
&$loc:@batch_normalization/moving_mean
�
Dbatch_normalization/moving_variance/Initializer/ones/shape_as_tensorConst*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB:�*
dtype0*
_output_shapes
:
�
:batch_normalization/moving_variance/Initializer/ones/ConstConst*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
4batch_normalization/moving_variance/Initializer/onesFillDbatch_normalization/moving_variance/Initializer/ones/shape_as_tensor:batch_normalization/moving_variance/Initializer/ones/Const*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*

index_type0*
_output_shapes	
:�
�
#batch_normalization/moving_variance
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *6
_class,
*(loc:@batch_normalization/moving_variance*
	container 
�
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes	
:�
h
#batch_normalization/batchnorm/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
!batch_normalization/batchnorm/addAdd(batch_normalization/moving_variance/read#batch_normalization/batchnorm/add/y*
T0*
_output_shapes	
:�
u
#batch_normalization/batchnorm/RsqrtRsqrt!batch_normalization/batchnorm/add*
T0*
_output_shapes	
:�
�
!batch_normalization/batchnorm/mulMul#batch_normalization/batchnorm/Rsqrtbatch_normalization/gamma/read*
T0*
_output_shapes	
:�
�
#batch_normalization/batchnorm/mul_1MulCast!batch_normalization/batchnorm/mul*
T0*(
_output_shapes
:����������
�
#batch_normalization/batchnorm/mul_2Mul$batch_normalization/moving_mean/read!batch_normalization/batchnorm/mul*
T0*
_output_shapes	
:�
�
!batch_normalization/batchnorm/subSubbatch_normalization/beta/read#batch_normalization/batchnorm/mul_2*
T0*
_output_shapes	
:�
�
#batch_normalization/batchnorm/add_1Add#batch_normalization/batchnorm/mul_1!batch_normalization/batchnorm/sub*(
_output_shapes
:����������*
T0
b
Reshape/shapeConst*!
valueB"����      *
dtype0*
_output_shapes
:
�
ReshapeReshape#batch_normalization/batchnorm/add_1Reshape/shape*,
_output_shapes
:����������*
T0*
Tshape0
�
3layer_conv1/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_conv1/kernel*!
valueB"          *
dtype0*
_output_shapes
:
�
1layer_conv1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*
valueB
 *d|�
�
1layer_conv1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*
valueB
 *d|>
�
;layer_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv1/kernel/Initializer/random_uniform/shape*
dtype0*"
_output_shapes
: *

seed *
T0*%
_class
loc:@layer_conv1/kernel*
seed2 
�
1layer_conv1/kernel/Initializer/random_uniform/subSub1layer_conv1/kernel/Initializer/random_uniform/max1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*
_output_shapes
: 
�
1layer_conv1/kernel/Initializer/random_uniform/mulMul;layer_conv1/kernel/Initializer/random_uniform/RandomUniform1layer_conv1/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_conv1/kernel*"
_output_shapes
: 
�
-layer_conv1/kernel/Initializer/random_uniformAdd1layer_conv1/kernel/Initializer/random_uniform/mul1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*"
_output_shapes
: 
�
layer_conv1/kernel
VariableV2*
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: *
dtype0*"
_output_shapes
: 
�
layer_conv1/kernel/AssignAssignlayer_conv1/kernel-layer_conv1/kernel/Initializer/random_uniform*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*"
_output_shapes
: 
�
layer_conv1/kernel/readIdentitylayer_conv1/kernel*
T0*%
_class
loc:@layer_conv1/kernel*"
_output_shapes
: 
�
"layer_conv1/bias/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv1/bias
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias
�
layer_conv1/bias/AssignAssignlayer_conv1/bias"layer_conv1/bias/Initializer/zeros*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
}
layer_conv1/bias/readIdentitylayer_conv1/bias*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 
c
layer_conv1/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
c
!layer_conv1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
layer_conv1/conv1d/ExpandDims
ExpandDimsReshape!layer_conv1/conv1d/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:����������
e
#layer_conv1/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
layer_conv1/conv1d/ExpandDims_1
ExpandDimslayer_conv1/kernel/read#layer_conv1/conv1d/ExpandDims_1/dim*

Tdim0*
T0*&
_output_shapes
: 
�
layer_conv1/conv1d/Conv2DConv2Dlayer_conv1/conv1d/ExpandDimslayer_conv1/conv1d/ExpandDims_1*0
_output_shapes
:���������� *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
layer_conv1/conv1d/SqueezeSqueezelayer_conv1/conv1d/Conv2D*,
_output_shapes
:���������� *
squeeze_dims
*
T0
�
layer_conv1/BiasAddBiasAddlayer_conv1/conv1d/Squeezelayer_conv1/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:���������� 
d
layer_conv1/ReluRelulayer_conv1/BiasAdd*
T0*,
_output_shapes
:���������� 
^
max_pooling1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d/ExpandDims
ExpandDimslayer_conv1/Relumax_pooling1d/ExpandDims/dim*
T0*0
_output_shapes
:���������� *

Tdim0
�
max_pooling1d/MaxPoolMaxPoolmax_pooling1d/ExpandDims*0
_output_shapes
:���������� *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
�
max_pooling1d/SqueezeSqueezemax_pooling1d/MaxPool*
T0*,
_output_shapes
:���������� *
squeeze_dims

�
3layer_conv2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
_class
loc:@layer_conv2/kernel*!
valueB"           
�
1layer_conv2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
valueB
 *�5�*
dtype0
�
1layer_conv2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
valueB
 *�5>*
dtype0
�
;layer_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv2/kernel/Initializer/random_uniform/shape*
T0*%
_class
loc:@layer_conv2/kernel*
seed2 *
dtype0*"
_output_shapes
:  *

seed 
�
1layer_conv2/kernel/Initializer/random_uniform/subSub1layer_conv2/kernel/Initializer/random_uniform/max1layer_conv2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*%
_class
loc:@layer_conv2/kernel
�
1layer_conv2/kernel/Initializer/random_uniform/mulMul;layer_conv2/kernel/Initializer/random_uniform/RandomUniform1layer_conv2/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_conv2/kernel*"
_output_shapes
:  
�
-layer_conv2/kernel/Initializer/random_uniformAdd1layer_conv2/kernel/Initializer/random_uniform/mul1layer_conv2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv2/kernel*"
_output_shapes
:  
�
layer_conv2/kernel
VariableV2*
	container *
shape:  *
dtype0*"
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel
�
layer_conv2/kernel/AssignAssignlayer_conv2/kernel-layer_conv2/kernel/Initializer/random_uniform*
validate_shape(*"
_output_shapes
:  *
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel
�
layer_conv2/kernel/readIdentitylayer_conv2/kernel*
T0*%
_class
loc:@layer_conv2/kernel*"
_output_shapes
:  
�
"layer_conv2/bias/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv2/bias
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv2/bias
�
layer_conv2/bias/AssignAssignlayer_conv2/bias"layer_conv2/bias/Initializer/zeros*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: *
use_locking(
}
layer_conv2/bias/readIdentitylayer_conv2/bias*
_output_shapes
: *
T0*#
_class
loc:@layer_conv2/bias
c
layer_conv2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB:
c
!layer_conv2/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
layer_conv2/conv1d/ExpandDims
ExpandDimsmax_pooling1d/Squeeze!layer_conv2/conv1d/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:���������� 
e
#layer_conv2/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
layer_conv2/conv1d/ExpandDims_1
ExpandDimslayer_conv2/kernel/read#layer_conv2/conv1d/ExpandDims_1/dim*&
_output_shapes
:  *

Tdim0*
T0
�
layer_conv2/conv1d/Conv2DConv2Dlayer_conv2/conv1d/ExpandDimslayer_conv2/conv1d/ExpandDims_1*
paddingSAME*0
_output_shapes
:���������� *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
layer_conv2/conv1d/SqueezeSqueezelayer_conv2/conv1d/Conv2D*
squeeze_dims
*
T0*,
_output_shapes
:���������� 
�
layer_conv2/BiasAddBiasAddlayer_conv2/conv1d/Squeezelayer_conv2/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:���������� 
d
layer_conv2/ReluRelulayer_conv2/BiasAdd*,
_output_shapes
:���������� *
T0
`
max_pooling1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d_1/ExpandDims
ExpandDimslayer_conv2/Relumax_pooling1d_1/ExpandDims/dim*0
_output_shapes
:���������� *

Tdim0*
T0
�
max_pooling1d_1/MaxPoolMaxPoolmax_pooling1d_1/ExpandDims*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*0
_output_shapes
:���������� 
�
max_pooling1d_1/SqueezeSqueezemax_pooling1d_1/MaxPool*,
_output_shapes
:���������� *
squeeze_dims
*
T0
l
Flatten/flatten/ShapeShapemax_pooling1d_1/Squeeze*
T0*
out_type0*
_output_shapes
:
m
#Flatten/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Flatten/flatten/strided_sliceStridedSliceFlatten/flatten/Shape#Flatten/flatten/strided_slice/stack%Flatten/flatten/strided_slice/stack_1%Flatten/flatten/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
j
Flatten/flatten/Reshape/shape/1Const*
_output_shapes
: *
valueB :
���������*
dtype0
�
Flatten/flatten/Reshape/shapePackFlatten/flatten/strided_sliceFlatten/flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
�
Flatten/flatten/ReshapeReshapemax_pooling1d_1/SqueezeFlatten/flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:����������@
�
1layer_fc1/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_fc1/kernel*
valueB"    �   *
dtype0*
_output_shapes
:
�
/layer_fc1/kernel/Initializer/random_uniform/minConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *��ۼ*
dtype0*
_output_shapes
: 
�
/layer_fc1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *���<*
dtype0*
_output_shapes
: 
�
9layer_fc1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1layer_fc1/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
�@�*

seed *
T0*#
_class
loc:@layer_fc1/kernel*
seed2 *
dtype0
�
/layer_fc1/kernel/Initializer/random_uniform/subSub/layer_fc1/kernel/Initializer/random_uniform/max/layer_fc1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_fc1/kernel*
_output_shapes
: 
�
/layer_fc1/kernel/Initializer/random_uniform/mulMul9layer_fc1/kernel/Initializer/random_uniform/RandomUniform/layer_fc1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
�@�
�
+layer_fc1/kernel/Initializer/random_uniformAdd/layer_fc1/kernel/Initializer/random_uniform/mul/layer_fc1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
�@�
�
layer_fc1/kernel
VariableV2*
shape:
�@�*
dtype0* 
_output_shapes
:
�@�*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container 
�
layer_fc1/kernel/AssignAssignlayer_fc1/kernel+layer_fc1/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
�@�
�
layer_fc1/kernel/readIdentitylayer_fc1/kernel* 
_output_shapes
:
�@�*
T0*#
_class
loc:@layer_fc1/kernel
�
 layer_fc1/bias/Initializer/zerosConst*
_output_shapes	
:�*!
_class
loc:@layer_fc1/bias*
valueB�*    *
dtype0
�
layer_fc1/bias
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:�
�
layer_fc1/bias/AssignAssignlayer_fc1/bias layer_fc1/bias/Initializer/zeros*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(
x
layer_fc1/bias/readIdentitylayer_fc1/bias*
T0*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:�
�
layer_fc1/MatMulMatMulFlatten/flatten/Reshapelayer_fc1/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
layer_fc1/BiasAddBiasAddlayer_fc1/MatMullayer_fc1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
\
layer_fc1/ReluRelulayer_fc1/BiasAdd*
T0*(
_output_shapes
:����������
`
Reshape_1/shapeConst*
_output_shapes
:*
valueB"����@   *
dtype0
v
	Reshape_1ReshapeIteratorGetNextReshape_1/shape*
T0	*
Tshape0*'
_output_shapes
:���������@
�
0word_embeddings/Initializer/random_uniform/shapeConst*
_output_shapes
:*"
_class
loc:@word_embeddings*
valueB"      *
dtype0
�
.word_embeddings/Initializer/random_uniform/minConst*"
_class
loc:@word_embeddings*
valueB
 *���*
dtype0*
_output_shapes
: 
�
.word_embeddings/Initializer/random_uniform/maxConst*"
_class
loc:@word_embeddings*
valueB
 *��>*
dtype0*
_output_shapes
: 
�
8word_embeddings/Initializer/random_uniform/RandomUniformRandomUniform0word_embeddings/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes
:	� *

seed *
T0*"
_class
loc:@word_embeddings
�
.word_embeddings/Initializer/random_uniform/subSub.word_embeddings/Initializer/random_uniform/max.word_embeddings/Initializer/random_uniform/min*
T0*"
_class
loc:@word_embeddings*
_output_shapes
: 
�
.word_embeddings/Initializer/random_uniform/mulMul8word_embeddings/Initializer/random_uniform/RandomUniform.word_embeddings/Initializer/random_uniform/sub*"
_class
loc:@word_embeddings*
_output_shapes
:	� *
T0
�
*word_embeddings/Initializer/random_uniformAdd.word_embeddings/Initializer/random_uniform/mul.word_embeddings/Initializer/random_uniform/min*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	� 
�
word_embeddings
VariableV2*
shape:	� *
dtype0*
_output_shapes
:	� *
shared_name *"
_class
loc:@word_embeddings*
	container 
�
word_embeddings/AssignAssignword_embeddings*word_embeddings/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	� 

word_embeddings/readIdentityword_embeddings*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	� 
{
embedding_lookup/axisConst*"
_class
loc:@word_embeddings*
value	B : *
dtype0*
_output_shapes
: 
�
embedding_lookupGatherV2word_embeddings/read	Reshape_1embedding_lookup/axis*+
_output_shapes
:���������@ *
Taxis0*
Tindices0	*
Tparams0*"
_class
loc:@word_embeddings
m
embedding_lookup/IdentityIdentityembedding_lookup*
T0*+
_output_shapes
:���������@ 
J
rnn/RankConst*
_output_shapes
: *
value	B :*
dtype0
Q
rnn/range/startConst*
_output_shapes
: *
value	B :*
dtype0
Q
rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
f
	rnn/rangeRangernn/range/startrnn/Rankrnn/range/delta*
_output_shapes
:*

Tidx0
d
rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
Q
rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�

rnn/concatConcatV2rnn/concat/values_0	rnn/rangernn/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
rnn/transpose	Transposeembedding_lookup/Identity
rnn/concat*+
_output_shapes
:@��������� *
Tperm0*
T0
V
	rnn/ShapeShapernn/transpose*
T0*
out_type0*
_output_shapes
:
a
rnn/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
c
rnn/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
c
rnn/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
rnn/strided_sliceStridedSlice	rnn/Shapernn/strided_slice/stackrnn/strided_slice/stack_1rnn/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
j
(rnn/BasicRNNCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
$rnn/BasicRNNCellZeroState/ExpandDims
ExpandDimsrnn/strided_slice(rnn/BasicRNNCellZeroState/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
i
rnn/BasicRNNCellZeroState/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
g
%rnn/BasicRNNCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
 rnn/BasicRNNCellZeroState/concatConcatV2$rnn/BasicRNNCellZeroState/ExpandDimsrnn/BasicRNNCellZeroState/Const%rnn/BasicRNNCellZeroState/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
j
%rnn/BasicRNNCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
rnn/BasicRNNCellZeroState/zerosFill rnn/BasicRNNCellZeroState/concat%rnn/BasicRNNCellZeroState/zeros/Const*
T0*

index_type0*'
_output_shapes
:���������@
l
*rnn/BasicRNNCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
&rnn/BasicRNNCellZeroState/ExpandDims_1
ExpandDimsrnn/strided_slice*rnn/BasicRNNCellZeroState/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
k
!rnn/BasicRNNCellZeroState/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
X
rnn/Shape_1Shapernn/transpose*
_output_shapes
:*
T0*
out_type0
c
rnn/strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0
e
rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
rnn/strided_slice_1StridedSlicernn/Shape_1rnn/strided_slice_1/stackrnn/strided_slice_1/stack_1rnn/strided_slice_1/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
X
rnn/Shape_2Shapernn/transpose*
T0*
out_type0*
_output_shapes
:
c
rnn/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB:
e
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
e
rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
rnn/strided_slice_2StridedSlicernn/Shape_2rnn/strided_slice_2/stackrnn/strided_slice_2/stack_1rnn/strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
T
rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
v
rnn/ExpandDims
ExpandDimsrnn/strided_slice_2rnn/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
S
	rnn/ConstConst*
_output_shapes
:*
valueB:@*
dtype0
S
rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
rnn/concat_1ConcatV2rnn/ExpandDims	rnn/Constrnn/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
T
rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
t
	rnn/zerosFillrnn/concat_1rnn/zeros/Const*'
_output_shapes
:���������@*
T0*

index_type0
J
rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
�
rnn/TensorArrayTensorArrayV3rnn/strided_slice_1*/
tensor_array_namernn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *$
element_shape:���������@*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
�
rnn/TensorArray_1TensorArrayV3rnn/strided_slice_1*.
tensor_array_namernn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *$
element_shape:��������� *
clear_after_read(*
dynamic_size( *
identical_element_shapes(
i
rnn/TensorArrayUnstack/ShapeShapernn/transpose*
T0*
out_type0*
_output_shapes
:
t
*rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
$rnn/TensorArrayUnstack/strided_sliceStridedSlicernn/TensorArrayUnstack/Shape*rnn/TensorArrayUnstack/strided_slice/stack,rnn/TensorArrayUnstack/strided_slice/stack_1,rnn/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
d
"rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
d
"rnn/TensorArrayUnstack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
rnn/TensorArrayUnstack/rangeRange"rnn/TensorArrayUnstack/range/start$rnn/TensorArrayUnstack/strided_slice"rnn/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:���������
�
>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3rnn/TensorArray_1rnn/TensorArrayUnstack/rangernn/transposernn/TensorArray_1:1*
T0* 
_class
loc:@rnn/transpose*
_output_shapes
: 
O
rnn/Maximum/xConst*
dtype0*
_output_shapes
: *
value	B :
[
rnn/MaximumMaximumrnn/Maximum/xrnn/strided_slice_1*
T0*
_output_shapes
: 
Y
rnn/MinimumMinimumrnn/strided_slice_1rnn/Maximum*
_output_shapes
: *
T0
]
rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
�
rnn/while/EnterEnterrnn/while/iteration_counter*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context*
T0*
is_constant( 
�
rnn/while/Enter_1Enterrnn/time*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context*
T0*
is_constant( 
�
rnn/while/Enter_2Enterrnn/TensorArray:1*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context*
T0*
is_constant( 
�
rnn/while/Enter_3Enterrnn/BasicRNNCellZeroState/zeros*'
_output_shapes
:���������@*'

frame_namernn/while/while_context*
T0*
is_constant( *
parallel_iterations 
n
rnn/while/MergeMergernn/while/Enterrnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
t
rnn/while/Merge_1Mergernn/while/Enter_1rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
t
rnn/while/Merge_2Mergernn/while/Enter_2rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
�
rnn/while/Merge_3Mergernn/while/Enter_3rnn/while/NextIteration_3*
N*)
_output_shapes
:���������@: *
T0
^
rnn/while/LessLessrnn/while/Mergernn/while/Less/Enter*
_output_shapes
: *
T0
�
rnn/while/Less/EnterEnterrnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
d
rnn/while/Less_1Lessrnn/while/Merge_1rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
�
rnn/while/Less_1/EnterEnterrnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
\
rnn/while/LogicalAnd
LogicalAndrnn/while/Lessrnn/while/Less_1*
_output_shapes
: 
L
rnn/while/LoopCondLoopCondrnn/while/LogicalAnd*
_output_shapes
: 
�
rnn/while/SwitchSwitchrnn/while/Mergernn/while/LoopCond*
T0*"
_class
loc:@rnn/while/Merge*
_output_shapes
: : 
�
rnn/while/Switch_1Switchrnn/while/Merge_1rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_1*
_output_shapes
: : 
�
rnn/while/Switch_2Switchrnn/while/Merge_2rnn/while/LoopCond*$
_class
loc:@rnn/while/Merge_2*
_output_shapes
: : *
T0
�
rnn/while/Switch_3Switchrnn/while/Merge_3rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_3*:
_output_shapes(
&:���������@:���������@
S
rnn/while/IdentityIdentityrnn/while/Switch:1*
T0*
_output_shapes
: 
W
rnn/while/Identity_1Identityrnn/while/Switch_1:1*
T0*
_output_shapes
: 
W
rnn/while/Identity_2Identityrnn/while/Switch_2:1*
T0*
_output_shapes
: 
h
rnn/while/Identity_3Identityrnn/while/Switch_3:1*'
_output_shapes
:���������@*
T0
f
rnn/while/add/yConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
rnn/while/addAddrnn/while/Identityrnn/while/add/y*
T0*
_output_shapes
: 
�
rnn/while/TensorArrayReadV3TensorArrayReadV3!rnn/while/TensorArrayReadV3/Enterrnn/while/Identity_1#rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:��������� 
�
!rnn/while/TensorArrayReadV3/EnterEnterrnn/TensorArray_1*
is_constant(*
parallel_iterations *
_output_shapes
:*'

frame_namernn/while/while_context*
T0
�
#rnn/while/TensorArrayReadV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
_output_shapes
: *'

frame_namernn/while/while_context*
T0*
is_constant(*
parallel_iterations 
�
:rnn/basic_rnn_cell/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB"`   @   
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *�KF�*
dtype0*
_output_shapes
: 
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *�KF>*
dtype0*
_output_shapes
: 
�
Brnn/basic_rnn_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniform:rnn/basic_rnn_cell/kernel/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
seed2 *
dtype0*
_output_shapes

:`@*

seed 
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/subSub8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/max8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/min*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
_output_shapes
: *
T0
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/mulMulBrnn/basic_rnn_cell/kernel/Initializer/random_uniform/RandomUniform8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/sub*
_output_shapes

:`@*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel
�
4rnn/basic_rnn_cell/kernel/Initializer/random_uniformAdd8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/mul8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
_output_shapes

:`@
�
rnn/basic_rnn_cell/kernel
VariableV2*
dtype0*
_output_shapes

:`@*
shared_name *,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
	container *
shape
:`@
�
 rnn/basic_rnn_cell/kernel/AssignAssignrnn/basic_rnn_cell/kernel4rnn/basic_rnn_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(*
_output_shapes

:`@
n
rnn/basic_rnn_cell/kernel/readIdentityrnn/basic_rnn_cell/kernel*
_output_shapes

:`@*
T0
�
)rnn/basic_rnn_cell/bias/Initializer/zerosConst**
_class 
loc:@rnn/basic_rnn_cell/bias*
valueB@*    *
dtype0*
_output_shapes
:@
�
rnn/basic_rnn_cell/bias
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name **
_class 
loc:@rnn/basic_rnn_cell/bias*
	container 
�
rnn/basic_rnn_cell/bias/AssignAssignrnn/basic_rnn_cell/bias)rnn/basic_rnn_cell/bias/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(
f
rnn/basic_rnn_cell/bias/readIdentityrnn/basic_rnn_cell/bias*
T0*
_output_shapes
:@
{
$rnn/while/basic_rnn_cell/concat/axisConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
�
rnn/while/basic_rnn_cell/concatConcatV2rnn/while/TensorArrayReadV3rnn/while/Identity_3$rnn/while/basic_rnn_cell/concat/axis*
T0*
N*'
_output_shapes
:���������`*

Tidx0
�
rnn/while/basic_rnn_cell/MatMulMatMulrnn/while/basic_rnn_cell/concat%rnn/while/basic_rnn_cell/MatMul/Enter*
T0*'
_output_shapes
:���������@*
transpose_a( *
transpose_b( 
�
%rnn/while/basic_rnn_cell/MatMul/EnterEnterrnn/basic_rnn_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:`@*'

frame_namernn/while/while_context
�
 rnn/while/basic_rnn_cell/BiasAddBiasAddrnn/while/basic_rnn_cell/MatMul&rnn/while/basic_rnn_cell/BiasAdd/Enter*
T0*
data_formatNHWC*'
_output_shapes
:���������@
�
&rnn/while/basic_rnn_cell/BiasAdd/EnterEnterrnn/basic_rnn_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:@*'

frame_namernn/while/while_context
y
rnn/while/basic_rnn_cell/TanhTanh rnn/while/basic_rnn_cell/BiasAdd*
T0*'
_output_shapes
:���������@
�
-rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterrnn/while/Identity_1rnn/while/basic_rnn_cell/Tanhrnn/while/Identity_2*
T0*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
_output_shapes
: 
�
3rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterrnn/TensorArray*
parallel_iterations *
is_constant(*
_output_shapes
:*'

frame_namernn/while/while_context*
T0*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh
h
rnn/while/add_1/yConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
`
rnn/while/add_1Addrnn/while/Identity_1rnn/while/add_1/y*
_output_shapes
: *
T0
X
rnn/while/NextIterationNextIterationrnn/while/add*
T0*
_output_shapes
: 
\
rnn/while/NextIteration_1NextIterationrnn/while/add_1*
_output_shapes
: *
T0
z
rnn/while/NextIteration_2NextIteration-rnn/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
{
rnn/while/NextIteration_3NextIterationrnn/while/basic_rnn_cell/Tanh*
T0*'
_output_shapes
:���������@
I
rnn/while/ExitExitrnn/while/Switch*
T0*
_output_shapes
: 
M
rnn/while/Exit_1Exitrnn/while/Switch_1*
T0*
_output_shapes
: 
M
rnn/while/Exit_2Exitrnn/while/Switch_2*
_output_shapes
: *
T0
^
rnn/while/Exit_3Exitrnn/while/Switch_3*
T0*'
_output_shapes
:���������@
�
&rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3rnn/TensorArrayrnn/while/Exit_2*"
_class
loc:@rnn/TensorArray*
_output_shapes
: 
�
 rnn/TensorArrayStack/range/startConst*"
_class
loc:@rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
�
 rnn/TensorArrayStack/range/deltaConst*"
_class
loc:@rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
�
rnn/TensorArrayStack/rangeRange rnn/TensorArrayStack/range/start&rnn/TensorArrayStack/TensorArraySizeV3 rnn/TensorArrayStack/range/delta*"
_class
loc:@rnn/TensorArray*#
_output_shapes
:���������*

Tidx0
�
(rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3rnn/TensorArrayrnn/TensorArrayStack/rangernn/while/Exit_2*+
_output_shapes
:@���������@*$
element_shape:���������@*"
_class
loc:@rnn/TensorArray*
dtype0
U
rnn/Const_1Const*
dtype0*
_output_shapes
:*
valueB:@
L

rnn/Rank_1Const*
dtype0*
_output_shapes
: *
value	B :
S
rnn/range_1/startConst*
_output_shapes
: *
value	B :*
dtype0
S
rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
n
rnn/range_1Rangernn/range_1/start
rnn/Rank_1rnn/range_1/delta*
_output_shapes
:*

Tidx0
f
rnn/concat_2/values_0Const*
dtype0*
_output_shapes
:*
valueB"       
S
rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
rnn/concat_2ConcatV2rnn/concat_2/values_0rnn/range_1rnn/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
rnn/transpose_1	Transpose(rnn/TensorArrayStack/TensorArrayGatherV3rnn/concat_2*
T0*+
_output_shapes
:���������@@*
Tperm0
h
strided_slice/stackConst*!
valueB"    ����    *
dtype0*
_output_shapes
:
j
strided_slice/stack_1Const*!
valueB"            *
dtype0*
_output_shapes
:
j
strided_slice/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:
�
strided_sliceStridedSlicernn/transpose_1strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*'
_output_shapes
:���������@*
T0*
Index0
�
6layer_rnn_fc_1/kernel/Initializer/random_uniform/shapeConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB"@   �   *
dtype0*
_output_shapes
:
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *�5�*
dtype0
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/maxConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
>layer_rnn_fc_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform6layer_rnn_fc_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	@�*

seed *
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
seed2 
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/subSub4layer_rnn_fc_1/kernel/Initializer/random_uniform/max4layer_rnn_fc_1/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
: 
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/mulMul>layer_rnn_fc_1/kernel/Initializer/random_uniform/RandomUniform4layer_rnn_fc_1/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
:	@�
�
0layer_rnn_fc_1/kernel/Initializer/random_uniformAdd4layer_rnn_fc_1/kernel/Initializer/random_uniform/mul4layer_rnn_fc_1/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
:	@�
�
layer_rnn_fc_1/kernel
VariableV2*
	container *
shape:	@�*
dtype0*
_output_shapes
:	@�*
shared_name *(
_class
loc:@layer_rnn_fc_1/kernel
�
layer_rnn_fc_1/kernel/AssignAssignlayer_rnn_fc_1/kernel0layer_rnn_fc_1/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes
:	@�*
use_locking(*
T0*(
_class
loc:@layer_rnn_fc_1/kernel
�
layer_rnn_fc_1/kernel/readIdentitylayer_rnn_fc_1/kernel*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
:	@�
�
%layer_rnn_fc_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:�*&
_class
loc:@layer_rnn_fc_1/bias*
valueB�*    
�
layer_rnn_fc_1/bias
VariableV2*
shared_name *&
_class
loc:@layer_rnn_fc_1/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
layer_rnn_fc_1/bias/AssignAssignlayer_rnn_fc_1/bias%layer_rnn_fc_1/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*&
_class
loc:@layer_rnn_fc_1/bias
�
layer_rnn_fc_1/bias/readIdentitylayer_rnn_fc_1/bias*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
_output_shapes	
:�
�
layer_rnn_fc_1/MatMulMatMulstrided_slicelayer_rnn_fc_1/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b( *
T0
�
layer_rnn_fc_1/BiasAddBiasAddlayer_rnn_fc_1/MatMullayer_rnn_fc_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
f
layer_rnn_fc_1/ReluRelulayer_rnn_fc_1/BiasAdd*
T0*(
_output_shapes
:����������
�
,batch_normalization_1/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_1/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
batch_normalization_1/gamma
VariableV2*.
_class$
" loc:@batch_normalization_1/gamma*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:
�
,batch_normalization_1/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_1/beta*
valueB*    *
dtype0*
_output_shapes
:
�
batch_normalization_1/beta
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *-
_class#
!loc:@batch_normalization_1/beta*
	container 
�
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(
�
batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:
�
3batch_normalization_1/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
!batch_normalization_1/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@batch_normalization_1/moving_mean*
	container *
shape:
�
(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:
�
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*
_output_shapes
:*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
�
6batch_normalization_1/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
%batch_normalization_1/moving_variance
VariableV2*8
_class.
,*loc:@batch_normalization_1/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:*
T0
j
%batch_normalization_1/batchnorm/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
#batch_normalization_1/batchnorm/addAdd*batch_normalization_1/moving_variance/read%batch_normalization_1/batchnorm/add/y*
_output_shapes
:*
T0
x
%batch_normalization_1/batchnorm/RsqrtRsqrt#batch_normalization_1/batchnorm/add*
_output_shapes
:*
T0
�
#batch_normalization_1/batchnorm/mulMul%batch_normalization_1/batchnorm/Rsqrt batch_normalization_1/gamma/read*
T0*
_output_shapes
:
�
%batch_normalization_1/batchnorm/mul_1MulIteratorGetNext:3#batch_normalization_1/batchnorm/mul*'
_output_shapes
:���������*
T0
�
%batch_normalization_1/batchnorm/mul_2Mul&batch_normalization_1/moving_mean/read#batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:
�
#batch_normalization_1/batchnorm/subSubbatch_normalization_1/beta/read%batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:
�
%batch_normalization_1/batchnorm/add_1Add%batch_normalization_1/batchnorm/mul_1#batch_normalization_1/batchnorm/sub*
T0*'
_output_shapes
:���������
�
3layer_dnn_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
_class
loc:@layer_dnn_1/kernel*
valueB"       
�
1layer_dnn_1/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_dnn_1/kernel*
valueB
 *b���*
dtype0*
_output_shapes
: 
�
1layer_dnn_1/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_dnn_1/kernel*
valueB
 *b��>*
dtype0*
_output_shapes
: 
�
;layer_dnn_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_dnn_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

: *

seed *
T0*%
_class
loc:@layer_dnn_1/kernel*
seed2 
�
1layer_dnn_1/kernel/Initializer/random_uniform/subSub1layer_dnn_1/kernel/Initializer/random_uniform/max1layer_dnn_1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_dnn_1/kernel*
_output_shapes
: 
�
1layer_dnn_1/kernel/Initializer/random_uniform/mulMul;layer_dnn_1/kernel/Initializer/random_uniform/RandomUniform1layer_dnn_1/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_dnn_1/kernel*
_output_shapes

: 
�
-layer_dnn_1/kernel/Initializer/random_uniformAdd1layer_dnn_1/kernel/Initializer/random_uniform/mul1layer_dnn_1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_dnn_1/kernel*
_output_shapes

: 
�
layer_dnn_1/kernel
VariableV2*
shape
: *
dtype0*
_output_shapes

: *
shared_name *%
_class
loc:@layer_dnn_1/kernel*
	container 
�
layer_dnn_1/kernel/AssignAssignlayer_dnn_1/kernel-layer_dnn_1/kernel/Initializer/random_uniform*%
_class
loc:@layer_dnn_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
layer_dnn_1/kernel/readIdentitylayer_dnn_1/kernel*%
_class
loc:@layer_dnn_1/kernel*
_output_shapes

: *
T0
�
"layer_dnn_1/bias/Initializer/zerosConst*#
_class
loc:@layer_dnn_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_dnn_1/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_dnn_1/bias*
	container *
shape: 
�
layer_dnn_1/bias/AssignAssignlayer_dnn_1/bias"layer_dnn_1/bias/Initializer/zeros*#
_class
loc:@layer_dnn_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
}
layer_dnn_1/bias/readIdentitylayer_dnn_1/bias*
T0*#
_class
loc:@layer_dnn_1/bias*
_output_shapes
: 
�
layer_dnn_1/MatMulMatMul%batch_normalization_1/batchnorm/add_1layer_dnn_1/kernel/read*'
_output_shapes
:��������� *
transpose_a( *
transpose_b( *
T0
�
layer_dnn_1/BiasAddBiasAddlayer_dnn_1/MatMullayer_dnn_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
_
layer_dnn_1/ReluRelulayer_dnn_1/BiasAdd*'
_output_shapes
:��������� *
T0
�
3layer_dnn_2/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_dnn_2/kernel*
valueB"        *
dtype0*
_output_shapes
:
�
1layer_dnn_2/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_dnn_2/kernel*
valueB
 *qĜ�*
dtype0*
_output_shapes
: 
�
1layer_dnn_2/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_dnn_2/kernel*
valueB
 *qĜ>*
dtype0*
_output_shapes
: 
�
;layer_dnn_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_dnn_2/kernel/Initializer/random_uniform/shape*
T0*%
_class
loc:@layer_dnn_2/kernel*
seed2 *
dtype0*
_output_shapes

:  *

seed 
�
1layer_dnn_2/kernel/Initializer/random_uniform/subSub1layer_dnn_2/kernel/Initializer/random_uniform/max1layer_dnn_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*%
_class
loc:@layer_dnn_2/kernel
�
1layer_dnn_2/kernel/Initializer/random_uniform/mulMul;layer_dnn_2/kernel/Initializer/random_uniform/RandomUniform1layer_dnn_2/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_dnn_2/kernel*
_output_shapes

:  
�
-layer_dnn_2/kernel/Initializer/random_uniformAdd1layer_dnn_2/kernel/Initializer/random_uniform/mul1layer_dnn_2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_dnn_2/kernel*
_output_shapes

:  
�
layer_dnn_2/kernel
VariableV2*
shape
:  *
dtype0*
_output_shapes

:  *
shared_name *%
_class
loc:@layer_dnn_2/kernel*
	container 
�
layer_dnn_2/kernel/AssignAssignlayer_dnn_2/kernel-layer_dnn_2/kernel/Initializer/random_uniform*
use_locking(*
T0*%
_class
loc:@layer_dnn_2/kernel*
validate_shape(*
_output_shapes

:  
�
layer_dnn_2/kernel/readIdentitylayer_dnn_2/kernel*
T0*%
_class
loc:@layer_dnn_2/kernel*
_output_shapes

:  
�
"layer_dnn_2/bias/Initializer/zerosConst*
_output_shapes
: *#
_class
loc:@layer_dnn_2/bias*
valueB *    *
dtype0
�
layer_dnn_2/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_dnn_2/bias*
	container *
shape: 
�
layer_dnn_2/bias/AssignAssignlayer_dnn_2/bias"layer_dnn_2/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_dnn_2/bias*
validate_shape(*
_output_shapes
: 
}
layer_dnn_2/bias/readIdentitylayer_dnn_2/bias*#
_class
loc:@layer_dnn_2/bias*
_output_shapes
: *
T0
�
layer_dnn_2/MatMulMatMullayer_dnn_1/Relulayer_dnn_2/kernel/read*
T0*'
_output_shapes
:��������� *
transpose_a( *
transpose_b( 
�
layer_dnn_2/BiasAddBiasAddlayer_dnn_2/MatMullayer_dnn_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
_
layer_dnn_2/ReluRelulayer_dnn_2/BiasAdd*
T0*'
_output_shapes
:��������� 
�
,batch_normalization_2/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_2/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
batch_normalization_2/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *.
_class$
" loc:@batch_normalization_2/gamma*
	container *
shape:@
�
"batch_normalization_2/gamma/AssignAssignbatch_normalization_2/gamma,batch_normalization_2/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma
�
 batch_normalization_2/gamma/readIdentitybatch_normalization_2/gamma*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
:@
�
,batch_normalization_2/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_2/beta*
valueB@*    *
dtype0*
_output_shapes
:@
�
batch_normalization_2/beta
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *-
_class#
!loc:@batch_normalization_2/beta*
	container 
�
!batch_normalization_2/beta/AssignAssignbatch_normalization_2/beta,batch_normalization_2/beta/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
�
batch_normalization_2/beta/readIdentitybatch_normalization_2/beta*
_output_shapes
:@*
T0*-
_class#
!loc:@batch_normalization_2/beta
�
3batch_normalization_2/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_2/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
�
!batch_normalization_2/moving_mean
VariableV2*
_output_shapes
:@*
shared_name *4
_class*
(&loc:@batch_normalization_2/moving_mean*
	container *
shape:@*
dtype0
�
(batch_normalization_2/moving_mean/AssignAssign!batch_normalization_2/moving_mean3batch_normalization_2/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:@
�
&batch_normalization_2/moving_mean/readIdentity!batch_normalization_2/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:@
�
6batch_normalization_2/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_2/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
%batch_normalization_2/moving_variance
VariableV2*8
_class.
,*loc:@batch_normalization_2/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
�
,batch_normalization_2/moving_variance/AssignAssign%batch_normalization_2/moving_variance6batch_normalization_2/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
�
*batch_normalization_2/moving_variance/readIdentity%batch_normalization_2/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:@
j
%batch_normalization_2/batchnorm/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
#batch_normalization_2/batchnorm/addAdd*batch_normalization_2/moving_variance/read%batch_normalization_2/batchnorm/add/y*
T0*
_output_shapes
:@
x
%batch_normalization_2/batchnorm/RsqrtRsqrt#batch_normalization_2/batchnorm/add*
T0*
_output_shapes
:@
�
#batch_normalization_2/batchnorm/mulMul%batch_normalization_2/batchnorm/Rsqrt batch_normalization_2/gamma/read*
T0*
_output_shapes
:@
�
%batch_normalization_2/batchnorm/mul_1MulCast_1#batch_normalization_2/batchnorm/mul*
T0*'
_output_shapes
:���������@
�
%batch_normalization_2/batchnorm/mul_2Mul&batch_normalization_2/moving_mean/read#batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:@
�
#batch_normalization_2/batchnorm/subSubbatch_normalization_2/beta/read%batch_normalization_2/batchnorm/mul_2*
T0*
_output_shapes
:@
�
%batch_normalization_2/batchnorm/add_1Add%batch_normalization_2/batchnorm/mul_1#batch_normalization_2/batchnorm/sub*
T0*'
_output_shapes
:���������@
d
Reshape_2/shapeConst*!
valueB"����@      *
dtype0*
_output_shapes
:
�
	Reshape_2Reshape%batch_normalization_2/batchnorm/add_1Reshape_2/shape*
T0*
Tshape0*+
_output_shapes
:���������@
�
:layer_length_conv1/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_length_conv1/kernel*!
valueB"          *
dtype0*
_output_shapes
:
�
8layer_length_conv1/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_length_conv1/kernel*
valueB
 *d|�*
dtype0*
_output_shapes
: 
�
8layer_length_conv1/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_length_conv1/kernel*
valueB
 *d|>*
dtype0*
_output_shapes
: 
�
Blayer_length_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_length_conv1/kernel/Initializer/random_uniform/shape*"
_output_shapes
: *

seed *
T0*,
_class"
 loc:@layer_length_conv1/kernel*
seed2 *
dtype0
�
8layer_length_conv1/kernel/Initializer/random_uniform/subSub8layer_length_conv1/kernel/Initializer/random_uniform/max8layer_length_conv1/kernel/Initializer/random_uniform/min*,
_class"
 loc:@layer_length_conv1/kernel*
_output_shapes
: *
T0
�
8layer_length_conv1/kernel/Initializer/random_uniform/mulMulBlayer_length_conv1/kernel/Initializer/random_uniform/RandomUniform8layer_length_conv1/kernel/Initializer/random_uniform/sub*"
_output_shapes
: *
T0*,
_class"
 loc:@layer_length_conv1/kernel
�
4layer_length_conv1/kernel/Initializer/random_uniformAdd8layer_length_conv1/kernel/Initializer/random_uniform/mul8layer_length_conv1/kernel/Initializer/random_uniform/min*"
_output_shapes
: *
T0*,
_class"
 loc:@layer_length_conv1/kernel
�
layer_length_conv1/kernel
VariableV2*
	container *
shape: *
dtype0*"
_output_shapes
: *
shared_name *,
_class"
 loc:@layer_length_conv1/kernel
�
 layer_length_conv1/kernel/AssignAssignlayer_length_conv1/kernel4layer_length_conv1/kernel/Initializer/random_uniform*,
_class"
 loc:@layer_length_conv1/kernel*
validate_shape(*"
_output_shapes
: *
use_locking(*
T0
�
layer_length_conv1/kernel/readIdentitylayer_length_conv1/kernel*
T0*,
_class"
 loc:@layer_length_conv1/kernel*"
_output_shapes
: 
�
)layer_length_conv1/bias/Initializer/zerosConst**
_class 
loc:@layer_length_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_length_conv1/bias
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name **
_class 
loc:@layer_length_conv1/bias*
	container 
�
layer_length_conv1/bias/AssignAssignlayer_length_conv1/bias)layer_length_conv1/bias/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_length_conv1/bias*
validate_shape(*
_output_shapes
: 
�
layer_length_conv1/bias/readIdentitylayer_length_conv1/bias*
T0**
_class 
loc:@layer_length_conv1/bias*
_output_shapes
: 
j
 layer_length_conv1/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
j
(layer_length_conv1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
$layer_length_conv1/conv1d/ExpandDims
ExpandDims	Reshape_2(layer_length_conv1/conv1d/ExpandDims/dim*/
_output_shapes
:���������@*

Tdim0*
T0
l
*layer_length_conv1/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
&layer_length_conv1/conv1d/ExpandDims_1
ExpandDimslayer_length_conv1/kernel/read*layer_length_conv1/conv1d/ExpandDims_1/dim*&
_output_shapes
: *

Tdim0*
T0
�
 layer_length_conv1/conv1d/Conv2DConv2D$layer_length_conv1/conv1d/ExpandDims&layer_length_conv1/conv1d/ExpandDims_1*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������@ 
�
!layer_length_conv1/conv1d/SqueezeSqueeze layer_length_conv1/conv1d/Conv2D*+
_output_shapes
:���������@ *
squeeze_dims
*
T0
�
layer_length_conv1/BiasAddBiasAdd!layer_length_conv1/conv1d/Squeezelayer_length_conv1/bias/read*
T0*
data_formatNHWC*+
_output_shapes
:���������@ 
q
layer_length_conv1/ReluRelulayer_length_conv1/BiasAdd*
T0*+
_output_shapes
:���������@ 
`
max_pooling1d_2/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d_2/ExpandDims
ExpandDimslayer_length_conv1/Relumax_pooling1d_2/ExpandDims/dim*

Tdim0*
T0*/
_output_shapes
:���������@ 
�
max_pooling1d_2/MaxPoolMaxPoolmax_pooling1d_2/ExpandDims*/
_output_shapes
:���������  *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
�
max_pooling1d_2/SqueezeSqueezemax_pooling1d_2/MaxPool*
T0*+
_output_shapes
:���������  *
squeeze_dims

�
:layer_length_conv2/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_length_conv2/kernel*!
valueB"           *
dtype0*
_output_shapes
:
�
8layer_length_conv2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@layer_length_conv2/kernel*
valueB
 *�5�
�
8layer_length_conv2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@layer_length_conv2/kernel*
valueB
 *�5>
�
Blayer_length_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_length_conv2/kernel/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@layer_length_conv2/kernel*
seed2 *
dtype0*"
_output_shapes
:  *

seed 
�
8layer_length_conv2/kernel/Initializer/random_uniform/subSub8layer_length_conv2/kernel/Initializer/random_uniform/max8layer_length_conv2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@layer_length_conv2/kernel
�
8layer_length_conv2/kernel/Initializer/random_uniform/mulMulBlayer_length_conv2/kernel/Initializer/random_uniform/RandomUniform8layer_length_conv2/kernel/Initializer/random_uniform/sub*,
_class"
 loc:@layer_length_conv2/kernel*"
_output_shapes
:  *
T0
�
4layer_length_conv2/kernel/Initializer/random_uniformAdd8layer_length_conv2/kernel/Initializer/random_uniform/mul8layer_length_conv2/kernel/Initializer/random_uniform/min*,
_class"
 loc:@layer_length_conv2/kernel*"
_output_shapes
:  *
T0
�
layer_length_conv2/kernel
VariableV2*
	container *
shape:  *
dtype0*"
_output_shapes
:  *
shared_name *,
_class"
 loc:@layer_length_conv2/kernel
�
 layer_length_conv2/kernel/AssignAssignlayer_length_conv2/kernel4layer_length_conv2/kernel/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@layer_length_conv2/kernel*
validate_shape(*"
_output_shapes
:  
�
layer_length_conv2/kernel/readIdentitylayer_length_conv2/kernel*
T0*,
_class"
 loc:@layer_length_conv2/kernel*"
_output_shapes
:  
�
)layer_length_conv2/bias/Initializer/zerosConst**
_class 
loc:@layer_length_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_length_conv2/bias
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name **
_class 
loc:@layer_length_conv2/bias
�
layer_length_conv2/bias/AssignAssignlayer_length_conv2/bias)layer_length_conv2/bias/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0**
_class 
loc:@layer_length_conv2/bias*
validate_shape(
�
layer_length_conv2/bias/readIdentitylayer_length_conv2/bias*
_output_shapes
: *
T0**
_class 
loc:@layer_length_conv2/bias
j
 layer_length_conv2/dilation_rateConst*
_output_shapes
:*
valueB:*
dtype0
j
(layer_length_conv2/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
$layer_length_conv2/conv1d/ExpandDims
ExpandDimsmax_pooling1d_2/Squeeze(layer_length_conv2/conv1d/ExpandDims/dim*

Tdim0*
T0*/
_output_shapes
:���������  
l
*layer_length_conv2/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
&layer_length_conv2/conv1d/ExpandDims_1
ExpandDimslayer_length_conv2/kernel/read*layer_length_conv2/conv1d/ExpandDims_1/dim*

Tdim0*
T0*&
_output_shapes
:  
�
 layer_length_conv2/conv1d/Conv2DConv2D$layer_length_conv2/conv1d/ExpandDims&layer_length_conv2/conv1d/ExpandDims_1*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������  
�
!layer_length_conv2/conv1d/SqueezeSqueeze layer_length_conv2/conv1d/Conv2D*+
_output_shapes
:���������  *
squeeze_dims
*
T0
�
layer_length_conv2/BiasAddBiasAdd!layer_length_conv2/conv1d/Squeezelayer_length_conv2/bias/read*+
_output_shapes
:���������  *
T0*
data_formatNHWC
q
layer_length_conv2/ReluRelulayer_length_conv2/BiasAdd*+
_output_shapes
:���������  *
T0
`
max_pooling1d_3/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d_3/ExpandDims
ExpandDimslayer_length_conv2/Relumax_pooling1d_3/ExpandDims/dim*

Tdim0*
T0*/
_output_shapes
:���������  
�
max_pooling1d_3/MaxPoolMaxPoolmax_pooling1d_3/ExpandDims*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:��������� 
�
max_pooling1d_3/SqueezeSqueezemax_pooling1d_3/MaxPool*
T0*+
_output_shapes
:��������� *
squeeze_dims

n
Flatten_1/flatten/ShapeShapemax_pooling1d_3/Squeeze*
T0*
out_type0*
_output_shapes
:
o
%Flatten_1/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
q
'Flatten_1/flatten/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
q
'Flatten_1/flatten/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
Flatten_1/flatten/strided_sliceStridedSliceFlatten_1/flatten/Shape%Flatten_1/flatten/strided_slice/stack'Flatten_1/flatten/strided_slice/stack_1'Flatten_1/flatten/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
l
!Flatten_1/flatten/Reshape/shape/1Const*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Flatten_1/flatten/Reshape/shapePackFlatten_1/flatten/strided_slice!Flatten_1/flatten/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
�
Flatten_1/flatten/ReshapeReshapemax_pooling1d_3/SqueezeFlatten_1/flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:����������
�
8layer_length_fc1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:**
_class 
loc:@layer_length_fc1/kernel*
valueB"   �   *
dtype0
�
6layer_length_fc1/kernel/Initializer/random_uniform/minConst**
_class 
loc:@layer_length_fc1/kernel*
valueB
 *�Kƽ*
dtype0*
_output_shapes
: 
�
6layer_length_fc1/kernel/Initializer/random_uniform/maxConst**
_class 
loc:@layer_length_fc1/kernel*
valueB
 *�K�=*
dtype0*
_output_shapes
: 
�
@layer_length_fc1/kernel/Initializer/random_uniform/RandomUniformRandomUniform8layer_length_fc1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0* 
_output_shapes
:
��*

seed *
T0**
_class 
loc:@layer_length_fc1/kernel
�
6layer_length_fc1/kernel/Initializer/random_uniform/subSub6layer_length_fc1/kernel/Initializer/random_uniform/max6layer_length_fc1/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@layer_length_fc1/kernel*
_output_shapes
: 
�
6layer_length_fc1/kernel/Initializer/random_uniform/mulMul@layer_length_fc1/kernel/Initializer/random_uniform/RandomUniform6layer_length_fc1/kernel/Initializer/random_uniform/sub*
T0**
_class 
loc:@layer_length_fc1/kernel* 
_output_shapes
:
��
�
2layer_length_fc1/kernel/Initializer/random_uniformAdd6layer_length_fc1/kernel/Initializer/random_uniform/mul6layer_length_fc1/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@layer_length_fc1/kernel* 
_output_shapes
:
��
�
layer_length_fc1/kernel
VariableV2*
shape:
��*
dtype0* 
_output_shapes
:
��*
shared_name **
_class 
loc:@layer_length_fc1/kernel*
	container 
�
layer_length_fc1/kernel/AssignAssignlayer_length_fc1/kernel2layer_length_fc1/kernel/Initializer/random_uniform**
_class 
loc:@layer_length_fc1/kernel*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0
�
layer_length_fc1/kernel/readIdentitylayer_length_fc1/kernel*
T0**
_class 
loc:@layer_length_fc1/kernel* 
_output_shapes
:
��
�
'layer_length_fc1/bias/Initializer/zerosConst*(
_class
loc:@layer_length_fc1/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_length_fc1/bias
VariableV2*(
_class
loc:@layer_length_fc1/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
layer_length_fc1/bias/AssignAssignlayer_length_fc1/bias'layer_length_fc1/bias/Initializer/zeros*
_output_shapes	
:�*
use_locking(*
T0*(
_class
loc:@layer_length_fc1/bias*
validate_shape(
�
layer_length_fc1/bias/readIdentitylayer_length_fc1/bias*(
_class
loc:@layer_length_fc1/bias*
_output_shapes	
:�*
T0
�
layer_length_fc1/MatMulMatMulFlatten_1/flatten/Reshapelayer_length_fc1/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
layer_length_fc1/BiasAddBiasAddlayer_length_fc1/MatMullayer_length_fc1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
j
layer_length_fc1/ReluRelulayer_length_fc1/BiasAdd*(
_output_shapes
:����������*
T0
�
>layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/shapeConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/minConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *q��*
dtype0*
_output_shapes
: 
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/maxConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *q�>*
dtype0*
_output_shapes
: 
�
Flayer_combine_fc_cnn1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform>layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/shape*

seed *
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
seed2 *
dtype0* 
_output_shapes
:
��
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/subSub<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/max<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/min*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
_output_shapes
: 
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/mulMulFlayer_combine_fc_cnn1d/kernel/Initializer/random_uniform/RandomUniform<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/sub*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel* 
_output_shapes
:
��
�
8layer_combine_fc_cnn1d/kernel/Initializer/random_uniformAdd<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/mul<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/min* 
_output_shapes
:
��*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel
�
layer_combine_fc_cnn1d/kernel
VariableV2*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��*
shared_name *0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel
�
$layer_combine_fc_cnn1d/kernel/AssignAssignlayer_combine_fc_cnn1d/kernel8layer_combine_fc_cnn1d/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel
�
"layer_combine_fc_cnn1d/kernel/readIdentitylayer_combine_fc_cnn1d/kernel*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel* 
_output_shapes
:
��
�
-layer_combine_fc_cnn1d/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:�*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
valueB�*    
�
layer_combine_fc_cnn1d/bias
VariableV2*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *.
_class$
" loc:@layer_combine_fc_cnn1d/bias
�
"layer_combine_fc_cnn1d/bias/AssignAssignlayer_combine_fc_cnn1d/bias-layer_combine_fc_cnn1d/bias/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(*
_output_shapes	
:�
�
 layer_combine_fc_cnn1d/bias/readIdentitylayer_combine_fc_cnn1d/bias*
_output_shapes	
:�*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias
�
layer_combine_fc_cnn1d/MatMulMatMullayer_fc1/Relu"layer_combine_fc_cnn1d/kernel/read*
transpose_b( *
T0*(
_output_shapes
:����������*
transpose_a( 
�
layer_combine_fc_cnn1d/BiasAddBiasAddlayer_combine_fc_cnn1d/MatMul layer_combine_fc_cnn1d/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
v
layer_combine_fc_cnn1d/ReluRelulayer_combine_fc_cnn1d/BiasAdd*
T0*(
_output_shapes
:����������
�
:layer_combine_fc_x/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *q��*
dtype0*
_output_shapes
: 
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *q�>*
dtype0*
_output_shapes
: 
�
Blayer_combine_fc_x/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_combine_fc_x/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
��*

seed *
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
seed2 
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/subSub8layer_combine_fc_x/kernel/Initializer/random_uniform/max8layer_combine_fc_x/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@layer_combine_fc_x/kernel
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/mulMulBlayer_combine_fc_x/kernel/Initializer/random_uniform/RandomUniform8layer_combine_fc_x/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��
�
4layer_combine_fc_x/kernel/Initializer/random_uniformAdd8layer_combine_fc_x/kernel/Initializer/random_uniform/mul8layer_combine_fc_x/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��
�
layer_combine_fc_x/kernel
VariableV2*
dtype0* 
_output_shapes
:
��*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel*
	container *
shape:
��
�
 layer_combine_fc_x/kernel/AssignAssignlayer_combine_fc_x/kernel4layer_combine_fc_x/kernel/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
��
�
layer_combine_fc_x/kernel/readIdentitylayer_combine_fc_x/kernel*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��
�
)layer_combine_fc_x/bias/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_combine_fc_x/bias
VariableV2*
_output_shapes	
:�*
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape:�*
dtype0
�
layer_combine_fc_x/bias/AssignAssignlayer_combine_fc_x/bias)layer_combine_fc_x/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias
�
layer_combine_fc_x/bias/readIdentitylayer_combine_fc_x/bias*
_output_shapes	
:�*
T0**
_class 
loc:@layer_combine_fc_x/bias
�
layer_combine_fc_x/MatMulMatMullayer_combine_fc_cnn1d/Relulayer_combine_fc_x/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
layer_combine_fc_x/BiasAddBiasAddlayer_combine_fc_x/MatMullayer_combine_fc_x/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
n
layer_combine_fc_x/ReluRelulayer_combine_fc_x/BiasAdd*
T0*(
_output_shapes
:����������
�
:layer_combine_fc_y/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"�      *
dtype0*
_output_shapes
:
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *o}R�*
dtype0*
_output_shapes
: 
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *o}R>*
dtype0*
_output_shapes
: 
�
Blayer_combine_fc_y/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_combine_fc_y/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	�*

seed *
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
seed2 
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/subSub8layer_combine_fc_y/kernel/Initializer/random_uniform/max8layer_combine_fc_y/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
: 
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/mulMulBlayer_combine_fc_y/kernel/Initializer/random_uniform/RandomUniform8layer_combine_fc_y/kernel/Initializer/random_uniform/sub*
_output_shapes
:	�*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel
�
4layer_combine_fc_y/kernel/Initializer/random_uniformAdd8layer_combine_fc_y/kernel/Initializer/random_uniform/mul8layer_combine_fc_y/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	�
�
layer_combine_fc_y/kernel
VariableV2*
dtype0*
_output_shapes
:	�*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel*
	container *
shape:	�
�
 layer_combine_fc_y/kernel/AssignAssignlayer_combine_fc_y/kernel4layer_combine_fc_y/kernel/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	�
�
layer_combine_fc_y/kernel/readIdentitylayer_combine_fc_y/kernel*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	�
�
)layer_combine_fc_y/bias/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    *
dtype0*
_output_shapes
:
�
layer_combine_fc_y/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name **
_class 
loc:@layer_combine_fc_y/bias*
	container 
�
layer_combine_fc_y/bias/AssignAssignlayer_combine_fc_y/bias)layer_combine_fc_y/bias/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
�
layer_combine_fc_y/bias/readIdentitylayer_combine_fc_y/bias*
_output_shapes
:*
T0**
_class 
loc:@layer_combine_fc_y/bias
�
layer_combine_fc_y/MatMulMatMullayer_combine_fc_x/Relulayer_combine_fc_y/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
layer_combine_fc_y/BiasAddBiasAddlayer_combine_fc_y/MatMullayer_combine_fc_y/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
`
SoftmaxSoftmaxlayer_combine_fc_y/BiasAdd*
T0*'
_output_shapes
:���������
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
x
ArgMaxArgMaxSoftmaxArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:���������*

Tidx0
z
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeIteratorGetNext:4*
_output_shapes
:*
T0	*
out_type0
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitslayer_combine_fc_y/BiasAddIteratorGetNext:4*
T0*6
_output_shapes$
":���������:���������*
Tlabels0	
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
MeanMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
X
gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
�
gradients/Mean_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
�
gradients/Mean_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
e
gradients/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
_
gradients/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
_output_shapes
: *
T0
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:���������
�
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:���������
�
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*'
_output_shapes
:���������
�
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*'
_output_shapes
:���������*

Tdim0*
T0
�
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:���������
�
5gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGradBiasAddGradZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*
T0*
data_formatNHWC*
_output_shapes
:
�
:gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_depsNoOp[^gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul6^gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad
�
Bgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependencyIdentityZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul;^gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_deps*
T0*m
_classc
a_loc:@gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*'
_output_shapes
:���������
�
Dgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad;^gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*H
_class>
<:loc:@gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad
�
/gradients/layer_combine_fc_y/MatMul_grad/MatMulMatMulBgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependencylayer_combine_fc_y/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b(*
T0
�
1gradients/layer_combine_fc_y/MatMul_grad/MatMul_1MatMullayer_combine_fc_x/ReluBgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	�*
transpose_a(*
transpose_b( 
�
9gradients/layer_combine_fc_y/MatMul_grad/tuple/group_depsNoOp0^gradients/layer_combine_fc_y/MatMul_grad/MatMul2^gradients/layer_combine_fc_y/MatMul_grad/MatMul_1
�
Agradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_y/MatMul_grad/MatMul:^gradients/layer_combine_fc_y/MatMul_grad/tuple/group_deps*B
_class8
64loc:@gradients/layer_combine_fc_y/MatMul_grad/MatMul*(
_output_shapes
:����������*
T0
�
Cgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependency_1Identity1gradients/layer_combine_fc_y/MatMul_grad/MatMul_1:^gradients/layer_combine_fc_y/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/layer_combine_fc_y/MatMul_grad/MatMul_1*
_output_shapes
:	�
�
/gradients/layer_combine_fc_x/Relu_grad/ReluGradReluGradAgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependencylayer_combine_fc_x/Relu*
T0*(
_output_shapes
:����������
�
5gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/layer_combine_fc_x/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:�
�
:gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_depsNoOp6^gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad0^gradients/layer_combine_fc_x/Relu_grad/ReluGrad
�
Bgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_x/Relu_grad/ReluGrad;^gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/layer_combine_fc_x/Relu_grad/ReluGrad*(
_output_shapes
:����������
�
Dgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad;^gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
/gradients/layer_combine_fc_x/MatMul_grad/MatMulMatMulBgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependencylayer_combine_fc_x/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
1gradients/layer_combine_fc_x/MatMul_grad/MatMul_1MatMullayer_combine_fc_cnn1d/ReluBgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
�
9gradients/layer_combine_fc_x/MatMul_grad/tuple/group_depsNoOp0^gradients/layer_combine_fc_x/MatMul_grad/MatMul2^gradients/layer_combine_fc_x/MatMul_grad/MatMul_1
�
Agradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_x/MatMul_grad/MatMul:^gradients/layer_combine_fc_x/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/layer_combine_fc_x/MatMul_grad/MatMul*(
_output_shapes
:����������
�
Cgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency_1Identity1gradients/layer_combine_fc_x/MatMul_grad/MatMul_1:^gradients/layer_combine_fc_x/MatMul_grad/tuple/group_deps* 
_output_shapes
:
��*
T0*D
_class:
86loc:@gradients/layer_combine_fc_x/MatMul_grad/MatMul_1
�
3gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGradReluGradAgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependencylayer_combine_fc_cnn1d/Relu*
T0*(
_output_shapes
:����������
�
9gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGradBiasAddGrad3gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:�
�
>gradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/group_depsNoOp:^gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGrad4^gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad
�
Fgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependencyIdentity3gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad?^gradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad*(
_output_shapes
:����������
�
Hgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency_1Identity9gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGrad?^gradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
3gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMulMatMulFgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency"layer_combine_fc_cnn1d/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b(*
T0
�
5gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1MatMullayer_fc1/ReluFgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
�
=gradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/group_depsNoOp4^gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul6^gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1
�
Egradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependencyIdentity3gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul>^gradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul*(
_output_shapes
:����������
�
Ggradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1>^gradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1* 
_output_shapes
:
��
�
&gradients/layer_fc1/Relu_grad/ReluGradReluGradEgradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependencylayer_fc1/Relu*
T0*(
_output_shapes
:����������
�
,gradients/layer_fc1/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/layer_fc1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:�*
T0
�
1gradients/layer_fc1/BiasAdd_grad/tuple/group_depsNoOp-^gradients/layer_fc1/BiasAdd_grad/BiasAddGrad'^gradients/layer_fc1/Relu_grad/ReluGrad
�
9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/Relu_grad/ReluGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_fc1/Relu_grad/ReluGrad*(
_output_shapes
:����������
�
;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/layer_fc1/BiasAdd_grad/BiasAddGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*?
_class5
31loc:@gradients/layer_fc1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
�
&gradients/layer_fc1/MatMul_grad/MatMulMatMul9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencylayer_fc1/kernel/read*(
_output_shapes
:����������@*
transpose_a( *
transpose_b(*
T0
�
(gradients/layer_fc1/MatMul_grad/MatMul_1MatMulFlatten/flatten/Reshape9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
�@�*
transpose_a(*
transpose_b( *
T0
�
0gradients/layer_fc1/MatMul_grad/tuple/group_depsNoOp'^gradients/layer_fc1/MatMul_grad/MatMul)^gradients/layer_fc1/MatMul_grad/MatMul_1
�
8gradients/layer_fc1/MatMul_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/MatMul_grad/MatMul1^gradients/layer_fc1/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������@*
T0*9
_class/
-+loc:@gradients/layer_fc1/MatMul_grad/MatMul
�
:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1Identity(gradients/layer_fc1/MatMul_grad/MatMul_11^gradients/layer_fc1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_fc1/MatMul_grad/MatMul_1* 
_output_shapes
:
�@�
�
,gradients/Flatten/flatten/Reshape_grad/ShapeShapemax_pooling1d_1/Squeeze*
T0*
out_type0*
_output_shapes
:
�
.gradients/Flatten/flatten/Reshape_grad/ReshapeReshape8gradients/layer_fc1/MatMul_grad/tuple/control_dependency,gradients/Flatten/flatten/Reshape_grad/Shape*
T0*
Tshape0*,
_output_shapes
:���������� 
�
,gradients/max_pooling1d_1/Squeeze_grad/ShapeShapemax_pooling1d_1/MaxPool*
T0*
out_type0*
_output_shapes
:
�
.gradients/max_pooling1d_1/Squeeze_grad/ReshapeReshape.gradients/Flatten/flatten/Reshape_grad/Reshape,gradients/max_pooling1d_1/Squeeze_grad/Shape*
T0*
Tshape0*0
_output_shapes
:���������� 
�
2gradients/max_pooling1d_1/MaxPool_grad/MaxPoolGradMaxPoolGradmax_pooling1d_1/ExpandDimsmax_pooling1d_1/MaxPool.gradients/max_pooling1d_1/Squeeze_grad/Reshape*
ksize
*
paddingVALID*0
_output_shapes
:���������� *
T0*
data_formatNHWC*
strides


/gradients/max_pooling1d_1/ExpandDims_grad/ShapeShapelayer_conv2/Relu*
T0*
out_type0*
_output_shapes
:
�
1gradients/max_pooling1d_1/ExpandDims_grad/ReshapeReshape2gradients/max_pooling1d_1/MaxPool_grad/MaxPoolGrad/gradients/max_pooling1d_1/ExpandDims_grad/Shape*
T0*
Tshape0*,
_output_shapes
:���������� 
�
(gradients/layer_conv2/Relu_grad/ReluGradReluGrad1gradients/max_pooling1d_1/ExpandDims_grad/Reshapelayer_conv2/Relu*,
_output_shapes
:���������� *
T0
�
.gradients/layer_conv2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
�
3gradients/layer_conv2/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv2/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv2/Relu_grad/ReluGrad
�
;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv2/Relu_grad/ReluGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_conv2/Relu_grad/ReluGrad*,
_output_shapes
:���������� 
�
=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv2/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*
_output_shapes
: *
T0*A
_class7
53loc:@gradients/layer_conv2/BiasAdd_grad/BiasAddGrad
�
/gradients/layer_conv2/conv1d/Squeeze_grad/ShapeShapelayer_conv2/conv1d/Conv2D*
_output_shapes
:*
T0*
out_type0
�
1gradients/layer_conv2/conv1d/Squeeze_grad/ReshapeReshape;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency/gradients/layer_conv2/conv1d/Squeeze_grad/Shape*
T0*
Tshape0*0
_output_shapes
:���������� 
�
/gradients/layer_conv2/conv1d/Conv2D_grad/ShapeNShapeNlayer_conv2/conv1d/ExpandDimslayer_conv2/conv1d/ExpandDims_1*
T0*
out_type0*
N* 
_output_shapes
::
�
<gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput/gradients/layer_conv2/conv1d/Conv2D_grad/ShapeNlayer_conv2/conv1d/ExpandDims_11gradients/layer_conv2/conv1d/Squeeze_grad/Reshape*0
_output_shapes
:���������� *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
�
=gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterlayer_conv2/conv1d/ExpandDims1gradients/layer_conv2/conv1d/Conv2D_grad/ShapeN:11gradients/layer_conv2/conv1d/Squeeze_grad/Reshape*
paddingSAME*&
_output_shapes
:  *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
9gradients/layer_conv2/conv1d/Conv2D_grad/tuple/group_depsNoOp>^gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilter=^gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInput
�
Agradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependencyIdentity<gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInput:^gradients/layer_conv2/conv1d/Conv2D_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:���������� 
�
Cgradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependency_1Identity=gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilter:^gradients/layer_conv2/conv1d/Conv2D_grad/tuple/group_deps*
T0*P
_classF
DBloc:@gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:  
�
2gradients/layer_conv2/conv1d/ExpandDims_grad/ShapeShapemax_pooling1d/Squeeze*
_output_shapes
:*
T0*
out_type0
�
4gradients/layer_conv2/conv1d/ExpandDims_grad/ReshapeReshapeAgradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependency2gradients/layer_conv2/conv1d/ExpandDims_grad/Shape*
T0*
Tshape0*,
_output_shapes
:���������� 
�
4gradients/layer_conv2/conv1d/ExpandDims_1_grad/ShapeConst*!
valueB"           *
dtype0*
_output_shapes
:
�
6gradients/layer_conv2/conv1d/ExpandDims_1_grad/ReshapeReshapeCgradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependency_14gradients/layer_conv2/conv1d/ExpandDims_1_grad/Shape*"
_output_shapes
:  *
T0*
Tshape0

*gradients/max_pooling1d/Squeeze_grad/ShapeShapemax_pooling1d/MaxPool*
_output_shapes
:*
T0*
out_type0
�
,gradients/max_pooling1d/Squeeze_grad/ReshapeReshape4gradients/layer_conv2/conv1d/ExpandDims_grad/Reshape*gradients/max_pooling1d/Squeeze_grad/Shape*
T0*
Tshape0*0
_output_shapes
:���������� 
�
0gradients/max_pooling1d/MaxPool_grad/MaxPoolGradMaxPoolGradmax_pooling1d/ExpandDimsmax_pooling1d/MaxPool,gradients/max_pooling1d/Squeeze_grad/Reshape*0
_output_shapes
:���������� *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
}
-gradients/max_pooling1d/ExpandDims_grad/ShapeShapelayer_conv1/Relu*
T0*
out_type0*
_output_shapes
:
�
/gradients/max_pooling1d/ExpandDims_grad/ReshapeReshape0gradients/max_pooling1d/MaxPool_grad/MaxPoolGrad-gradients/max_pooling1d/ExpandDims_grad/Shape*,
_output_shapes
:���������� *
T0*
Tshape0
�
(gradients/layer_conv1/Relu_grad/ReluGradReluGrad/gradients/max_pooling1d/ExpandDims_grad/Reshapelayer_conv1/Relu*
T0*,
_output_shapes
:���������� 
�
.gradients/layer_conv1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv1/Relu_grad/ReluGrad*
_output_shapes
: *
T0*
data_formatNHWC
�
3gradients/layer_conv1/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv1/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv1/Relu_grad/ReluGrad
�
;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv1/Relu_grad/ReluGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_conv1/Relu_grad/ReluGrad*,
_output_shapes
:���������� 
�
=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv1/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*A
_class7
53loc:@gradients/layer_conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
/gradients/layer_conv1/conv1d/Squeeze_grad/ShapeShapelayer_conv1/conv1d/Conv2D*
_output_shapes
:*
T0*
out_type0
�
1gradients/layer_conv1/conv1d/Squeeze_grad/ReshapeReshape;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency/gradients/layer_conv1/conv1d/Squeeze_grad/Shape*
T0*
Tshape0*0
_output_shapes
:���������� 
�
/gradients/layer_conv1/conv1d/Conv2D_grad/ShapeNShapeNlayer_conv1/conv1d/ExpandDimslayer_conv1/conv1d/ExpandDims_1*
T0*
out_type0*
N* 
_output_shapes
::
�
<gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput/gradients/layer_conv1/conv1d/Conv2D_grad/ShapeNlayer_conv1/conv1d/ExpandDims_11gradients/layer_conv1/conv1d/Squeeze_grad/Reshape*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:����������
�
=gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterlayer_conv1/conv1d/ExpandDims1gradients/layer_conv1/conv1d/Conv2D_grad/ShapeN:11gradients/layer_conv1/conv1d/Squeeze_grad/Reshape*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: *
	dilations
*
T0
�
9gradients/layer_conv1/conv1d/Conv2D_grad/tuple/group_depsNoOp>^gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilter=^gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInput
�
Agradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependencyIdentity<gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInput:^gradients/layer_conv1/conv1d/Conv2D_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:����������
�
Cgradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependency_1Identity=gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilter:^gradients/layer_conv1/conv1d/Conv2D_grad/tuple/group_deps*
T0*P
_classF
DBloc:@gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
y
2gradients/layer_conv1/conv1d/ExpandDims_grad/ShapeShapeReshape*
_output_shapes
:*
T0*
out_type0
�
4gradients/layer_conv1/conv1d/ExpandDims_grad/ReshapeReshapeAgradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependency2gradients/layer_conv1/conv1d/ExpandDims_grad/Shape*
T0*
Tshape0*,
_output_shapes
:����������
�
4gradients/layer_conv1/conv1d/ExpandDims_1_grad/ShapeConst*!
valueB"          *
dtype0*
_output_shapes
:
�
6gradients/layer_conv1/conv1d/ExpandDims_1_grad/ReshapeReshapeCgradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependency_14gradients/layer_conv1/conv1d/ExpandDims_1_grad/Shape*
T0*
Tshape0*"
_output_shapes
: 

gradients/Reshape_grad/ShapeShape#batch_normalization/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:
�
gradients/Reshape_grad/ReshapeReshape4gradients/layer_conv1/conv1d/ExpandDims_grad/Reshapegradients/Reshape_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
8gradients/batch_normalization/batchnorm/add_1_grad/ShapeShape#batch_normalization/batchnorm/mul_1*
T0*
out_type0*
_output_shapes
:
�
:gradients/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:�*
dtype0*
_output_shapes
:
�
Hgradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization/batchnorm/add_1_grad/Shape:gradients/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization/batchnorm/add_1_grad/SumSumgradients/Reshape_grad/ReshapeHgradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization/batchnorm/add_1_grad/ReshapeReshape6gradients/batch_normalization/batchnorm/add_1_grad/Sum8gradients/batch_normalization/batchnorm/add_1_grad/Shape*(
_output_shapes
:����������*
T0*
Tshape0
�
8gradients/batch_normalization/batchnorm/add_1_grad/Sum_1Sumgradients/Reshape_grad/ReshapeJgradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
<gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1Reshape8gradients/batch_normalization/batchnorm/add_1_grad/Sum_1:gradients/batch_normalization/batchnorm/add_1_grad/Shape_1*
Tshape0*
_output_shapes	
:�*
T0
�
Cgradients/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOp;^gradients/batch_normalization/batchnorm/add_1_grad/Reshape=^gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1
�
Kgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentity:gradients/batch_normalization/batchnorm/add_1_grad/ReshapeD^gradients/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*M
_classC
A?loc:@gradients/batch_normalization/batchnorm/add_1_grad/Reshape
�
Mgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1Identity<gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1D^gradients/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1*
_output_shapes	
:�
|
8gradients/batch_normalization/batchnorm/mul_1_grad/ShapeShapeCast*
_output_shapes
:*
T0*
out_type0
�
:gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
valueB:�*
dtype0*
_output_shapes
:
�
Hgradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization/batchnorm/mul_1_grad/Shape:gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization/batchnorm/mul_1_grad/MulMulKgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency!batch_normalization/batchnorm/mul*(
_output_shapes
:����������*
T0
�
6gradients/batch_normalization/batchnorm/mul_1_grad/SumSum6gradients/batch_normalization/batchnorm/mul_1_grad/MulHgradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
:gradients/batch_normalization/batchnorm/mul_1_grad/ReshapeReshape6gradients/batch_normalization/batchnorm/mul_1_grad/Sum8gradients/batch_normalization/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
8gradients/batch_normalization/batchnorm/mul_1_grad/Mul_1MulCastKgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:����������
�
8gradients/batch_normalization/batchnorm/mul_1_grad/Sum_1Sum8gradients/batch_normalization/batchnorm/mul_1_grad/Mul_1Jgradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
<gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1Reshape8gradients/batch_normalization/batchnorm/mul_1_grad/Sum_1:gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:�
�
Cgradients/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOp;^gradients/batch_normalization/batchnorm/mul_1_grad/Reshape=^gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
Kgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentity:gradients/batch_normalization/batchnorm/mul_1_grad/ReshapeD^gradients/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*M
_classC
A?loc:@gradients/batch_normalization/batchnorm/mul_1_grad/Reshape
�
Mgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1Identity<gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1D^gradients/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
_output_shapes	
:�
�
4gradients/batch_normalization/batchnorm/sub_grad/NegNegMgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1*
_output_shapes	
:�*
T0
�
Agradients/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpN^gradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_15^gradients/batch_normalization/batchnorm/sub_grad/Neg
�
Igradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityMgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1B^gradients/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1*
_output_shapes	
:�
�
Kgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1Identity4gradients/batch_normalization/batchnorm/sub_grad/NegB^gradients/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/batch_normalization/batchnorm/sub_grad/Neg*
_output_shapes	
:�
�
6gradients/batch_normalization/batchnorm/mul_2_grad/MulMulKgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1!batch_normalization/batchnorm/mul*
T0*
_output_shapes	
:�
�
8gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1MulKgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1$batch_normalization/moving_mean/read*
T0*
_output_shapes	
:�
�
Cgradients/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOp7^gradients/batch_normalization/batchnorm/mul_2_grad/Mul9^gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1
�
Kgradients/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentity6gradients/batch_normalization/batchnorm/mul_2_grad/MulD^gradients/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*I
_class?
=;loc:@gradients/batch_normalization/batchnorm/mul_2_grad/Mul*
_output_shapes	
:�*
T0
�
Mgradients/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1Identity8gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1D^gradients/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1*
_output_shapes	
:�
�
gradients/AddNAddNMgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1Mgradients/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
N*
_output_shapes	
:�
�
4gradients/batch_normalization/batchnorm/mul_grad/MulMulgradients/AddNbatch_normalization/gamma/read*
T0*
_output_shapes	
:�
�
6gradients/batch_normalization/batchnorm/mul_grad/Mul_1Mulgradients/AddN#batch_normalization/batchnorm/Rsqrt*
T0*
_output_shapes	
:�
�
Agradients/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOp5^gradients/batch_normalization/batchnorm/mul_grad/Mul7^gradients/batch_normalization/batchnorm/mul_grad/Mul_1
�
Igradients/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentity4gradients/batch_normalization/batchnorm/mul_grad/MulB^gradients/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/batch_normalization/batchnorm/mul_grad/Mul*
_output_shapes	
:�
�
Kgradients/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1Identity6gradients/batch_normalization/batchnorm/mul_grad/Mul_1B^gradients/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
_output_shapes	
:�*
T0*I
_class?
=;loc:@gradients/batch_normalization/batchnorm/mul_grad/Mul_1
�
beta1_power/initial_valueConst*+
_class!
loc:@batch_normalization/beta*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape: 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
w
beta1_power/readIdentitybeta1_power*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
beta2_power/initial_valueConst*+
_class!
loc:@batch_normalization/beta*
valueB
 *w�?*
dtype0*
_output_shapes
: 
�
beta2_power
VariableV2*
_output_shapes
: *
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape: *
dtype0
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(
w
beta2_power/readIdentitybeta2_power*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
@batch_normalization/gamma/Adam/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@batch_normalization/gamma*
valueB:�*
dtype0*
_output_shapes
:
�
6batch_normalization/gamma/Adam/Initializer/zeros/ConstConst*,
_class"
 loc:@batch_normalization/gamma*
valueB
 *    *
dtype0*
_output_shapes
: 
�
0batch_normalization/gamma/Adam/Initializer/zerosFill@batch_normalization/gamma/Adam/Initializer/zeros/shape_as_tensor6batch_normalization/gamma/Adam/Initializer/zeros/Const*,
_class"
 loc:@batch_normalization/gamma*

index_type0*
_output_shapes	
:�*
T0
�
batch_normalization/gamma/Adam
VariableV2*
shared_name *,
_class"
 loc:@batch_normalization/gamma*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
%batch_normalization/gamma/Adam/AssignAssignbatch_normalization/gamma/Adam0batch_normalization/gamma/Adam/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes	
:�
�
#batch_normalization/gamma/Adam/readIdentitybatch_normalization/gamma/Adam*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes	
:�
�
Bbatch_normalization/gamma/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@batch_normalization/gamma*
valueB:�*
dtype0*
_output_shapes
:
�
8batch_normalization/gamma/Adam_1/Initializer/zeros/ConstConst*,
_class"
 loc:@batch_normalization/gamma*
valueB
 *    *
dtype0*
_output_shapes
: 
�
2batch_normalization/gamma/Adam_1/Initializer/zerosFillBbatch_normalization/gamma/Adam_1/Initializer/zeros/shape_as_tensor8batch_normalization/gamma/Adam_1/Initializer/zeros/Const*,
_class"
 loc:@batch_normalization/gamma*

index_type0*
_output_shapes	
:�*
T0
�
 batch_normalization/gamma/Adam_1
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *,
_class"
 loc:@batch_normalization/gamma*
	container 
�
'batch_normalization/gamma/Adam_1/AssignAssign batch_normalization/gamma/Adam_12batch_normalization/gamma/Adam_1/Initializer/zeros*
_output_shapes	
:�*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(
�
%batch_normalization/gamma/Adam_1/readIdentity batch_normalization/gamma/Adam_1*
_output_shapes	
:�*
T0*,
_class"
 loc:@batch_normalization/gamma
�
?batch_normalization/beta/Adam/Initializer/zeros/shape_as_tensorConst*+
_class!
loc:@batch_normalization/beta*
valueB:�*
dtype0*
_output_shapes
:
�
5batch_normalization/beta/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *+
_class!
loc:@batch_normalization/beta*
valueB
 *    *
dtype0
�
/batch_normalization/beta/Adam/Initializer/zerosFill?batch_normalization/beta/Adam/Initializer/zeros/shape_as_tensor5batch_normalization/beta/Adam/Initializer/zeros/Const*
_output_shapes	
:�*
T0*+
_class!
loc:@batch_normalization/beta*

index_type0
�
batch_normalization/beta/Adam
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *+
_class!
loc:@batch_normalization/beta*
	container 
�
$batch_normalization/beta/Adam/AssignAssignbatch_normalization/beta/Adam/batch_normalization/beta/Adam/Initializer/zeros*
_output_shapes	
:�*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(
�
"batch_normalization/beta/Adam/readIdentitybatch_normalization/beta/Adam*+
_class!
loc:@batch_normalization/beta*
_output_shapes	
:�*
T0
�
Abatch_normalization/beta/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*+
_class!
loc:@batch_normalization/beta*
valueB:�*
dtype0
�
7batch_normalization/beta/Adam_1/Initializer/zeros/ConstConst*+
_class!
loc:@batch_normalization/beta*
valueB
 *    *
dtype0*
_output_shapes
: 
�
1batch_normalization/beta/Adam_1/Initializer/zerosFillAbatch_normalization/beta/Adam_1/Initializer/zeros/shape_as_tensor7batch_normalization/beta/Adam_1/Initializer/zeros/Const*
_output_shapes	
:�*
T0*+
_class!
loc:@batch_normalization/beta*

index_type0
�
batch_normalization/beta/Adam_1
VariableV2*
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
&batch_normalization/beta/Adam_1/AssignAssignbatch_normalization/beta/Adam_11batch_normalization/beta/Adam_1/Initializer/zeros*
_output_shapes	
:�*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(
�
$batch_normalization/beta/Adam_1/readIdentitybatch_normalization/beta/Adam_1*
_output_shapes	
:�*
T0*+
_class!
loc:@batch_normalization/beta
�
)layer_conv1/kernel/Adam/Initializer/zerosConst*%
_class
loc:@layer_conv1/kernel*!
valueB *    *
dtype0*"
_output_shapes
: 
�
layer_conv1/kernel/Adam
VariableV2*
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: *
dtype0*"
_output_shapes
: 
�
layer_conv1/kernel/Adam/AssignAssignlayer_conv1/kernel/Adam)layer_conv1/kernel/Adam/Initializer/zeros*%
_class
loc:@layer_conv1/kernel*
validate_shape(*"
_output_shapes
: *
use_locking(*
T0
�
layer_conv1/kernel/Adam/readIdentitylayer_conv1/kernel/Adam*"
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel
�
+layer_conv1/kernel/Adam_1/Initializer/zerosConst*%
_class
loc:@layer_conv1/kernel*!
valueB *    *
dtype0*"
_output_shapes
: 
�
layer_conv1/kernel/Adam_1
VariableV2*%
_class
loc:@layer_conv1/kernel*
	container *
shape: *
dtype0*"
_output_shapes
: *
shared_name 
�
 layer_conv1/kernel/Adam_1/AssignAssignlayer_conv1/kernel/Adam_1+layer_conv1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*"
_output_shapes
: 
�
layer_conv1/kernel/Adam_1/readIdentitylayer_conv1/kernel/Adam_1*
T0*%
_class
loc:@layer_conv1/kernel*"
_output_shapes
: 
�
'layer_conv1/bias/Adam/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv1/bias/Adam
VariableV2*
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
layer_conv1/bias/Adam/AssignAssignlayer_conv1/bias/Adam'layer_conv1/bias/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
�
layer_conv1/bias/Adam/readIdentitylayer_conv1/bias/Adam*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 
�
)layer_conv1/bias/Adam_1/Initializer/zerosConst*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0
�
layer_conv1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: 
�
layer_conv1/bias/Adam_1/AssignAssignlayer_conv1/bias/Adam_1)layer_conv1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
�
layer_conv1/bias/Adam_1/readIdentitylayer_conv1/bias/Adam_1*#
_class
loc:@layer_conv1/bias*
_output_shapes
: *
T0
�
9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@layer_conv2/kernel*!
valueB"           *
dtype0*
_output_shapes
:
�
/layer_conv2/kernel/Adam/Initializer/zeros/ConstConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)layer_conv2/kernel/Adam/Initializer/zerosFill9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensor/layer_conv2/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@layer_conv2/kernel*

index_type0*"
_output_shapes
:  
�
layer_conv2/kernel/Adam
VariableV2*
dtype0*"
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  
�
layer_conv2/kernel/Adam/AssignAssignlayer_conv2/kernel/Adam)layer_conv2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*"
_output_shapes
:  
�
layer_conv2/kernel/Adam/readIdentitylayer_conv2/kernel/Adam*"
_output_shapes
:  *
T0*%
_class
loc:@layer_conv2/kernel
�
;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@layer_conv2/kernel*!
valueB"           *
dtype0*
_output_shapes
:
�
1layer_conv2/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0
�
+layer_conv2/kernel/Adam_1/Initializer/zerosFill;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensor1layer_conv2/kernel/Adam_1/Initializer/zeros/Const*
T0*%
_class
loc:@layer_conv2/kernel*

index_type0*"
_output_shapes
:  
�
layer_conv2/kernel/Adam_1
VariableV2*
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  *
dtype0*"
_output_shapes
:  
�
 layer_conv2/kernel/Adam_1/AssignAssignlayer_conv2/kernel/Adam_1+layer_conv2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*"
_output_shapes
:  
�
layer_conv2/kernel/Adam_1/readIdentitylayer_conv2/kernel/Adam_1*
T0*%
_class
loc:@layer_conv2/kernel*"
_output_shapes
:  
�
'layer_conv2/bias/Adam/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv2/bias/Adam
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv2/bias
�
layer_conv2/bias/Adam/AssignAssignlayer_conv2/bias/Adam'layer_conv2/bias/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
�
layer_conv2/bias/Adam/readIdentitylayer_conv2/bias/Adam*
_output_shapes
: *
T0*#
_class
loc:@layer_conv2/bias
�
)layer_conv2/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv2/bias/Adam_1
VariableV2*
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
layer_conv2/bias/Adam_1/AssignAssignlayer_conv2/bias/Adam_1)layer_conv2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
�
layer_conv2/bias/Adam_1/readIdentitylayer_conv2/bias/Adam_1*
_output_shapes
: *
T0*#
_class
loc:@layer_conv2/bias
�
7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*#
_class
loc:@layer_fc1/kernel*
valueB"    �   
�
-layer_fc1/kernel/Adam/Initializer/zeros/ConstConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
'layer_fc1/kernel/Adam/Initializer/zerosFill7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensor-layer_fc1/kernel/Adam/Initializer/zeros/Const*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:
�@�*
T0
�
layer_fc1/kernel/Adam
VariableV2*
shape:
�@�*
dtype0* 
_output_shapes
:
�@�*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container 
�
layer_fc1/kernel/Adam/AssignAssignlayer_fc1/kernel/Adam'layer_fc1/kernel/Adam/Initializer/zeros*
validate_shape(* 
_output_shapes
:
�@�*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel
�
layer_fc1/kernel/Adam/readIdentitylayer_fc1/kernel/Adam* 
_output_shapes
:
�@�*
T0*#
_class
loc:@layer_fc1/kernel
�
9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_fc1/kernel*
valueB"    �   *
dtype0*
_output_shapes
:
�
/layer_fc1/kernel/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)layer_fc1/kernel/Adam_1/Initializer/zerosFill9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/layer_fc1/kernel/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:
�@�
�
layer_fc1/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
�@�*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container *
shape:
�@�
�
layer_fc1/kernel/Adam_1/AssignAssignlayer_fc1/kernel/Adam_1)layer_fc1/kernel/Adam_1/Initializer/zeros*
validate_shape(* 
_output_shapes
:
�@�*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel
�
layer_fc1/kernel/Adam_1/readIdentitylayer_fc1/kernel/Adam_1*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
�@�
�
%layer_fc1/bias/Adam/Initializer/zerosConst*
_output_shapes	
:�*!
_class
loc:@layer_fc1/bias*
valueB�*    *
dtype0
�
layer_fc1/bias/Adam
VariableV2*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
layer_fc1/bias/Adam/AssignAssignlayer_fc1/bias/Adam%layer_fc1/bias/Adam/Initializer/zeros*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
layer_fc1/bias/Adam/readIdentitylayer_fc1/bias/Adam*
_output_shapes	
:�*
T0*!
_class
loc:@layer_fc1/bias
�
'layer_fc1/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_fc1/bias/Adam_1
VariableV2*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
layer_fc1/bias/Adam_1/AssignAssignlayer_fc1/bias/Adam_1'layer_fc1/bias/Adam_1/Initializer/zeros*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
layer_fc1/bias/Adam_1/readIdentitylayer_fc1/bias/Adam_1*
T0*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:�
�
Dlayer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
:layer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/ConstConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
4layer_combine_fc_cnn1d/kernel/Adam/Initializer/zerosFillDlayer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/shape_as_tensor:layer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/Const*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*

index_type0* 
_output_shapes
:
��
�
"layer_combine_fc_cnn1d/kernel/Adam
VariableV2*
shared_name *0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��
�
)layer_combine_fc_cnn1d/kernel/Adam/AssignAssign"layer_combine_fc_cnn1d/kernel/Adam4layer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros* 
_output_shapes
:
��*
use_locking(*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
validate_shape(
�
'layer_combine_fc_cnn1d/kernel/Adam/readIdentity"layer_combine_fc_cnn1d/kernel/Adam*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel* 
_output_shapes
:
��
�
Flayer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB"�   �   *
dtype0
�
<layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/ConstConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
6layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zerosFillFlayer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/shape_as_tensor<layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/Const*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*

index_type0* 
_output_shapes
:
��
�
$layer_combine_fc_cnn1d/kernel/Adam_1
VariableV2*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��*
shared_name *0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel
�
+layer_combine_fc_cnn1d/kernel/Adam_1/AssignAssign$layer_combine_fc_cnn1d/kernel/Adam_16layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0
�
)layer_combine_fc_cnn1d/kernel/Adam_1/readIdentity$layer_combine_fc_cnn1d/kernel/Adam_1*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel* 
_output_shapes
:
��
�
2layer_combine_fc_cnn1d/bias/Adam/Initializer/zerosConst*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
 layer_combine_fc_cnn1d/bias/Adam
VariableV2*
shared_name *.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
'layer_combine_fc_cnn1d/bias/Adam/AssignAssign layer_combine_fc_cnn1d/bias/Adam2layer_combine_fc_cnn1d/bias/Adam/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(*
_output_shapes	
:�
�
%layer_combine_fc_cnn1d/bias/Adam/readIdentity layer_combine_fc_cnn1d/bias/Adam*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
_output_shapes	
:�
�
4layer_combine_fc_cnn1d/bias/Adam_1/Initializer/zerosConst*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
"layer_combine_fc_cnn1d/bias/Adam_1
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
	container 
�
)layer_combine_fc_cnn1d/bias/Adam_1/AssignAssign"layer_combine_fc_cnn1d/bias/Adam_14layer_combine_fc_cnn1d/bias/Adam_1/Initializer/zeros*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
'layer_combine_fc_cnn1d/bias/Adam_1/readIdentity"layer_combine_fc_cnn1d/bias/Adam_1*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
_output_shapes	
:�
�
@layer_combine_fc_x/kernel/Adam/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
6layer_combine_fc_x/kernel/Adam/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
0layer_combine_fc_x/kernel/Adam/Initializer/zerosFill@layer_combine_fc_x/kernel/Adam/Initializer/zeros/shape_as_tensor6layer_combine_fc_x/kernel/Adam/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*

index_type0* 
_output_shapes
:
��
�
layer_combine_fc_x/kernel/Adam
VariableV2*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��
�
%layer_combine_fc_x/kernel/Adam/AssignAssignlayer_combine_fc_x/kernel/Adam0layer_combine_fc_x/kernel/Adam/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
��
�
#layer_combine_fc_x/kernel/Adam/readIdentitylayer_combine_fc_x/kernel/Adam* 
_output_shapes
:
��*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel
�
Blayer_combine_fc_x/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
8layer_combine_fc_x/kernel/Adam_1/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
2layer_combine_fc_x/kernel/Adam_1/Initializer/zerosFillBlayer_combine_fc_x/kernel/Adam_1/Initializer/zeros/shape_as_tensor8layer_combine_fc_x/kernel/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
��*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*

index_type0
�
 layer_combine_fc_x/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
��*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel*
	container *
shape:
��
�
'layer_combine_fc_x/kernel/Adam_1/AssignAssign layer_combine_fc_x/kernel/Adam_12layer_combine_fc_x/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
��
�
%layer_combine_fc_x/kernel/Adam_1/readIdentity layer_combine_fc_x/kernel/Adam_1* 
_output_shapes
:
��*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel
�
.layer_combine_fc_x/bias/Adam/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_combine_fc_x/bias/Adam
VariableV2*
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
#layer_combine_fc_x/bias/Adam/AssignAssignlayer_combine_fc_x/bias/Adam.layer_combine_fc_x/bias/Adam/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:�
�
!layer_combine_fc_x/bias/Adam/readIdentitylayer_combine_fc_x/bias/Adam*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes	
:�
�
0layer_combine_fc_x/bias/Adam_1/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_combine_fc_x/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape:�
�
%layer_combine_fc_x/bias/Adam_1/AssignAssignlayer_combine_fc_x/bias/Adam_10layer_combine_fc_x/bias/Adam_1/Initializer/zeros*
_output_shapes	
:�*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(
�
#layer_combine_fc_x/bias/Adam_1/readIdentitylayer_combine_fc_x/bias/Adam_1**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes	
:�*
T0
�
@layer_combine_fc_y/kernel/Adam/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"�      *
dtype0*
_output_shapes
:
�
6layer_combine_fc_y/kernel/Adam/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
0layer_combine_fc_y/kernel/Adam/Initializer/zerosFill@layer_combine_fc_y/kernel/Adam/Initializer/zeros/shape_as_tensor6layer_combine_fc_y/kernel/Adam/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*

index_type0*
_output_shapes
:	�
�
layer_combine_fc_y/kernel/Adam
VariableV2*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel*
	container *
shape:	�*
dtype0*
_output_shapes
:	�
�
%layer_combine_fc_y/kernel/Adam/AssignAssignlayer_combine_fc_y/kernel/Adam0layer_combine_fc_y/kernel/Adam/Initializer/zeros*
_output_shapes
:	�*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(
�
#layer_combine_fc_y/kernel/Adam/readIdentitylayer_combine_fc_y/kernel/Adam*
_output_shapes
:	�*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel
�
Blayer_combine_fc_y/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"�      *
dtype0*
_output_shapes
:
�
8layer_combine_fc_y/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *    *
dtype0
�
2layer_combine_fc_y/kernel/Adam_1/Initializer/zerosFillBlayer_combine_fc_y/kernel/Adam_1/Initializer/zeros/shape_as_tensor8layer_combine_fc_y/kernel/Adam_1/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*

index_type0*
_output_shapes
:	�
�
 layer_combine_fc_y/kernel/Adam_1
VariableV2*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel*
	container *
shape:	�*
dtype0*
_output_shapes
:	�
�
'layer_combine_fc_y/kernel/Adam_1/AssignAssign layer_combine_fc_y/kernel/Adam_12layer_combine_fc_y/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	�
�
%layer_combine_fc_y/kernel/Adam_1/readIdentity layer_combine_fc_y/kernel/Adam_1*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	�*
T0
�
.layer_combine_fc_y/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    
�
layer_combine_fc_y/bias/Adam
VariableV2*
shared_name **
_class 
loc:@layer_combine_fc_y/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
#layer_combine_fc_y/bias/Adam/AssignAssignlayer_combine_fc_y/bias/Adam.layer_combine_fc_y/bias/Adam/Initializer/zeros**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
!layer_combine_fc_y/bias/Adam/readIdentitylayer_combine_fc_y/bias/Adam*
_output_shapes
:*
T0**
_class 
loc:@layer_combine_fc_y/bias
�
0layer_combine_fc_y/bias/Adam_1/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    *
dtype0*
_output_shapes
:
�
layer_combine_fc_y/bias/Adam_1
VariableV2**
_class 
loc:@layer_combine_fc_y/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
%layer_combine_fc_y/bias/Adam_1/AssignAssignlayer_combine_fc_y/bias/Adam_10layer_combine_fc_y/bias/Adam_1/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
�
#layer_combine_fc_y/bias/Adam_1/readIdentitylayer_combine_fc_y/bias/Adam_1**
_class 
loc:@layer_combine_fc_y/bias*
_output_shapes
:*
T0
W
Adam/learning_rateConst*
_output_shapes
: *
valueB
 *��8*
dtype0
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
_output_shapes
: *
valueB
 *w�+2*
dtype0
�
/Adam/update_batch_normalization/gamma/ApplyAdam	ApplyAdambatch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonKgradients/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*
use_locking( *
T0*,
_class"
 loc:@batch_normalization/gamma*
use_nesterov( *
_output_shapes	
:�
�
.Adam/update_batch_normalization/beta/ApplyAdam	ApplyAdambatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonIgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*
use_nesterov( *
_output_shapes	
:�*
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta
�
(Adam/update_layer_conv1/kernel/ApplyAdam	ApplyAdamlayer_conv1/kernellayer_conv1/kernel/Adamlayer_conv1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/layer_conv1/conv1d/ExpandDims_1_grad/Reshape*
use_locking( *
T0*%
_class
loc:@layer_conv1/kernel*
use_nesterov( *"
_output_shapes
: 
�
&Adam/update_layer_conv1/bias/ApplyAdam	ApplyAdamlayer_conv1/biaslayer_conv1/bias/Adamlayer_conv1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_conv1/bias*
use_nesterov( *
_output_shapes
: 
�
(Adam/update_layer_conv2/kernel/ApplyAdam	ApplyAdamlayer_conv2/kernellayer_conv2/kernel/Adamlayer_conv2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/layer_conv2/conv1d/ExpandDims_1_grad/Reshape*"
_output_shapes
:  *
use_locking( *
T0*%
_class
loc:@layer_conv2/kernel*
use_nesterov( 
�
&Adam/update_layer_conv2/bias/ApplyAdam	ApplyAdamlayer_conv2/biaslayer_conv2/bias/Adamlayer_conv2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_conv2/bias*
use_nesterov( *
_output_shapes
: 
�
&Adam/update_layer_fc1/kernel/ApplyAdam	ApplyAdamlayer_fc1/kernellayer_fc1/kernel/Adamlayer_fc1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_fc1/kernel*
use_nesterov( * 
_output_shapes
:
�@�
�
$Adam/update_layer_fc1/bias/ApplyAdam	ApplyAdamlayer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1*!
_class
loc:@layer_fc1/bias*
use_nesterov( *
_output_shapes	
:�*
use_locking( *
T0
�
3Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_cnn1d/kernel"layer_combine_fc_cnn1d/kernel/Adam$layer_combine_fc_cnn1d/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonGgradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependency_1* 
_output_shapes
:
��*
use_locking( *
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
use_nesterov( 
�
1Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam	ApplyAdamlayer_combine_fc_cnn1d/bias layer_combine_fc_cnn1d/bias/Adam"layer_combine_fc_cnn1d/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonHgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
use_nesterov( *
_output_shapes	
:�*
use_locking( 
�
/Adam/update_layer_combine_fc_x/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_x/kernellayer_combine_fc_x/kernel/Adam layer_combine_fc_x/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonCgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency_1* 
_output_shapes
:
��*
use_locking( *
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
use_nesterov( 
�
-Adam/update_layer_combine_fc_x/bias/ApplyAdam	ApplyAdamlayer_combine_fc_x/biaslayer_combine_fc_x/bias/Adamlayer_combine_fc_x/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes	
:�*
use_locking( *
T0**
_class 
loc:@layer_combine_fc_x/bias*
use_nesterov( 
�
/Adam/update_layer_combine_fc_y/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_y/kernellayer_combine_fc_y/kernel/Adam layer_combine_fc_y/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonCgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
use_nesterov( *
_output_shapes
:	�
�
-Adam/update_layer_combine_fc_y/bias/ApplyAdam	ApplyAdamlayer_combine_fc_y/biaslayer_combine_fc_y/bias/Adamlayer_combine_fc_y/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0**
_class 
loc:@layer_combine_fc_y/bias
�
Adam/mulMulbeta1_power/read
Adam/beta1/^Adam/update_batch_normalization/beta/ApplyAdam0^Adam/update_batch_normalization/gamma/ApplyAdam2^Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam4^Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam*
_output_shapes
: *
T0*+
_class!
loc:@batch_normalization/beta
�
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2/^Adam/update_batch_normalization/beta/ApplyAdam0^Adam/update_batch_normalization/gamma/ApplyAdam2^Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam4^Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
�
Adam/updateNoOp^Adam/Assign^Adam/Assign_1/^Adam/update_batch_normalization/beta/ApplyAdam0^Adam/update_batch_normalization/gamma/ApplyAdam2^Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam4^Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam
z

Adam/valueConst^Adam/update*
_class
loc:@global_step*
value	B	 R*
dtype0	*
_output_shapes
: 
~
Adam	AssignAddglobal_step
Adam/value*
_output_shapes
: *
use_locking( *
T0	*
_class
loc:@global_step
W
EqualEqualArgMaxIteratorGetNext:4*#
_output_shapes
:���������*
T0	
c
ToFloatCastEqual*
Truncate( *#
_output_shapes
:���������*

DstT0*

SrcT0

�
 accuracy/total/Initializer/zerosConst*
dtype0*
_output_shapes
: *!
_class
loc:@accuracy/total*
valueB
 *    
�
accuracy/total
VariableV2*
dtype0*
_output_shapes
: *
shared_name *!
_class
loc:@accuracy/total*
	container *
shape: 
�
accuracy/total/AssignAssignaccuracy/total accuracy/total/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@accuracy/total*
validate_shape(*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*
_output_shapes
: *
T0*!
_class
loc:@accuracy/total
�
 accuracy/count/Initializer/zerosConst*!
_class
loc:@accuracy/count*
valueB
 *    *
dtype0*
_output_shapes
: 
�
accuracy/count
VariableV2*
shared_name *!
_class
loc:@accuracy/count*
	container *
shape: *
dtype0*
_output_shapes
: 
�
accuracy/count/AssignAssignaccuracy/count accuracy/count/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@accuracy/count*
validate_shape(*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*
T0*!
_class
loc:@accuracy/count*
_output_shapes
: 
O
accuracy/SizeSizeToFloat*
_output_shapes
: *
T0*
out_type0
g
accuracy/ToFloatCastaccuracy/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
X
accuracy/ConstConst*
_output_shapes
:*
valueB: *
dtype0
j
accuracy/SumSumToFloataccuracy/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
use_locking( *
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat^ToFloat*
use_locking( *
T0*!
_class
loc:@accuracy/count*
_output_shapes
: 
f
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read*
T0*
_output_shapes
: 
X
accuracy/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
accuracy/GreaterGreateraccuracy/count/readaccuracy/zeros_like*
_output_shapes
: *
T0
r
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/zeros_like*
_output_shapes
: *
T0
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
_output_shapes
: *
T0
Z
accuracy/zeros_like_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
k
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/zeros_like_1*
T0*
_output_shapes
: 
|
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/zeros_like_1*
T0*
_output_shapes
: 
Z
accuracy_1/tagsConst*
valueB B
accuracy_1*
dtype0*
_output_shapes
: 
a

accuracy_1ScalarSummaryaccuracy_1/tagsaccuracy/update_op*
_output_shapes
: *
T0
N
	loss/tagsConst*
valueB
 Bloss*
dtype0*
_output_shapes
: 
G
lossScalarSummary	loss/tagsMean*
T0*
_output_shapes
: �#
�
�
/tf_data_structured_function_wrapper_52oRgbbAY9U
arg0
tfrecorddataset2DWrapper for passing nested structures to and from tf.data functions.�H
compression_typeConst"/device:CPU:0*
valueB B *
dtype0F
buffer_sizeConst"/device:CPU:0*
valueB		 R��*
dtype0	h
TFRecordDatasetTFRecordDatasetarg0compression_type:output:0buffer_size:output:0"/device:CPU:0"+
tfrecorddatasetTFRecordDataset:handle:0
�
�
/tf_data_structured_function_wrapper_HF2qjsseTGA
arg0)
%parsesingleexample_parsesingleexample	+
'parsesingleexample_parsesingleexample_0	+
'parsesingleexample_parsesingleexample_1	+
'parsesingleexample_parsesingleexample_2+
'parsesingleexample_parsesingleexample_3	2DWrapper for passing nested structures to and from tf.data functions.P
ParseSingleExample/ConstConst"/device:CPU:0*
valueB	 *
dtype0	R
ParseSingleExample/Const_1Const"/device:CPU:0*
dtype0	*
valueB	 R
ParseSingleExample/Const_2Const"/device:CPU:0*
valueB	 *
dtype0	R
ParseSingleExample/Const_3Const"/device:CPU:0*
valueB *
dtype0R
ParseSingleExample/Const_4Const"/device:CPU:0*
valueB	 *
dtype0	�
%ParseSingleExample/ParseSingleExampleParseSingleExamplearg0!ParseSingleExample/Const:output:0#ParseSingleExample/Const_1:output:0#ParseSingleExample/Const_2:output:0#ParseSingleExample/Const_3:output:0#ParseSingleExample/Const_4:output:0"/device:CPU:0*
Tdense	
2				*

num_sparse *R

dense_keysD
BlabelpacketLengthpacketPayloadpacketStatisticrecordTypes*-
dense_shapes
: :@:�::@*
sparse_types
 *
sparse_keys
 "_
'parsesingleexample_parsesingleexample_04ParseSingleExample/ParseSingleExample:dense_values:1"_
'parsesingleexample_parsesingleexample_14ParseSingleExample/ParseSingleExample:dense_values:2"_
'parsesingleexample_parsesingleexample_24ParseSingleExample/ParseSingleExample:dense_values:3"_
'parsesingleexample_parsesingleexample_34ParseSingleExample/ParseSingleExample:dense_values:0"]
%parsesingleexample_parsesingleexample4ParseSingleExample/ParseSingleExample:dense_values:4
�
2
_make_dataset_AsAROsJbEI0
batchdatasetv2�z
TensorSliceDataset/ConstConst"/device:CPU:0*;
value2B0 B*../../data/android_train_complete.tfrecord*
dtype0m
'TensorSliceDataset/flat_filenames/shapeConst"/device:CPU:0*
valueB:
���������*
dtype0�
!TensorSliceDataset/flat_filenamesReshape!TensorSliceDataset/Const:output:00TensorSliceDataset/flat_filenames/shape:output:0"/device:CPU:0*
T0*
Tshape0�
TensorSliceDatasetTensorSliceDataset*TensorSliceDataset/flat_filenames:output:0"/device:CPU:0*
output_shapes
: *
Toutput_types
2�
FlatMapDatasetFlatMapDatasetTensorSliceDataset:handle:0"/device:CPU:0*
output_shapes
: *8
f3R1
/tf_data_structured_function_wrapper_52oRgbbAY9U*
output_types
2*

Targuments
 �

MapDataset
MapDatasetFlatMapDataset:handle:0"/device:CPU:0*
output_types	
2				*
use_inter_op_parallelism(*

Targuments
 *.
output_shapes
:@:@:�:: *8
f3R1
/tf_data_structured_function_wrapper_HF2qjsseTGAT
ShuffleDataset/buffer_sizeConst"/device:CPU:0*
dtype0	*
value
B	 R�L
ShuffleDataset/seedConst"/device:CPU:0*
value	B	 R *
dtype0	M
ShuffleDataset/seed2Const"/device:CPU:0*
value	B	 R *
dtype0	�
ShuffleDatasetShuffleDatasetMapDataset:handle:0#ShuffleDataset/buffer_size:output:0ShuffleDataset/seed:output:0ShuffleDataset/seed2:output:0"/device:CPU:0*.
output_shapes
:@:@:�:: *
reshuffle_each_iteration(*
output_types	
2				U
RepeatDataset/countConst"/device:CPU:0*
dtype0	*
valueB	 R
����������
RepeatDatasetRepeatDatasetShuffleDataset:handle:0RepeatDataset/count:output:0"/device:CPU:0*
output_types	
2				*.
output_shapes
:@:@:�:: R
BatchDatasetV2/batch_sizeConst"/device:CPU:0*
value	B	 R *
dtype0	V
BatchDatasetV2/drop_remainderConst"/device:CPU:0*
value	B
 Z *
dtype0
�
BatchDatasetV2BatchDatasetV2RepeatDataset:handle:0"BatchDatasetV2/batch_size:output:0&BatchDatasetV2/drop_remainder:output:0"/device:CPU:0*
output_types	
2				*o
output_shapes^
\:���������@:���������@:����������:���������:���������")
batchdatasetv2BatchDatasetV2:handle:0"�X��U�     ���q	���+� �AJ��
�=�=
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
�
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
s
	AssignAdd
ref"T�

value"T

output_ref"T�" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	
�
)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype�
is_initialized
"
dtypetype�
�
IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0�
C
IteratorToStringHandle
resource_handle
string_handle�
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z
�
!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
;
Minimum
x"T
y"T
z"T"
Ttype:

2	�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
�
OneShotIterator

handle"
dataset_factoryfunc"
output_types
list(type)(0" 
output_shapeslist(shape)(0"
	containerstring "
shared_namestring �
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
\
	RefSwitch
data"T�
pred

output_false"T�
output_true"T�"	
Ttype�
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
.
Rsqrt
x"T
y"T"
Ttype:

2
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:�
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype�
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype�
9
TensorArraySizeV3

handle
flow_in
size�
�
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring �
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype�
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype*1.12.02v1.12.0-0-ga6d8ffae09ߨ


global_step/Initializer/zerosConst*
_output_shapes
: *
_class
loc:@global_step*
value	B	 R *
dtype0	
�
global_step
VariableV2*
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step*
	container *
shape: 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
�
!global_step/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
�
global_step/cond/SwitchSwitch!global_step/IsVariableInitialized!global_step/IsVariableInitialized*
T0
*
_output_shapes
: : 
a
global_step/cond/switch_tIdentityglobal_step/cond/Switch:1*
T0
*
_output_shapes
: 
_
global_step/cond/switch_fIdentityglobal_step/cond/Switch*
T0
*
_output_shapes
: 
h
global_step/cond/pred_idIdentity!global_step/IsVariableInitialized*
T0
*
_output_shapes
: 
b
global_step/cond/readIdentityglobal_step/cond/read/Switch:1*
T0	*
_output_shapes
: 
�
global_step/cond/read/Switch	RefSwitchglobal_stepglobal_step/cond/pred_id*
_output_shapes
: : *
T0	*
_class
loc:@global_step
�
global_step/cond/Switch_1Switchglobal_step/Initializer/zerosglobal_step/cond/pred_id*
T0	*
_class
loc:@global_step*
_output_shapes
: : 
}
global_step/cond/MergeMergeglobal_step/cond/Switch_1global_step/cond/read*
T0	*
N*
_output_shapes
: : 
S
global_step/add/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
b
global_step/addAddglobal_step/cond/Mergeglobal_step/add/y*
T0	*
_output_shapes
: 

ConstConst"/device:CPU:0*
_output_shapes
: *;
value2B0 B*../../data/android_train_complete.tfrecord*
dtype0
v
flat_filenames/shapeConst"/device:CPU:0*
valueB:
���������*
dtype0*
_output_shapes
:
x
flat_filenamesReshapeConstflat_filenames/shape"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:
]
buffer_sizeConst"/device:CPU:0*
value
B	 R�*
dtype0	*
_output_shapes
: 
U
seedConst"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
V
seed2Const"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
_
countConst"/device:CPU:0*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
[

batch_sizeConst"/device:CPU:0*
dtype0	*
_output_shapes
: *
value	B	 R 
_
drop_remainderConst"/device:CPU:0*
value	B
 Z *
dtype0
*
_output_shapes
: 
�
OneShotIteratorOneShotIterator"/device:CPU:0*0
dataset_factoryR
_make_dataset_AsAROsJbEI0*
shared_name *o
output_shapes^
\:���������@:���������@:����������:���������:���������*
	container *
output_types	
2				*
_output_shapes
: 
h
IteratorToStringHandleIteratorToStringHandleOneShotIterator"/device:CPU:0*
_output_shapes
: 
�
IteratorGetNextIteratorGetNextOneShotIterator"/device:CPU:0*o
output_shapes^
\:���������@:���������@:����������:���������:���������*p
_output_shapes^
\:���������@:���������@:����������:���������:���������*
output_types	
2				
�
CastCastIteratorGetNext:2"/device:CPU:0*

SrcT0	*
Truncate( *(
_output_shapes
:����������*

DstT0
�
Cast_1CastIteratorGetNext:1"/device:CPU:0*

SrcT0	*
Truncate( *'
_output_shapes
:���������@*

DstT0
�
:batch_normalization/gamma/Initializer/ones/shape_as_tensorConst*
_output_shapes
:*,
_class"
 loc:@batch_normalization/gamma*
valueB:�*
dtype0
�
0batch_normalization/gamma/Initializer/ones/ConstConst*
_output_shapes
: *,
_class"
 loc:@batch_normalization/gamma*
valueB
 *  �?*
dtype0
�
*batch_normalization/gamma/Initializer/onesFill:batch_normalization/gamma/Initializer/ones/shape_as_tensor0batch_normalization/gamma/Initializer/ones/Const*
_output_shapes	
:�*
T0*,
_class"
 loc:@batch_normalization/gamma*

index_type0
�
batch_normalization/gamma
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *,
_class"
 loc:@batch_normalization/gamma*
	container *
shape:�
�
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes	
:�
�
batch_normalization/gamma/readIdentitybatch_normalization/gamma*
_output_shapes	
:�*
T0*,
_class"
 loc:@batch_normalization/gamma
�
:batch_normalization/beta/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*+
_class!
loc:@batch_normalization/beta*
valueB:�
�
0batch_normalization/beta/Initializer/zeros/ConstConst*
_output_shapes
: *+
_class!
loc:@batch_normalization/beta*
valueB
 *    *
dtype0
�
*batch_normalization/beta/Initializer/zerosFill:batch_normalization/beta/Initializer/zeros/shape_as_tensor0batch_normalization/beta/Initializer/zeros/Const*
T0*+
_class!
loc:@batch_normalization/beta*

index_type0*
_output_shapes	
:�
�
batch_normalization/beta
VariableV2*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *+
_class!
loc:@batch_normalization/beta
�
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes	
:�
�
batch_normalization/beta/readIdentitybatch_normalization/beta*+
_class!
loc:@batch_normalization/beta*
_output_shapes	
:�*
T0
�
Abatch_normalization/moving_mean/Initializer/zeros/shape_as_tensorConst*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB:�*
dtype0*
_output_shapes
:
�
7batch_normalization/moving_mean/Initializer/zeros/ConstConst*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB
 *    *
dtype0*
_output_shapes
: 
�
1batch_normalization/moving_mean/Initializer/zerosFillAbatch_normalization/moving_mean/Initializer/zeros/shape_as_tensor7batch_normalization/moving_mean/Initializer/zeros/Const*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*

index_type0*
_output_shapes	
:�
�
batch_normalization/moving_mean
VariableV2*
shared_name *2
_class(
&$loc:@batch_normalization/moving_mean*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes	
:�*
T0
�
Dbatch_normalization/moving_variance/Initializer/ones/shape_as_tensorConst*
dtype0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB:�
�
:batch_normalization/moving_variance/Initializer/ones/ConstConst*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
4batch_normalization/moving_variance/Initializer/onesFillDbatch_normalization/moving_variance/Initializer/ones/shape_as_tensor:batch_normalization/moving_variance/Initializer/ones/Const*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*

index_type0*
_output_shapes	
:�
�
#batch_normalization/moving_variance
VariableV2*
shared_name *6
_class,
*(loc:@batch_normalization/moving_variance*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*6
_class,
*(loc:@batch_normalization/moving_variance
�
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes	
:�
h
#batch_normalization/batchnorm/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
!batch_normalization/batchnorm/addAdd(batch_normalization/moving_variance/read#batch_normalization/batchnorm/add/y*
T0*
_output_shapes	
:�
u
#batch_normalization/batchnorm/RsqrtRsqrt!batch_normalization/batchnorm/add*
_output_shapes	
:�*
T0
�
!batch_normalization/batchnorm/mulMul#batch_normalization/batchnorm/Rsqrtbatch_normalization/gamma/read*
T0*
_output_shapes	
:�
�
#batch_normalization/batchnorm/mul_1MulCast!batch_normalization/batchnorm/mul*(
_output_shapes
:����������*
T0
�
#batch_normalization/batchnorm/mul_2Mul$batch_normalization/moving_mean/read!batch_normalization/batchnorm/mul*
_output_shapes	
:�*
T0
�
!batch_normalization/batchnorm/subSubbatch_normalization/beta/read#batch_normalization/batchnorm/mul_2*
T0*
_output_shapes	
:�
�
#batch_normalization/batchnorm/add_1Add#batch_normalization/batchnorm/mul_1!batch_normalization/batchnorm/sub*(
_output_shapes
:����������*
T0
b
Reshape/shapeConst*
_output_shapes
:*!
valueB"����      *
dtype0
�
ReshapeReshape#batch_normalization/batchnorm/add_1Reshape/shape*
T0*
Tshape0*,
_output_shapes
:����������
�
3layer_conv1/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_conv1/kernel*!
valueB"          *
dtype0*
_output_shapes
:
�
1layer_conv1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*
valueB
 *d|�*
dtype0
�
1layer_conv1/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_conv1/kernel*
valueB
 *d|>*
dtype0*
_output_shapes
: 
�
;layer_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv1/kernel/Initializer/random_uniform/shape*

seed *
T0*%
_class
loc:@layer_conv1/kernel*
seed2 *
dtype0*"
_output_shapes
: 
�
1layer_conv1/kernel/Initializer/random_uniform/subSub1layer_conv1/kernel/Initializer/random_uniform/max1layer_conv1/kernel/Initializer/random_uniform/min*%
_class
loc:@layer_conv1/kernel*
_output_shapes
: *
T0
�
1layer_conv1/kernel/Initializer/random_uniform/mulMul;layer_conv1/kernel/Initializer/random_uniform/RandomUniform1layer_conv1/kernel/Initializer/random_uniform/sub*"
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel
�
-layer_conv1/kernel/Initializer/random_uniformAdd1layer_conv1/kernel/Initializer/random_uniform/mul1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*"
_output_shapes
: 
�
layer_conv1/kernel
VariableV2*
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: *
dtype0*"
_output_shapes
: 
�
layer_conv1/kernel/AssignAssignlayer_conv1/kernel-layer_conv1/kernel/Initializer/random_uniform*%
_class
loc:@layer_conv1/kernel*
validate_shape(*"
_output_shapes
: *
use_locking(*
T0
�
layer_conv1/kernel/readIdentitylayer_conv1/kernel*"
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel
�
"layer_conv1/bias/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv1/bias
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias
�
layer_conv1/bias/AssignAssignlayer_conv1/bias"layer_conv1/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
}
layer_conv1/bias/readIdentitylayer_conv1/bias*
_output_shapes
: *
T0*#
_class
loc:@layer_conv1/bias
c
layer_conv1/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
c
!layer_conv1/conv1d/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :
�
layer_conv1/conv1d/ExpandDims
ExpandDimsReshape!layer_conv1/conv1d/ExpandDims/dim*0
_output_shapes
:����������*

Tdim0*
T0
e
#layer_conv1/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
layer_conv1/conv1d/ExpandDims_1
ExpandDimslayer_conv1/kernel/read#layer_conv1/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
: *

Tdim0
�
layer_conv1/conv1d/Conv2DConv2Dlayer_conv1/conv1d/ExpandDimslayer_conv1/conv1d/ExpandDims_1*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:���������� 
�
layer_conv1/conv1d/SqueezeSqueezelayer_conv1/conv1d/Conv2D*
squeeze_dims
*
T0*,
_output_shapes
:���������� 
�
layer_conv1/BiasAddBiasAddlayer_conv1/conv1d/Squeezelayer_conv1/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:���������� 
d
layer_conv1/ReluRelulayer_conv1/BiasAdd*
T0*,
_output_shapes
:���������� 
^
max_pooling1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d/ExpandDims
ExpandDimslayer_conv1/Relumax_pooling1d/ExpandDims/dim*
T0*0
_output_shapes
:���������� *

Tdim0
�
max_pooling1d/MaxPoolMaxPoolmax_pooling1d/ExpandDims*
ksize
*
paddingVALID*0
_output_shapes
:���������� *
T0*
data_formatNHWC*
strides

�
max_pooling1d/SqueezeSqueezemax_pooling1d/MaxPool*,
_output_shapes
:���������� *
squeeze_dims
*
T0
�
3layer_conv2/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_conv2/kernel*!
valueB"           *
dtype0*
_output_shapes
:
�
1layer_conv2/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *�5�*
dtype0*
_output_shapes
: 
�
1layer_conv2/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
;layer_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv2/kernel/Initializer/random_uniform/shape*
dtype0*"
_output_shapes
:  *

seed *
T0*%
_class
loc:@layer_conv2/kernel*
seed2 
�
1layer_conv2/kernel/Initializer/random_uniform/subSub1layer_conv2/kernel/Initializer/random_uniform/max1layer_conv2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv2/kernel*
_output_shapes
: 
�
1layer_conv2/kernel/Initializer/random_uniform/mulMul;layer_conv2/kernel/Initializer/random_uniform/RandomUniform1layer_conv2/kernel/Initializer/random_uniform/sub*"
_output_shapes
:  *
T0*%
_class
loc:@layer_conv2/kernel
�
-layer_conv2/kernel/Initializer/random_uniformAdd1layer_conv2/kernel/Initializer/random_uniform/mul1layer_conv2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv2/kernel*"
_output_shapes
:  
�
layer_conv2/kernel
VariableV2*
dtype0*"
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  
�
layer_conv2/kernel/AssignAssignlayer_conv2/kernel-layer_conv2/kernel/Initializer/random_uniform*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*"
_output_shapes
:  
�
layer_conv2/kernel/readIdentitylayer_conv2/kernel*"
_output_shapes
:  *
T0*%
_class
loc:@layer_conv2/kernel
�
"layer_conv2/bias/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv2/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: 
�
layer_conv2/bias/AssignAssignlayer_conv2/bias"layer_conv2/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
}
layer_conv2/bias/readIdentitylayer_conv2/bias*#
_class
loc:@layer_conv2/bias*
_output_shapes
: *
T0
c
layer_conv2/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
c
!layer_conv2/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
layer_conv2/conv1d/ExpandDims
ExpandDimsmax_pooling1d/Squeeze!layer_conv2/conv1d/ExpandDims/dim*
T0*0
_output_shapes
:���������� *

Tdim0
e
#layer_conv2/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
layer_conv2/conv1d/ExpandDims_1
ExpandDimslayer_conv2/kernel/read#layer_conv2/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:  *

Tdim0
�
layer_conv2/conv1d/Conv2DConv2Dlayer_conv2/conv1d/ExpandDimslayer_conv2/conv1d/ExpandDims_1*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:���������� 
�
layer_conv2/conv1d/SqueezeSqueezelayer_conv2/conv1d/Conv2D*
squeeze_dims
*
T0*,
_output_shapes
:���������� 
�
layer_conv2/BiasAddBiasAddlayer_conv2/conv1d/Squeezelayer_conv2/bias/read*
data_formatNHWC*,
_output_shapes
:���������� *
T0
d
layer_conv2/ReluRelulayer_conv2/BiasAdd*
T0*,
_output_shapes
:���������� 
`
max_pooling1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d_1/ExpandDims
ExpandDimslayer_conv2/Relumax_pooling1d_1/ExpandDims/dim*
T0*0
_output_shapes
:���������� *

Tdim0
�
max_pooling1d_1/MaxPoolMaxPoolmax_pooling1d_1/ExpandDims*
ksize
*
paddingVALID*0
_output_shapes
:���������� *
T0*
data_formatNHWC*
strides

�
max_pooling1d_1/SqueezeSqueezemax_pooling1d_1/MaxPool*,
_output_shapes
:���������� *
squeeze_dims
*
T0
l
Flatten/flatten/ShapeShapemax_pooling1d_1/Squeeze*
T0*
out_type0*
_output_shapes
:
m
#Flatten/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Flatten/flatten/strided_sliceStridedSliceFlatten/flatten/Shape#Flatten/flatten/strided_slice/stack%Flatten/flatten/strided_slice/stack_1%Flatten/flatten/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
j
Flatten/flatten/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
valueB :
���������
�
Flatten/flatten/Reshape/shapePackFlatten/flatten/strided_sliceFlatten/flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
�
Flatten/flatten/ReshapeReshapemax_pooling1d_1/SqueezeFlatten/flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:����������@
�
1layer_fc1/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_fc1/kernel*
valueB"    �   *
dtype0*
_output_shapes
:
�
/layer_fc1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel*
valueB
 *��ۼ*
dtype0
�
/layer_fc1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *���<*
dtype0*
_output_shapes
: 
�
9layer_fc1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1layer_fc1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0* 
_output_shapes
:
�@�*

seed *
T0*#
_class
loc:@layer_fc1/kernel
�
/layer_fc1/kernel/Initializer/random_uniform/subSub/layer_fc1/kernel/Initializer/random_uniform/max/layer_fc1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_fc1/kernel*
_output_shapes
: 
�
/layer_fc1/kernel/Initializer/random_uniform/mulMul9layer_fc1/kernel/Initializer/random_uniform/RandomUniform/layer_fc1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
�@�
�
+layer_fc1/kernel/Initializer/random_uniformAdd/layer_fc1/kernel/Initializer/random_uniform/mul/layer_fc1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
�@�
�
layer_fc1/kernel
VariableV2*#
_class
loc:@layer_fc1/kernel*
	container *
shape:
�@�*
dtype0* 
_output_shapes
:
�@�*
shared_name 
�
layer_fc1/kernel/AssignAssignlayer_fc1/kernel+layer_fc1/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
�@�
�
layer_fc1/kernel/readIdentitylayer_fc1/kernel*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
�@�
�
 layer_fc1/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:�*!
_class
loc:@layer_fc1/bias*
valueB�*    
�
layer_fc1/bias
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *!
_class
loc:@layer_fc1/bias*
	container 
�
layer_fc1/bias/AssignAssignlayer_fc1/bias layer_fc1/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:�
x
layer_fc1/bias/readIdentitylayer_fc1/bias*
_output_shapes	
:�*
T0*!
_class
loc:@layer_fc1/bias
�
layer_fc1/MatMulMatMulFlatten/flatten/Reshapelayer_fc1/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b( *
T0
�
layer_fc1/BiasAddBiasAddlayer_fc1/MatMullayer_fc1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
\
layer_fc1/ReluRelulayer_fc1/BiasAdd*
T0*(
_output_shapes
:����������
`
Reshape_1/shapeConst*
valueB"����@   *
dtype0*
_output_shapes
:
v
	Reshape_1ReshapeIteratorGetNextReshape_1/shape*
T0	*
Tshape0*'
_output_shapes
:���������@
�
0word_embeddings/Initializer/random_uniform/shapeConst*"
_class
loc:@word_embeddings*
valueB"      *
dtype0*
_output_shapes
:
�
.word_embeddings/Initializer/random_uniform/minConst*"
_class
loc:@word_embeddings*
valueB
 *���*
dtype0*
_output_shapes
: 
�
.word_embeddings/Initializer/random_uniform/maxConst*"
_class
loc:@word_embeddings*
valueB
 *��>*
dtype0*
_output_shapes
: 
�
8word_embeddings/Initializer/random_uniform/RandomUniformRandomUniform0word_embeddings/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	� *

seed *
T0*"
_class
loc:@word_embeddings*
seed2 
�
.word_embeddings/Initializer/random_uniform/subSub.word_embeddings/Initializer/random_uniform/max.word_embeddings/Initializer/random_uniform/min*
T0*"
_class
loc:@word_embeddings*
_output_shapes
: 
�
.word_embeddings/Initializer/random_uniform/mulMul8word_embeddings/Initializer/random_uniform/RandomUniform.word_embeddings/Initializer/random_uniform/sub*
_output_shapes
:	� *
T0*"
_class
loc:@word_embeddings
�
*word_embeddings/Initializer/random_uniformAdd.word_embeddings/Initializer/random_uniform/mul.word_embeddings/Initializer/random_uniform/min*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	� 
�
word_embeddings
VariableV2*
dtype0*
_output_shapes
:	� *
shared_name *"
_class
loc:@word_embeddings*
	container *
shape:	� 
�
word_embeddings/AssignAssignword_embeddings*word_embeddings/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	� 

word_embeddings/readIdentityword_embeddings*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	� 
{
embedding_lookup/axisConst*"
_class
loc:@word_embeddings*
value	B : *
dtype0*
_output_shapes
: 
�
embedding_lookupGatherV2word_embeddings/read	Reshape_1embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*"
_class
loc:@word_embeddings*+
_output_shapes
:���������@ 
m
embedding_lookup/IdentityIdentityembedding_lookup*
T0*+
_output_shapes
:���������@ 
J
rnn/RankConst*
_output_shapes
: *
value	B :*
dtype0
Q
rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
Q
rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
f
	rnn/rangeRangernn/range/startrnn/Rankrnn/range/delta*
_output_shapes
:*

Tidx0
d
rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
Q
rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�

rnn/concatConcatV2rnn/concat/values_0	rnn/rangernn/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
rnn/transpose	Transposeembedding_lookup/Identity
rnn/concat*
T0*+
_output_shapes
:@��������� *
Tperm0
V
	rnn/ShapeShapernn/transpose*
T0*
out_type0*
_output_shapes
:
a
rnn/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
c
rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
c
rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
rnn/strided_sliceStridedSlice	rnn/Shapernn/strided_slice/stackrnn/strided_slice/stack_1rnn/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
j
(rnn/BasicRNNCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
$rnn/BasicRNNCellZeroState/ExpandDims
ExpandDimsrnn/strided_slice(rnn/BasicRNNCellZeroState/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
i
rnn/BasicRNNCellZeroState/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
g
%rnn/BasicRNNCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
 rnn/BasicRNNCellZeroState/concatConcatV2$rnn/BasicRNNCellZeroState/ExpandDimsrnn/BasicRNNCellZeroState/Const%rnn/BasicRNNCellZeroState/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
j
%rnn/BasicRNNCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
rnn/BasicRNNCellZeroState/zerosFill rnn/BasicRNNCellZeroState/concat%rnn/BasicRNNCellZeroState/zeros/Const*
T0*

index_type0*'
_output_shapes
:���������@
l
*rnn/BasicRNNCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
&rnn/BasicRNNCellZeroState/ExpandDims_1
ExpandDimsrnn/strided_slice*rnn/BasicRNNCellZeroState/ExpandDims_1/dim*
T0*
_output_shapes
:*

Tdim0
k
!rnn/BasicRNNCellZeroState/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
X
rnn/Shape_1Shapernn/transpose*
_output_shapes
:*
T0*
out_type0
c
rnn/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
e
rnn/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
e
rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
rnn/strided_slice_1StridedSlicernn/Shape_1rnn/strided_slice_1/stackrnn/strided_slice_1/stack_1rnn/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
X
rnn/Shape_2Shapernn/transpose*
_output_shapes
:*
T0*
out_type0
c
rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
rnn/strided_slice_2StridedSlicernn/Shape_2rnn/strided_slice_2/stackrnn/strided_slice_2/stack_1rnn/strided_slice_2/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
T
rnn/ExpandDims/dimConst*
_output_shapes
: *
value	B : *
dtype0
v
rnn/ExpandDims
ExpandDimsrnn/strided_slice_2rnn/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
S
	rnn/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
S
rnn/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
rnn/concat_1ConcatV2rnn/ExpandDims	rnn/Constrnn/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
T
rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
t
	rnn/zerosFillrnn/concat_1rnn/zeros/Const*
T0*

index_type0*'
_output_shapes
:���������@
J
rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
�
rnn/TensorArrayTensorArrayV3rnn/strided_slice_1*$
element_shape:���������@*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*/
tensor_array_namernn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: 
�
rnn/TensorArray_1TensorArrayV3rnn/strided_slice_1*$
element_shape:��������� *
dynamic_size( *
clear_after_read(*
identical_element_shapes(*.
tensor_array_namernn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: 
i
rnn/TensorArrayUnstack/ShapeShapernn/transpose*
T0*
out_type0*
_output_shapes
:
t
*rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
$rnn/TensorArrayUnstack/strided_sliceStridedSlicernn/TensorArrayUnstack/Shape*rnn/TensorArrayUnstack/strided_slice/stack,rnn/TensorArrayUnstack/strided_slice/stack_1,rnn/TensorArrayUnstack/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
d
"rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
d
"rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
rnn/TensorArrayUnstack/rangeRange"rnn/TensorArrayUnstack/range/start$rnn/TensorArrayUnstack/strided_slice"rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:���������*

Tidx0
�
>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3rnn/TensorArray_1rnn/TensorArrayUnstack/rangernn/transposernn/TensorArray_1:1*
T0* 
_class
loc:@rnn/transpose*
_output_shapes
: 
O
rnn/Maximum/xConst*
dtype0*
_output_shapes
: *
value	B :
[
rnn/MaximumMaximumrnn/Maximum/xrnn/strided_slice_1*
T0*
_output_shapes
: 
Y
rnn/MinimumMinimumrnn/strided_slice_1rnn/Maximum*
_output_shapes
: *
T0
]
rnn/while/iteration_counterConst*
_output_shapes
: *
value	B : *
dtype0
�
rnn/while/EnterEnterrnn/while/iteration_counter*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context*
T0*
is_constant( 
�
rnn/while/Enter_1Enterrnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
�
rnn/while/Enter_2Enterrnn/TensorArray:1*
is_constant( *
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context*
T0
�
rnn/while/Enter_3Enterrnn/BasicRNNCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:���������@*'

frame_namernn/while/while_context
n
rnn/while/MergeMergernn/while/Enterrnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
t
rnn/while/Merge_1Mergernn/while/Enter_1rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
t
rnn/while/Merge_2Mergernn/while/Enter_2rnn/while/NextIteration_2*
N*
_output_shapes
: : *
T0
�
rnn/while/Merge_3Mergernn/while/Enter_3rnn/while/NextIteration_3*
T0*
N*)
_output_shapes
:���������@: 
^
rnn/while/LessLessrnn/while/Mergernn/while/Less/Enter*
T0*
_output_shapes
: 
�
rnn/while/Less/EnterEnterrnn/strided_slice_1*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context*
T0*
is_constant(
d
rnn/while/Less_1Lessrnn/while/Merge_1rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
�
rnn/while/Less_1/EnterEnterrnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
\
rnn/while/LogicalAnd
LogicalAndrnn/while/Lessrnn/while/Less_1*
_output_shapes
: 
L
rnn/while/LoopCondLoopCondrnn/while/LogicalAnd*
_output_shapes
: 
�
rnn/while/SwitchSwitchrnn/while/Mergernn/while/LoopCond*"
_class
loc:@rnn/while/Merge*
_output_shapes
: : *
T0
�
rnn/while/Switch_1Switchrnn/while/Merge_1rnn/while/LoopCond*$
_class
loc:@rnn/while/Merge_1*
_output_shapes
: : *
T0
�
rnn/while/Switch_2Switchrnn/while/Merge_2rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_2*
_output_shapes
: : 
�
rnn/while/Switch_3Switchrnn/while/Merge_3rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_3*:
_output_shapes(
&:���������@:���������@
S
rnn/while/IdentityIdentityrnn/while/Switch:1*
_output_shapes
: *
T0
W
rnn/while/Identity_1Identityrnn/while/Switch_1:1*
T0*
_output_shapes
: 
W
rnn/while/Identity_2Identityrnn/while/Switch_2:1*
T0*
_output_shapes
: 
h
rnn/while/Identity_3Identityrnn/while/Switch_3:1*'
_output_shapes
:���������@*
T0
f
rnn/while/add/yConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
rnn/while/addAddrnn/while/Identityrnn/while/add/y*
_output_shapes
: *
T0
�
rnn/while/TensorArrayReadV3TensorArrayReadV3!rnn/while/TensorArrayReadV3/Enterrnn/while/Identity_1#rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:��������� 
�
!rnn/while/TensorArrayReadV3/EnterEnterrnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*'

frame_namernn/while/while_context
�
#rnn/while/TensorArrayReadV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
�
:rnn/basic_rnn_cell/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB"`   @   *
dtype0*
_output_shapes
:
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *�KF�*
dtype0*
_output_shapes
: 
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *�KF>*
dtype0*
_output_shapes
: 
�
Brnn/basic_rnn_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniform:rnn/basic_rnn_cell/kernel/Initializer/random_uniform/shape*
_output_shapes

:`@*

seed *
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
seed2 *
dtype0
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/subSub8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/max8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/mulMulBrnn/basic_rnn_cell/kernel/Initializer/random_uniform/RandomUniform8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
_output_shapes

:`@
�
4rnn/basic_rnn_cell/kernel/Initializer/random_uniformAdd8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/mul8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
_output_shapes

:`@
�
rnn/basic_rnn_cell/kernel
VariableV2*
dtype0*
_output_shapes

:`@*
shared_name *,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
	container *
shape
:`@
�
 rnn/basic_rnn_cell/kernel/AssignAssignrnn/basic_rnn_cell/kernel4rnn/basic_rnn_cell/kernel/Initializer/random_uniform*
_output_shapes

:`@*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(
n
rnn/basic_rnn_cell/kernel/readIdentityrnn/basic_rnn_cell/kernel*
T0*
_output_shapes

:`@
�
)rnn/basic_rnn_cell/bias/Initializer/zerosConst**
_class 
loc:@rnn/basic_rnn_cell/bias*
valueB@*    *
dtype0*
_output_shapes
:@
�
rnn/basic_rnn_cell/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name **
_class 
loc:@rnn/basic_rnn_cell/bias*
	container *
shape:@
�
rnn/basic_rnn_cell/bias/AssignAssignrnn/basic_rnn_cell/bias)rnn/basic_rnn_cell/bias/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(
f
rnn/basic_rnn_cell/bias/readIdentityrnn/basic_rnn_cell/bias*
T0*
_output_shapes
:@
{
$rnn/while/basic_rnn_cell/concat/axisConst^rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
�
rnn/while/basic_rnn_cell/concatConcatV2rnn/while/TensorArrayReadV3rnn/while/Identity_3$rnn/while/basic_rnn_cell/concat/axis*
N*'
_output_shapes
:���������`*

Tidx0*
T0
�
rnn/while/basic_rnn_cell/MatMulMatMulrnn/while/basic_rnn_cell/concat%rnn/while/basic_rnn_cell/MatMul/Enter*'
_output_shapes
:���������@*
transpose_a( *
transpose_b( *
T0
�
%rnn/while/basic_rnn_cell/MatMul/EnterEnterrnn/basic_rnn_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:`@*'

frame_namernn/while/while_context
�
 rnn/while/basic_rnn_cell/BiasAddBiasAddrnn/while/basic_rnn_cell/MatMul&rnn/while/basic_rnn_cell/BiasAdd/Enter*
T0*
data_formatNHWC*'
_output_shapes
:���������@
�
&rnn/while/basic_rnn_cell/BiasAdd/EnterEnterrnn/basic_rnn_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:@*'

frame_namernn/while/while_context
y
rnn/while/basic_rnn_cell/TanhTanh rnn/while/basic_rnn_cell/BiasAdd*'
_output_shapes
:���������@*
T0
�
-rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterrnn/while/Identity_1rnn/while/basic_rnn_cell/Tanhrnn/while/Identity_2*
T0*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
_output_shapes
: 
�
3rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterrnn/TensorArray*
T0*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
parallel_iterations *
is_constant(*
_output_shapes
:*'

frame_namernn/while/while_context
h
rnn/while/add_1/yConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
`
rnn/while/add_1Addrnn/while/Identity_1rnn/while/add_1/y*
_output_shapes
: *
T0
X
rnn/while/NextIterationNextIterationrnn/while/add*
T0*
_output_shapes
: 
\
rnn/while/NextIteration_1NextIterationrnn/while/add_1*
T0*
_output_shapes
: 
z
rnn/while/NextIteration_2NextIteration-rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
{
rnn/while/NextIteration_3NextIterationrnn/while/basic_rnn_cell/Tanh*
T0*'
_output_shapes
:���������@
I
rnn/while/ExitExitrnn/while/Switch*
T0*
_output_shapes
: 
M
rnn/while/Exit_1Exitrnn/while/Switch_1*
T0*
_output_shapes
: 
M
rnn/while/Exit_2Exitrnn/while/Switch_2*
T0*
_output_shapes
: 
^
rnn/while/Exit_3Exitrnn/while/Switch_3*
T0*'
_output_shapes
:���������@
�
&rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3rnn/TensorArrayrnn/while/Exit_2*"
_class
loc:@rnn/TensorArray*
_output_shapes
: 
�
 rnn/TensorArrayStack/range/startConst*"
_class
loc:@rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
�
 rnn/TensorArrayStack/range/deltaConst*
dtype0*
_output_shapes
: *"
_class
loc:@rnn/TensorArray*
value	B :
�
rnn/TensorArrayStack/rangeRange rnn/TensorArrayStack/range/start&rnn/TensorArrayStack/TensorArraySizeV3 rnn/TensorArrayStack/range/delta*#
_output_shapes
:���������*

Tidx0*"
_class
loc:@rnn/TensorArray
�
(rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3rnn/TensorArrayrnn/TensorArrayStack/rangernn/while/Exit_2*
dtype0*+
_output_shapes
:@���������@*$
element_shape:���������@*"
_class
loc:@rnn/TensorArray
U
rnn/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
L

rnn/Rank_1Const*
_output_shapes
: *
value	B :*
dtype0
S
rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
S
rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
n
rnn/range_1Rangernn/range_1/start
rnn/Rank_1rnn/range_1/delta*
_output_shapes
:*

Tidx0
f
rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
S
rnn/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
rnn/concat_2ConcatV2rnn/concat_2/values_0rnn/range_1rnn/concat_2/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
rnn/transpose_1	Transpose(rnn/TensorArrayStack/TensorArrayGatherV3rnn/concat_2*+
_output_shapes
:���������@@*
Tperm0*
T0
h
strided_slice/stackConst*
_output_shapes
:*!
valueB"    ����    *
dtype0
j
strided_slice/stack_1Const*!
valueB"            *
dtype0*
_output_shapes
:
j
strided_slice/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:
�
strided_sliceStridedSlicernn/transpose_1strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*'
_output_shapes
:���������@
�
6layer_rnn_fc_1/kernel/Initializer/random_uniform/shapeConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB"@   �   *
dtype0*
_output_shapes
:
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *�5�*
dtype0
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/maxConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
>layer_rnn_fc_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform6layer_rnn_fc_1/kernel/Initializer/random_uniform/shape*
_output_shapes
:	@�*

seed *
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
seed2 *
dtype0
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/subSub4layer_rnn_fc_1/kernel/Initializer/random_uniform/max4layer_rnn_fc_1/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
: 
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/mulMul>layer_rnn_fc_1/kernel/Initializer/random_uniform/RandomUniform4layer_rnn_fc_1/kernel/Initializer/random_uniform/sub*
_output_shapes
:	@�*
T0*(
_class
loc:@layer_rnn_fc_1/kernel
�
0layer_rnn_fc_1/kernel/Initializer/random_uniformAdd4layer_rnn_fc_1/kernel/Initializer/random_uniform/mul4layer_rnn_fc_1/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
:	@�
�
layer_rnn_fc_1/kernel
VariableV2*
shared_name *(
_class
loc:@layer_rnn_fc_1/kernel*
	container *
shape:	@�*
dtype0*
_output_shapes
:	@�
�
layer_rnn_fc_1/kernel/AssignAssignlayer_rnn_fc_1/kernel0layer_rnn_fc_1/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes
:	@�*
use_locking(*
T0*(
_class
loc:@layer_rnn_fc_1/kernel
�
layer_rnn_fc_1/kernel/readIdentitylayer_rnn_fc_1/kernel*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
:	@�
�
%layer_rnn_fc_1/bias/Initializer/zerosConst*&
_class
loc:@layer_rnn_fc_1/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_rnn_fc_1/bias
VariableV2*&
_class
loc:@layer_rnn_fc_1/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
layer_rnn_fc_1/bias/AssignAssignlayer_rnn_fc_1/bias%layer_rnn_fc_1/bias/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(*
_output_shapes	
:�
�
layer_rnn_fc_1/bias/readIdentitylayer_rnn_fc_1/bias*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
_output_shapes	
:�
�
layer_rnn_fc_1/MatMulMatMulstrided_slicelayer_rnn_fc_1/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
layer_rnn_fc_1/BiasAddBiasAddlayer_rnn_fc_1/MatMullayer_rnn_fc_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
f
layer_rnn_fc_1/ReluRelulayer_rnn_fc_1/BiasAdd*
T0*(
_output_shapes
:����������
�
,batch_normalization_1/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:*.
_class$
" loc:@batch_normalization_1/gamma*
valueB*  �?
�
batch_normalization_1/gamma
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_1/gamma*
	container *
shape:*
dtype0*
_output_shapes
:
�
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:
�
 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:
�
,batch_normalization_1/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_1/beta*
valueB*    *
dtype0*
_output_shapes
:
�
batch_normalization_1/beta
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_1/beta*
	container *
shape:*
dtype0*
_output_shapes
:
�
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:
�
batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*
_output_shapes
:*
T0*-
_class#
!loc:@batch_normalization_1/beta
�
3batch_normalization_1/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
!batch_normalization_1/moving_mean
VariableV2*4
_class*
(&loc:@batch_normalization_1/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
�
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*
_output_shapes
:*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
�
6batch_normalization_1/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
%batch_normalization_1/moving_variance
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *8
_class.
,*loc:@batch_normalization_1/moving_variance
�
,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:
�
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*
_output_shapes
:*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
j
%batch_normalization_1/batchnorm/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
#batch_normalization_1/batchnorm/addAdd*batch_normalization_1/moving_variance/read%batch_normalization_1/batchnorm/add/y*
_output_shapes
:*
T0
x
%batch_normalization_1/batchnorm/RsqrtRsqrt#batch_normalization_1/batchnorm/add*
T0*
_output_shapes
:
�
#batch_normalization_1/batchnorm/mulMul%batch_normalization_1/batchnorm/Rsqrt batch_normalization_1/gamma/read*
_output_shapes
:*
T0
�
%batch_normalization_1/batchnorm/mul_1MulIteratorGetNext:3#batch_normalization_1/batchnorm/mul*'
_output_shapes
:���������*
T0
�
%batch_normalization_1/batchnorm/mul_2Mul&batch_normalization_1/moving_mean/read#batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:
�
#batch_normalization_1/batchnorm/subSubbatch_normalization_1/beta/read%batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:
�
%batch_normalization_1/batchnorm/add_1Add%batch_normalization_1/batchnorm/mul_1#batch_normalization_1/batchnorm/sub*
T0*'
_output_shapes
:���������
�
3layer_dnn_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
_class
loc:@layer_dnn_1/kernel*
valueB"       
�
1layer_dnn_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *%
_class
loc:@layer_dnn_1/kernel*
valueB
 *b���*
dtype0
�
1layer_dnn_1/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_dnn_1/kernel*
valueB
 *b��>*
dtype0*
_output_shapes
: 
�
;layer_dnn_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_dnn_1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes

: *

seed *
T0*%
_class
loc:@layer_dnn_1/kernel
�
1layer_dnn_1/kernel/Initializer/random_uniform/subSub1layer_dnn_1/kernel/Initializer/random_uniform/max1layer_dnn_1/kernel/Initializer/random_uniform/min*%
_class
loc:@layer_dnn_1/kernel*
_output_shapes
: *
T0
�
1layer_dnn_1/kernel/Initializer/random_uniform/mulMul;layer_dnn_1/kernel/Initializer/random_uniform/RandomUniform1layer_dnn_1/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_dnn_1/kernel*
_output_shapes

: 
�
-layer_dnn_1/kernel/Initializer/random_uniformAdd1layer_dnn_1/kernel/Initializer/random_uniform/mul1layer_dnn_1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_dnn_1/kernel*
_output_shapes

: 
�
layer_dnn_1/kernel
VariableV2*
dtype0*
_output_shapes

: *
shared_name *%
_class
loc:@layer_dnn_1/kernel*
	container *
shape
: 
�
layer_dnn_1/kernel/AssignAssignlayer_dnn_1/kernel-layer_dnn_1/kernel/Initializer/random_uniform*
use_locking(*
T0*%
_class
loc:@layer_dnn_1/kernel*
validate_shape(*
_output_shapes

: 
�
layer_dnn_1/kernel/readIdentitylayer_dnn_1/kernel*
T0*%
_class
loc:@layer_dnn_1/kernel*
_output_shapes

: 
�
"layer_dnn_1/bias/Initializer/zerosConst*#
_class
loc:@layer_dnn_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_dnn_1/bias
VariableV2*
_output_shapes
: *
shared_name *#
_class
loc:@layer_dnn_1/bias*
	container *
shape: *
dtype0
�
layer_dnn_1/bias/AssignAssignlayer_dnn_1/bias"layer_dnn_1/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_dnn_1/bias*
validate_shape(*
_output_shapes
: 
}
layer_dnn_1/bias/readIdentitylayer_dnn_1/bias*
_output_shapes
: *
T0*#
_class
loc:@layer_dnn_1/bias
�
layer_dnn_1/MatMulMatMul%batch_normalization_1/batchnorm/add_1layer_dnn_1/kernel/read*
T0*'
_output_shapes
:��������� *
transpose_a( *
transpose_b( 
�
layer_dnn_1/BiasAddBiasAddlayer_dnn_1/MatMullayer_dnn_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
_
layer_dnn_1/ReluRelulayer_dnn_1/BiasAdd*'
_output_shapes
:��������� *
T0
�
3layer_dnn_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*%
_class
loc:@layer_dnn_2/kernel*
valueB"        *
dtype0
�
1layer_dnn_2/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_dnn_2/kernel*
valueB
 *qĜ�*
dtype0*
_output_shapes
: 
�
1layer_dnn_2/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_dnn_2/kernel*
valueB
 *qĜ>*
dtype0*
_output_shapes
: 
�
;layer_dnn_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_dnn_2/kernel/Initializer/random_uniform/shape*
_output_shapes

:  *

seed *
T0*%
_class
loc:@layer_dnn_2/kernel*
seed2 *
dtype0
�
1layer_dnn_2/kernel/Initializer/random_uniform/subSub1layer_dnn_2/kernel/Initializer/random_uniform/max1layer_dnn_2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_dnn_2/kernel*
_output_shapes
: 
�
1layer_dnn_2/kernel/Initializer/random_uniform/mulMul;layer_dnn_2/kernel/Initializer/random_uniform/RandomUniform1layer_dnn_2/kernel/Initializer/random_uniform/sub*
_output_shapes

:  *
T0*%
_class
loc:@layer_dnn_2/kernel
�
-layer_dnn_2/kernel/Initializer/random_uniformAdd1layer_dnn_2/kernel/Initializer/random_uniform/mul1layer_dnn_2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_dnn_2/kernel*
_output_shapes

:  
�
layer_dnn_2/kernel
VariableV2*
shared_name *%
_class
loc:@layer_dnn_2/kernel*
	container *
shape
:  *
dtype0*
_output_shapes

:  
�
layer_dnn_2/kernel/AssignAssignlayer_dnn_2/kernel-layer_dnn_2/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0*%
_class
loc:@layer_dnn_2/kernel
�
layer_dnn_2/kernel/readIdentitylayer_dnn_2/kernel*
T0*%
_class
loc:@layer_dnn_2/kernel*
_output_shapes

:  
�
"layer_dnn_2/bias/Initializer/zerosConst*#
_class
loc:@layer_dnn_2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_dnn_2/bias
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_dnn_2/bias*
	container 
�
layer_dnn_2/bias/AssignAssignlayer_dnn_2/bias"layer_dnn_2/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_dnn_2/bias*
validate_shape(*
_output_shapes
: 
}
layer_dnn_2/bias/readIdentitylayer_dnn_2/bias*
T0*#
_class
loc:@layer_dnn_2/bias*
_output_shapes
: 
�
layer_dnn_2/MatMulMatMullayer_dnn_1/Relulayer_dnn_2/kernel/read*'
_output_shapes
:��������� *
transpose_a( *
transpose_b( *
T0
�
layer_dnn_2/BiasAddBiasAddlayer_dnn_2/MatMullayer_dnn_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
_
layer_dnn_2/ReluRelulayer_dnn_2/BiasAdd*'
_output_shapes
:��������� *
T0
�
,batch_normalization_2/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_2/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
batch_normalization_2/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *.
_class$
" loc:@batch_normalization_2/gamma*
	container *
shape:@
�
"batch_normalization_2/gamma/AssignAssignbatch_normalization_2/gamma,batch_normalization_2/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@
�
 batch_normalization_2/gamma/readIdentitybatch_normalization_2/gamma*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
:@
�
,batch_normalization_2/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_2/beta*
valueB@*    *
dtype0*
_output_shapes
:@
�
batch_normalization_2/beta
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *-
_class#
!loc:@batch_normalization_2/beta
�
!batch_normalization_2/beta/AssignAssignbatch_normalization_2/beta,batch_normalization_2/beta/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
�
batch_normalization_2/beta/readIdentitybatch_normalization_2/beta*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
:@
�
3batch_normalization_2/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_2/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
�
!batch_normalization_2/moving_mean
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *4
_class*
(&loc:@batch_normalization_2/moving_mean
�
(batch_normalization_2/moving_mean/AssignAssign!batch_normalization_2/moving_mean3batch_normalization_2/moving_mean/Initializer/zeros*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
�
&batch_normalization_2/moving_mean/readIdentity!batch_normalization_2/moving_mean*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:@*
T0
�
6batch_normalization_2/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_2/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
%batch_normalization_2/moving_variance
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *8
_class.
,*loc:@batch_normalization_2/moving_variance
�
,batch_normalization_2/moving_variance/AssignAssign%batch_normalization_2/moving_variance6batch_normalization_2/moving_variance/Initializer/ones*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
�
*batch_normalization_2/moving_variance/readIdentity%batch_normalization_2/moving_variance*
_output_shapes
:@*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
j
%batch_normalization_2/batchnorm/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
#batch_normalization_2/batchnorm/addAdd*batch_normalization_2/moving_variance/read%batch_normalization_2/batchnorm/add/y*
T0*
_output_shapes
:@
x
%batch_normalization_2/batchnorm/RsqrtRsqrt#batch_normalization_2/batchnorm/add*
T0*
_output_shapes
:@
�
#batch_normalization_2/batchnorm/mulMul%batch_normalization_2/batchnorm/Rsqrt batch_normalization_2/gamma/read*
T0*
_output_shapes
:@
�
%batch_normalization_2/batchnorm/mul_1MulCast_1#batch_normalization_2/batchnorm/mul*'
_output_shapes
:���������@*
T0
�
%batch_normalization_2/batchnorm/mul_2Mul&batch_normalization_2/moving_mean/read#batch_normalization_2/batchnorm/mul*
_output_shapes
:@*
T0
�
#batch_normalization_2/batchnorm/subSubbatch_normalization_2/beta/read%batch_normalization_2/batchnorm/mul_2*
_output_shapes
:@*
T0
�
%batch_normalization_2/batchnorm/add_1Add%batch_normalization_2/batchnorm/mul_1#batch_normalization_2/batchnorm/sub*
T0*'
_output_shapes
:���������@
d
Reshape_2/shapeConst*
_output_shapes
:*!
valueB"����@      *
dtype0
�
	Reshape_2Reshape%batch_normalization_2/batchnorm/add_1Reshape_2/shape*
T0*
Tshape0*+
_output_shapes
:���������@
�
:layer_length_conv1/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_length_conv1/kernel*!
valueB"          *
dtype0*
_output_shapes
:
�
8layer_length_conv1/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_length_conv1/kernel*
valueB
 *d|�*
dtype0*
_output_shapes
: 
�
8layer_length_conv1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *,
_class"
 loc:@layer_length_conv1/kernel*
valueB
 *d|>*
dtype0
�
Blayer_length_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_length_conv1/kernel/Initializer/random_uniform/shape*
dtype0*"
_output_shapes
: *

seed *
T0*,
_class"
 loc:@layer_length_conv1/kernel*
seed2 
�
8layer_length_conv1/kernel/Initializer/random_uniform/subSub8layer_length_conv1/kernel/Initializer/random_uniform/max8layer_length_conv1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@layer_length_conv1/kernel
�
8layer_length_conv1/kernel/Initializer/random_uniform/mulMulBlayer_length_conv1/kernel/Initializer/random_uniform/RandomUniform8layer_length_conv1/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_length_conv1/kernel*"
_output_shapes
: 
�
4layer_length_conv1/kernel/Initializer/random_uniformAdd8layer_length_conv1/kernel/Initializer/random_uniform/mul8layer_length_conv1/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_length_conv1/kernel*"
_output_shapes
: 
�
layer_length_conv1/kernel
VariableV2*
shared_name *,
_class"
 loc:@layer_length_conv1/kernel*
	container *
shape: *
dtype0*"
_output_shapes
: 
�
 layer_length_conv1/kernel/AssignAssignlayer_length_conv1/kernel4layer_length_conv1/kernel/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@layer_length_conv1/kernel*
validate_shape(*"
_output_shapes
: 
�
layer_length_conv1/kernel/readIdentitylayer_length_conv1/kernel*"
_output_shapes
: *
T0*,
_class"
 loc:@layer_length_conv1/kernel
�
)layer_length_conv1/bias/Initializer/zerosConst**
_class 
loc:@layer_length_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_length_conv1/bias
VariableV2*
shared_name **
_class 
loc:@layer_length_conv1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
layer_length_conv1/bias/AssignAssignlayer_length_conv1/bias)layer_length_conv1/bias/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0**
_class 
loc:@layer_length_conv1/bias
�
layer_length_conv1/bias/readIdentitylayer_length_conv1/bias*
T0**
_class 
loc:@layer_length_conv1/bias*
_output_shapes
: 
j
 layer_length_conv1/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
j
(layer_length_conv1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
$layer_length_conv1/conv1d/ExpandDims
ExpandDims	Reshape_2(layer_length_conv1/conv1d/ExpandDims/dim*

Tdim0*
T0*/
_output_shapes
:���������@
l
*layer_length_conv1/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
&layer_length_conv1/conv1d/ExpandDims_1
ExpandDimslayer_length_conv1/kernel/read*layer_length_conv1/conv1d/ExpandDims_1/dim*&
_output_shapes
: *

Tdim0*
T0
�
 layer_length_conv1/conv1d/Conv2DConv2D$layer_length_conv1/conv1d/ExpandDims&layer_length_conv1/conv1d/ExpandDims_1*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������@ 
�
!layer_length_conv1/conv1d/SqueezeSqueeze layer_length_conv1/conv1d/Conv2D*
T0*+
_output_shapes
:���������@ *
squeeze_dims

�
layer_length_conv1/BiasAddBiasAdd!layer_length_conv1/conv1d/Squeezelayer_length_conv1/bias/read*
data_formatNHWC*+
_output_shapes
:���������@ *
T0
q
layer_length_conv1/ReluRelulayer_length_conv1/BiasAdd*
T0*+
_output_shapes
:���������@ 
`
max_pooling1d_2/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d_2/ExpandDims
ExpandDimslayer_length_conv1/Relumax_pooling1d_2/ExpandDims/dim*/
_output_shapes
:���������@ *

Tdim0*
T0
�
max_pooling1d_2/MaxPoolMaxPoolmax_pooling1d_2/ExpandDims*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:���������  *
T0
�
max_pooling1d_2/SqueezeSqueezemax_pooling1d_2/MaxPool*
T0*+
_output_shapes
:���������  *
squeeze_dims

�
:layer_length_conv2/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_length_conv2/kernel*!
valueB"           *
dtype0*
_output_shapes
:
�
8layer_length_conv2/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_length_conv2/kernel*
valueB
 *�5�*
dtype0*
_output_shapes
: 
�
8layer_length_conv2/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_length_conv2/kernel*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
Blayer_length_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_length_conv2/kernel/Initializer/random_uniform/shape*
dtype0*"
_output_shapes
:  *

seed *
T0*,
_class"
 loc:@layer_length_conv2/kernel*
seed2 
�
8layer_length_conv2/kernel/Initializer/random_uniform/subSub8layer_length_conv2/kernel/Initializer/random_uniform/max8layer_length_conv2/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_length_conv2/kernel*
_output_shapes
: 
�
8layer_length_conv2/kernel/Initializer/random_uniform/mulMulBlayer_length_conv2/kernel/Initializer/random_uniform/RandomUniform8layer_length_conv2/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_length_conv2/kernel*"
_output_shapes
:  
�
4layer_length_conv2/kernel/Initializer/random_uniformAdd8layer_length_conv2/kernel/Initializer/random_uniform/mul8layer_length_conv2/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_length_conv2/kernel*"
_output_shapes
:  
�
layer_length_conv2/kernel
VariableV2*
shared_name *,
_class"
 loc:@layer_length_conv2/kernel*
	container *
shape:  *
dtype0*"
_output_shapes
:  
�
 layer_length_conv2/kernel/AssignAssignlayer_length_conv2/kernel4layer_length_conv2/kernel/Initializer/random_uniform*
validate_shape(*"
_output_shapes
:  *
use_locking(*
T0*,
_class"
 loc:@layer_length_conv2/kernel
�
layer_length_conv2/kernel/readIdentitylayer_length_conv2/kernel*
T0*,
_class"
 loc:@layer_length_conv2/kernel*"
_output_shapes
:  
�
)layer_length_conv2/bias/Initializer/zerosConst**
_class 
loc:@layer_length_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_length_conv2/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name **
_class 
loc:@layer_length_conv2/bias*
	container *
shape: 
�
layer_length_conv2/bias/AssignAssignlayer_length_conv2/bias)layer_length_conv2/bias/Initializer/zeros**
_class 
loc:@layer_length_conv2/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
layer_length_conv2/bias/readIdentitylayer_length_conv2/bias*
T0**
_class 
loc:@layer_length_conv2/bias*
_output_shapes
: 
j
 layer_length_conv2/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
j
(layer_length_conv2/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
$layer_length_conv2/conv1d/ExpandDims
ExpandDimsmax_pooling1d_2/Squeeze(layer_length_conv2/conv1d/ExpandDims/dim*/
_output_shapes
:���������  *

Tdim0*
T0
l
*layer_length_conv2/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
&layer_length_conv2/conv1d/ExpandDims_1
ExpandDimslayer_length_conv2/kernel/read*layer_length_conv2/conv1d/ExpandDims_1/dim*

Tdim0*
T0*&
_output_shapes
:  
�
 layer_length_conv2/conv1d/Conv2DConv2D$layer_length_conv2/conv1d/ExpandDims&layer_length_conv2/conv1d/ExpandDims_1*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������  
�
!layer_length_conv2/conv1d/SqueezeSqueeze layer_length_conv2/conv1d/Conv2D*
squeeze_dims
*
T0*+
_output_shapes
:���������  
�
layer_length_conv2/BiasAddBiasAdd!layer_length_conv2/conv1d/Squeezelayer_length_conv2/bias/read*
data_formatNHWC*+
_output_shapes
:���������  *
T0
q
layer_length_conv2/ReluRelulayer_length_conv2/BiasAdd*+
_output_shapes
:���������  *
T0
`
max_pooling1d_3/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d_3/ExpandDims
ExpandDimslayer_length_conv2/Relumax_pooling1d_3/ExpandDims/dim*

Tdim0*
T0*/
_output_shapes
:���������  
�
max_pooling1d_3/MaxPoolMaxPoolmax_pooling1d_3/ExpandDims*
ksize
*
paddingVALID*/
_output_shapes
:��������� *
T0*
data_formatNHWC*
strides

�
max_pooling1d_3/SqueezeSqueezemax_pooling1d_3/MaxPool*
T0*+
_output_shapes
:��������� *
squeeze_dims

n
Flatten_1/flatten/ShapeShapemax_pooling1d_3/Squeeze*
T0*
out_type0*
_output_shapes
:
o
%Flatten_1/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
q
'Flatten_1/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
q
'Flatten_1/flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Flatten_1/flatten/strided_sliceStridedSliceFlatten_1/flatten/Shape%Flatten_1/flatten/strided_slice/stack'Flatten_1/flatten/strided_slice/stack_1'Flatten_1/flatten/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
l
!Flatten_1/flatten/Reshape/shape/1Const*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Flatten_1/flatten/Reshape/shapePackFlatten_1/flatten/strided_slice!Flatten_1/flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
�
Flatten_1/flatten/ReshapeReshapemax_pooling1d_3/SqueezeFlatten_1/flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:����������
�
8layer_length_fc1/kernel/Initializer/random_uniform/shapeConst**
_class 
loc:@layer_length_fc1/kernel*
valueB"   �   *
dtype0*
_output_shapes
:
�
6layer_length_fc1/kernel/Initializer/random_uniform/minConst**
_class 
loc:@layer_length_fc1/kernel*
valueB
 *�Kƽ*
dtype0*
_output_shapes
: 
�
6layer_length_fc1/kernel/Initializer/random_uniform/maxConst**
_class 
loc:@layer_length_fc1/kernel*
valueB
 *�K�=*
dtype0*
_output_shapes
: 
�
@layer_length_fc1/kernel/Initializer/random_uniform/RandomUniformRandomUniform8layer_length_fc1/kernel/Initializer/random_uniform/shape*
T0**
_class 
loc:@layer_length_fc1/kernel*
seed2 *
dtype0* 
_output_shapes
:
��*

seed 
�
6layer_length_fc1/kernel/Initializer/random_uniform/subSub6layer_length_fc1/kernel/Initializer/random_uniform/max6layer_length_fc1/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@layer_length_fc1/kernel*
_output_shapes
: 
�
6layer_length_fc1/kernel/Initializer/random_uniform/mulMul@layer_length_fc1/kernel/Initializer/random_uniform/RandomUniform6layer_length_fc1/kernel/Initializer/random_uniform/sub*
T0**
_class 
loc:@layer_length_fc1/kernel* 
_output_shapes
:
��
�
2layer_length_fc1/kernel/Initializer/random_uniformAdd6layer_length_fc1/kernel/Initializer/random_uniform/mul6layer_length_fc1/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@layer_length_fc1/kernel* 
_output_shapes
:
��
�
layer_length_fc1/kernel
VariableV2*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��*
shared_name **
_class 
loc:@layer_length_fc1/kernel
�
layer_length_fc1/kernel/AssignAssignlayer_length_fc1/kernel2layer_length_fc1/kernel/Initializer/random_uniform* 
_output_shapes
:
��*
use_locking(*
T0**
_class 
loc:@layer_length_fc1/kernel*
validate_shape(
�
layer_length_fc1/kernel/readIdentitylayer_length_fc1/kernel*
T0**
_class 
loc:@layer_length_fc1/kernel* 
_output_shapes
:
��
�
'layer_length_fc1/bias/Initializer/zerosConst*(
_class
loc:@layer_length_fc1/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_length_fc1/bias
VariableV2*(
_class
loc:@layer_length_fc1/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
layer_length_fc1/bias/AssignAssignlayer_length_fc1/bias'layer_length_fc1/bias/Initializer/zeros*
use_locking(*
T0*(
_class
loc:@layer_length_fc1/bias*
validate_shape(*
_output_shapes	
:�
�
layer_length_fc1/bias/readIdentitylayer_length_fc1/bias*
T0*(
_class
loc:@layer_length_fc1/bias*
_output_shapes	
:�
�
layer_length_fc1/MatMulMatMulFlatten_1/flatten/Reshapelayer_length_fc1/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b( *
T0
�
layer_length_fc1/BiasAddBiasAddlayer_length_fc1/MatMullayer_length_fc1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
j
layer_length_fc1/ReluRelulayer_length_fc1/BiasAdd*(
_output_shapes
:����������*
T0
�
>layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB"�   �   *
dtype0
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/minConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *q��*
dtype0*
_output_shapes
: 
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/maxConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *q�>*
dtype0*
_output_shapes
: 
�
Flayer_combine_fc_cnn1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform>layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/shape*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
seed2 *
dtype0* 
_output_shapes
:
��*

seed 
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/subSub<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/max<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/min*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
_output_shapes
: 
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/mulMulFlayer_combine_fc_cnn1d/kernel/Initializer/random_uniform/RandomUniform<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
��*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel
�
8layer_combine_fc_cnn1d/kernel/Initializer/random_uniformAdd<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/mul<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/min*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel* 
_output_shapes
:
��
�
layer_combine_fc_cnn1d/kernel
VariableV2*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��*
shared_name *0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel
�
$layer_combine_fc_cnn1d/kernel/AssignAssignlayer_combine_fc_cnn1d/kernel8layer_combine_fc_cnn1d/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel
�
"layer_combine_fc_cnn1d/kernel/readIdentitylayer_combine_fc_cnn1d/kernel*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel* 
_output_shapes
:
��
�
-layer_combine_fc_cnn1d/bias/Initializer/zerosConst*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_combine_fc_cnn1d/bias
VariableV2*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *.
_class$
" loc:@layer_combine_fc_cnn1d/bias
�
"layer_combine_fc_cnn1d/bias/AssignAssignlayer_combine_fc_cnn1d/bias-layer_combine_fc_cnn1d/bias/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(*
_output_shapes	
:�
�
 layer_combine_fc_cnn1d/bias/readIdentitylayer_combine_fc_cnn1d/bias*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
_output_shapes	
:�
�
layer_combine_fc_cnn1d/MatMulMatMullayer_fc1/Relu"layer_combine_fc_cnn1d/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b( *
T0
�
layer_combine_fc_cnn1d/BiasAddBiasAddlayer_combine_fc_cnn1d/MatMul layer_combine_fc_cnn1d/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
v
layer_combine_fc_cnn1d/ReluRelulayer_combine_fc_cnn1d/BiasAdd*(
_output_shapes
:����������*
T0
�
:layer_combine_fc_x/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"�   �   
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *q��*
dtype0*
_output_shapes
: 
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *q�>*
dtype0*
_output_shapes
: 
�
Blayer_combine_fc_x/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_combine_fc_x/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
��*

seed *
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
seed2 
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/subSub8layer_combine_fc_x/kernel/Initializer/random_uniform/max8layer_combine_fc_x/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
_output_shapes
: 
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/mulMulBlayer_combine_fc_x/kernel/Initializer/random_uniform/RandomUniform8layer_combine_fc_x/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��
�
4layer_combine_fc_x/kernel/Initializer/random_uniformAdd8layer_combine_fc_x/kernel/Initializer/random_uniform/mul8layer_combine_fc_x/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��
�
layer_combine_fc_x/kernel
VariableV2*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel
�
 layer_combine_fc_x/kernel/AssignAssignlayer_combine_fc_x/kernel4layer_combine_fc_x/kernel/Initializer/random_uniform*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0
�
layer_combine_fc_x/kernel/readIdentitylayer_combine_fc_x/kernel*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��
�
)layer_combine_fc_x/bias/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_combine_fc_x/bias
VariableV2*
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
layer_combine_fc_x/bias/AssignAssignlayer_combine_fc_x/bias)layer_combine_fc_x/bias/Initializer/zeros*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
layer_combine_fc_x/bias/readIdentitylayer_combine_fc_x/bias*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes	
:�
�
layer_combine_fc_x/MatMulMatMullayer_combine_fc_cnn1d/Relulayer_combine_fc_x/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b( *
T0
�
layer_combine_fc_x/BiasAddBiasAddlayer_combine_fc_x/MatMullayer_combine_fc_x/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
n
layer_combine_fc_x/ReluRelulayer_combine_fc_x/BiasAdd*
T0*(
_output_shapes
:����������
�
:layer_combine_fc_y/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"�      *
dtype0*
_output_shapes
:
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *o}R�*
dtype0*
_output_shapes
: 
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *o}R>*
dtype0*
_output_shapes
: 
�
Blayer_combine_fc_y/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_combine_fc_y/kernel/Initializer/random_uniform/shape*

seed *
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
seed2 *
dtype0*
_output_shapes
:	�
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/subSub8layer_combine_fc_y/kernel/Initializer/random_uniform/max8layer_combine_fc_y/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
: 
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/mulMulBlayer_combine_fc_y/kernel/Initializer/random_uniform/RandomUniform8layer_combine_fc_y/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	�
�
4layer_combine_fc_y/kernel/Initializer/random_uniformAdd8layer_combine_fc_y/kernel/Initializer/random_uniform/mul8layer_combine_fc_y/kernel/Initializer/random_uniform/min*
_output_shapes
:	�*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel
�
layer_combine_fc_y/kernel
VariableV2*
dtype0*
_output_shapes
:	�*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel*
	container *
shape:	�
�
 layer_combine_fc_y/kernel/AssignAssignlayer_combine_fc_y/kernel4layer_combine_fc_y/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel
�
layer_combine_fc_y/kernel/readIdentitylayer_combine_fc_y/kernel*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	�
�
)layer_combine_fc_y/bias/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    *
dtype0*
_output_shapes
:
�
layer_combine_fc_y/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name **
_class 
loc:@layer_combine_fc_y/bias
�
layer_combine_fc_y/bias/AssignAssignlayer_combine_fc_y/bias)layer_combine_fc_y/bias/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
�
layer_combine_fc_y/bias/readIdentitylayer_combine_fc_y/bias*
_output_shapes
:*
T0**
_class 
loc:@layer_combine_fc_y/bias
�
layer_combine_fc_y/MatMulMatMullayer_combine_fc_x/Relulayer_combine_fc_y/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
layer_combine_fc_y/BiasAddBiasAddlayer_combine_fc_y/MatMullayer_combine_fc_y/bias/read*
data_formatNHWC*'
_output_shapes
:���������*
T0
`
SoftmaxSoftmaxlayer_combine_fc_y/BiasAdd*
T0*'
_output_shapes
:���������
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
x
ArgMaxArgMaxSoftmaxArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:���������
z
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeIteratorGetNext:4*
T0	*
out_type0*
_output_shapes
:
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitslayer_combine_fc_y/BiasAddIteratorGetNext:4*
T0*6
_output_shapes$
":���������:���������*
Tlabels0	
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
MeanMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
�
gradients/Mean_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:���������*

Tmultiples0*
T0
�
gradients/Mean_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*
_output_shapes
:*
T0
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
_output_shapes
: *
T0
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:���������*
T0
�
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:���������*
T0
�
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:���������*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:���������
�
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:���������
�
5gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGradBiasAddGradZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*
T0*
data_formatNHWC*
_output_shapes
:
�
:gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_depsNoOp[^gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul6^gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad
�
Bgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependencyIdentityZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul;^gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_deps*
T0*m
_classc
a_loc:@gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*'
_output_shapes
:���������
�
Dgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad;^gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
/gradients/layer_combine_fc_y/MatMul_grad/MatMulMatMulBgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependencylayer_combine_fc_y/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b(*
T0
�
1gradients/layer_combine_fc_y/MatMul_grad/MatMul_1MatMullayer_combine_fc_x/ReluBgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	�*
transpose_a(*
transpose_b( 
�
9gradients/layer_combine_fc_y/MatMul_grad/tuple/group_depsNoOp0^gradients/layer_combine_fc_y/MatMul_grad/MatMul2^gradients/layer_combine_fc_y/MatMul_grad/MatMul_1
�
Agradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_y/MatMul_grad/MatMul:^gradients/layer_combine_fc_y/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/layer_combine_fc_y/MatMul_grad/MatMul*(
_output_shapes
:����������
�
Cgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependency_1Identity1gradients/layer_combine_fc_y/MatMul_grad/MatMul_1:^gradients/layer_combine_fc_y/MatMul_grad/tuple/group_deps*D
_class:
86loc:@gradients/layer_combine_fc_y/MatMul_grad/MatMul_1*
_output_shapes
:	�*
T0
�
/gradients/layer_combine_fc_x/Relu_grad/ReluGradReluGradAgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependencylayer_combine_fc_x/Relu*
T0*(
_output_shapes
:����������
�
5gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/layer_combine_fc_x/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:�
�
:gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_depsNoOp6^gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad0^gradients/layer_combine_fc_x/Relu_grad/ReluGrad
�
Bgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_x/Relu_grad/ReluGrad;^gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/layer_combine_fc_x/Relu_grad/ReluGrad*(
_output_shapes
:����������
�
Dgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad;^gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
�
/gradients/layer_combine_fc_x/MatMul_grad/MatMulMatMulBgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependencylayer_combine_fc_x/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b(*
T0
�
1gradients/layer_combine_fc_x/MatMul_grad/MatMul_1MatMullayer_combine_fc_cnn1d/ReluBgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
�
9gradients/layer_combine_fc_x/MatMul_grad/tuple/group_depsNoOp0^gradients/layer_combine_fc_x/MatMul_grad/MatMul2^gradients/layer_combine_fc_x/MatMul_grad/MatMul_1
�
Agradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_x/MatMul_grad/MatMul:^gradients/layer_combine_fc_x/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/layer_combine_fc_x/MatMul_grad/MatMul*(
_output_shapes
:����������
�
Cgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency_1Identity1gradients/layer_combine_fc_x/MatMul_grad/MatMul_1:^gradients/layer_combine_fc_x/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/layer_combine_fc_x/MatMul_grad/MatMul_1* 
_output_shapes
:
��
�
3gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGradReluGradAgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependencylayer_combine_fc_cnn1d/Relu*
T0*(
_output_shapes
:����������
�
9gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGradBiasAddGrad3gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:�
�
>gradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/group_depsNoOp:^gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGrad4^gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad
�
Fgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependencyIdentity3gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad?^gradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad*(
_output_shapes
:����������
�
Hgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency_1Identity9gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGrad?^gradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
3gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMulMatMulFgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency"layer_combine_fc_cnn1d/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
5gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1MatMullayer_fc1/ReluFgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
�
=gradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/group_depsNoOp4^gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul6^gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1
�
Egradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependencyIdentity3gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul>^gradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul*(
_output_shapes
:����������
�
Ggradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1>^gradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1* 
_output_shapes
:
��
�
&gradients/layer_fc1/Relu_grad/ReluGradReluGradEgradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependencylayer_fc1/Relu*
T0*(
_output_shapes
:����������
�
,gradients/layer_fc1/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/layer_fc1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:�*
T0
�
1gradients/layer_fc1/BiasAdd_grad/tuple/group_depsNoOp-^gradients/layer_fc1/BiasAdd_grad/BiasAddGrad'^gradients/layer_fc1/Relu_grad/ReluGrad
�
9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/Relu_grad/ReluGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_fc1/Relu_grad/ReluGrad*(
_output_shapes
:����������
�
;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/layer_fc1/BiasAdd_grad/BiasAddGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:�*
T0*?
_class5
31loc:@gradients/layer_fc1/BiasAdd_grad/BiasAddGrad
�
&gradients/layer_fc1/MatMul_grad/MatMulMatMul9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencylayer_fc1/kernel/read*
T0*(
_output_shapes
:����������@*
transpose_a( *
transpose_b(
�
(gradients/layer_fc1/MatMul_grad/MatMul_1MatMulFlatten/flatten/Reshape9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
�@�*
transpose_a(*
transpose_b( 
�
0gradients/layer_fc1/MatMul_grad/tuple/group_depsNoOp'^gradients/layer_fc1/MatMul_grad/MatMul)^gradients/layer_fc1/MatMul_grad/MatMul_1
�
8gradients/layer_fc1/MatMul_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/MatMul_grad/MatMul1^gradients/layer_fc1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_fc1/MatMul_grad/MatMul*(
_output_shapes
:����������@
�
:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1Identity(gradients/layer_fc1/MatMul_grad/MatMul_11^gradients/layer_fc1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_fc1/MatMul_grad/MatMul_1* 
_output_shapes
:
�@�
�
,gradients/Flatten/flatten/Reshape_grad/ShapeShapemax_pooling1d_1/Squeeze*
_output_shapes
:*
T0*
out_type0
�
.gradients/Flatten/flatten/Reshape_grad/ReshapeReshape8gradients/layer_fc1/MatMul_grad/tuple/control_dependency,gradients/Flatten/flatten/Reshape_grad/Shape*
T0*
Tshape0*,
_output_shapes
:���������� 
�
,gradients/max_pooling1d_1/Squeeze_grad/ShapeShapemax_pooling1d_1/MaxPool*
T0*
out_type0*
_output_shapes
:
�
.gradients/max_pooling1d_1/Squeeze_grad/ReshapeReshape.gradients/Flatten/flatten/Reshape_grad/Reshape,gradients/max_pooling1d_1/Squeeze_grad/Shape*
T0*
Tshape0*0
_output_shapes
:���������� 
�
2gradients/max_pooling1d_1/MaxPool_grad/MaxPoolGradMaxPoolGradmax_pooling1d_1/ExpandDimsmax_pooling1d_1/MaxPool.gradients/max_pooling1d_1/Squeeze_grad/Reshape*0
_output_shapes
:���������� *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID

/gradients/max_pooling1d_1/ExpandDims_grad/ShapeShapelayer_conv2/Relu*
T0*
out_type0*
_output_shapes
:
�
1gradients/max_pooling1d_1/ExpandDims_grad/ReshapeReshape2gradients/max_pooling1d_1/MaxPool_grad/MaxPoolGrad/gradients/max_pooling1d_1/ExpandDims_grad/Shape*,
_output_shapes
:���������� *
T0*
Tshape0
�
(gradients/layer_conv2/Relu_grad/ReluGradReluGrad1gradients/max_pooling1d_1/ExpandDims_grad/Reshapelayer_conv2/Relu*,
_output_shapes
:���������� *
T0
�
.gradients/layer_conv2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
�
3gradients/layer_conv2/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv2/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv2/Relu_grad/ReluGrad
�
;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv2/Relu_grad/ReluGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*,
_output_shapes
:���������� *
T0*;
_class1
/-loc:@gradients/layer_conv2/Relu_grad/ReluGrad
�
=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv2/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/layer_conv2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
/gradients/layer_conv2/conv1d/Squeeze_grad/ShapeShapelayer_conv2/conv1d/Conv2D*
_output_shapes
:*
T0*
out_type0
�
1gradients/layer_conv2/conv1d/Squeeze_grad/ReshapeReshape;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency/gradients/layer_conv2/conv1d/Squeeze_grad/Shape*0
_output_shapes
:���������� *
T0*
Tshape0
�
/gradients/layer_conv2/conv1d/Conv2D_grad/ShapeNShapeNlayer_conv2/conv1d/ExpandDimslayer_conv2/conv1d/ExpandDims_1* 
_output_shapes
::*
T0*
out_type0*
N
�
<gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput/gradients/layer_conv2/conv1d/Conv2D_grad/ShapeNlayer_conv2/conv1d/ExpandDims_11gradients/layer_conv2/conv1d/Squeeze_grad/Reshape*0
_output_shapes
:���������� *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
�
=gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterlayer_conv2/conv1d/ExpandDims1gradients/layer_conv2/conv1d/Conv2D_grad/ShapeN:11gradients/layer_conv2/conv1d/Squeeze_grad/Reshape*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:  
�
9gradients/layer_conv2/conv1d/Conv2D_grad/tuple/group_depsNoOp>^gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilter=^gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInput
�
Agradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependencyIdentity<gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInput:^gradients/layer_conv2/conv1d/Conv2D_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:���������� 
�
Cgradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependency_1Identity=gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilter:^gradients/layer_conv2/conv1d/Conv2D_grad/tuple/group_deps*&
_output_shapes
:  *
T0*P
_classF
DBloc:@gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilter
�
2gradients/layer_conv2/conv1d/ExpandDims_grad/ShapeShapemax_pooling1d/Squeeze*
T0*
out_type0*
_output_shapes
:
�
4gradients/layer_conv2/conv1d/ExpandDims_grad/ReshapeReshapeAgradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependency2gradients/layer_conv2/conv1d/ExpandDims_grad/Shape*
T0*
Tshape0*,
_output_shapes
:���������� 
�
4gradients/layer_conv2/conv1d/ExpandDims_1_grad/ShapeConst*!
valueB"           *
dtype0*
_output_shapes
:
�
6gradients/layer_conv2/conv1d/ExpandDims_1_grad/ReshapeReshapeCgradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependency_14gradients/layer_conv2/conv1d/ExpandDims_1_grad/Shape*
Tshape0*"
_output_shapes
:  *
T0

*gradients/max_pooling1d/Squeeze_grad/ShapeShapemax_pooling1d/MaxPool*
T0*
out_type0*
_output_shapes
:
�
,gradients/max_pooling1d/Squeeze_grad/ReshapeReshape4gradients/layer_conv2/conv1d/ExpandDims_grad/Reshape*gradients/max_pooling1d/Squeeze_grad/Shape*
T0*
Tshape0*0
_output_shapes
:���������� 
�
0gradients/max_pooling1d/MaxPool_grad/MaxPoolGradMaxPoolGradmax_pooling1d/ExpandDimsmax_pooling1d/MaxPool,gradients/max_pooling1d/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*0
_output_shapes
:���������� 
}
-gradients/max_pooling1d/ExpandDims_grad/ShapeShapelayer_conv1/Relu*
_output_shapes
:*
T0*
out_type0
�
/gradients/max_pooling1d/ExpandDims_grad/ReshapeReshape0gradients/max_pooling1d/MaxPool_grad/MaxPoolGrad-gradients/max_pooling1d/ExpandDims_grad/Shape*
T0*
Tshape0*,
_output_shapes
:���������� 
�
(gradients/layer_conv1/Relu_grad/ReluGradReluGrad/gradients/max_pooling1d/ExpandDims_grad/Reshapelayer_conv1/Relu*
T0*,
_output_shapes
:���������� 
�
.gradients/layer_conv1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
�
3gradients/layer_conv1/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv1/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv1/Relu_grad/ReluGrad
�
;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv1/Relu_grad/ReluGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*,
_output_shapes
:���������� *
T0*;
_class1
/-loc:@gradients/layer_conv1/Relu_grad/ReluGrad
�
=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv1/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/layer_conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
/gradients/layer_conv1/conv1d/Squeeze_grad/ShapeShapelayer_conv1/conv1d/Conv2D*
T0*
out_type0*
_output_shapes
:
�
1gradients/layer_conv1/conv1d/Squeeze_grad/ReshapeReshape;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency/gradients/layer_conv1/conv1d/Squeeze_grad/Shape*
T0*
Tshape0*0
_output_shapes
:���������� 
�
/gradients/layer_conv1/conv1d/Conv2D_grad/ShapeNShapeNlayer_conv1/conv1d/ExpandDimslayer_conv1/conv1d/ExpandDims_1* 
_output_shapes
::*
T0*
out_type0*
N
�
<gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput/gradients/layer_conv1/conv1d/Conv2D_grad/ShapeNlayer_conv1/conv1d/ExpandDims_11gradients/layer_conv1/conv1d/Squeeze_grad/Reshape*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:����������
�
=gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterlayer_conv1/conv1d/ExpandDims1gradients/layer_conv1/conv1d/Conv2D_grad/ShapeN:11gradients/layer_conv1/conv1d/Squeeze_grad/Reshape*&
_output_shapes
: *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
9gradients/layer_conv1/conv1d/Conv2D_grad/tuple/group_depsNoOp>^gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilter=^gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInput
�
Agradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependencyIdentity<gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInput:^gradients/layer_conv1/conv1d/Conv2D_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:����������
�
Cgradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependency_1Identity=gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilter:^gradients/layer_conv1/conv1d/Conv2D_grad/tuple/group_deps*
T0*P
_classF
DBloc:@gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
y
2gradients/layer_conv1/conv1d/ExpandDims_grad/ShapeShapeReshape*
T0*
out_type0*
_output_shapes
:
�
4gradients/layer_conv1/conv1d/ExpandDims_grad/ReshapeReshapeAgradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependency2gradients/layer_conv1/conv1d/ExpandDims_grad/Shape*,
_output_shapes
:����������*
T0*
Tshape0
�
4gradients/layer_conv1/conv1d/ExpandDims_1_grad/ShapeConst*!
valueB"          *
dtype0*
_output_shapes
:
�
6gradients/layer_conv1/conv1d/ExpandDims_1_grad/ReshapeReshapeCgradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependency_14gradients/layer_conv1/conv1d/ExpandDims_1_grad/Shape*
T0*
Tshape0*"
_output_shapes
: 

gradients/Reshape_grad/ShapeShape#batch_normalization/batchnorm/add_1*
_output_shapes
:*
T0*
out_type0
�
gradients/Reshape_grad/ReshapeReshape4gradients/layer_conv1/conv1d/ExpandDims_grad/Reshapegradients/Reshape_grad/Shape*(
_output_shapes
:����������*
T0*
Tshape0
�
8gradients/batch_normalization/batchnorm/add_1_grad/ShapeShape#batch_normalization/batchnorm/mul_1*
T0*
out_type0*
_output_shapes
:
�
:gradients/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:�*
dtype0*
_output_shapes
:
�
Hgradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization/batchnorm/add_1_grad/Shape:gradients/batch_normalization/batchnorm/add_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
6gradients/batch_normalization/batchnorm/add_1_grad/SumSumgradients/Reshape_grad/ReshapeHgradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
:gradients/batch_normalization/batchnorm/add_1_grad/ReshapeReshape6gradients/batch_normalization/batchnorm/add_1_grad/Sum8gradients/batch_normalization/batchnorm/add_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
8gradients/batch_normalization/batchnorm/add_1_grad/Sum_1Sumgradients/Reshape_grad/ReshapeJgradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1Reshape8gradients/batch_normalization/batchnorm/add_1_grad/Sum_1:gradients/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:�
�
Cgradients/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOp;^gradients/batch_normalization/batchnorm/add_1_grad/Reshape=^gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1
�
Kgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentity:gradients/batch_normalization/batchnorm/add_1_grad/ReshapeD^gradients/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/batch_normalization/batchnorm/add_1_grad/Reshape*(
_output_shapes
:����������
�
Mgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1Identity<gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1D^gradients/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
_output_shapes	
:�*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1
|
8gradients/batch_normalization/batchnorm/mul_1_grad/ShapeShapeCast*
out_type0*
_output_shapes
:*
T0
�
:gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
valueB:�*
dtype0*
_output_shapes
:
�
Hgradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization/batchnorm/mul_1_grad/Shape:gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization/batchnorm/mul_1_grad/MulMulKgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency!batch_normalization/batchnorm/mul*
T0*(
_output_shapes
:����������
�
6gradients/batch_normalization/batchnorm/mul_1_grad/SumSum6gradients/batch_normalization/batchnorm/mul_1_grad/MulHgradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization/batchnorm/mul_1_grad/ReshapeReshape6gradients/batch_normalization/batchnorm/mul_1_grad/Sum8gradients/batch_normalization/batchnorm/mul_1_grad/Shape*(
_output_shapes
:����������*
T0*
Tshape0
�
8gradients/batch_normalization/batchnorm/mul_1_grad/Mul_1MulCastKgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:����������
�
8gradients/batch_normalization/batchnorm/mul_1_grad/Sum_1Sum8gradients/batch_normalization/batchnorm/mul_1_grad/Mul_1Jgradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
<gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1Reshape8gradients/batch_normalization/batchnorm/mul_1_grad/Sum_1:gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1*
_output_shapes	
:�*
T0*
Tshape0
�
Cgradients/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOp;^gradients/batch_normalization/batchnorm/mul_1_grad/Reshape=^gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
Kgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentity:gradients/batch_normalization/batchnorm/mul_1_grad/ReshapeD^gradients/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*M
_classC
A?loc:@gradients/batch_normalization/batchnorm/mul_1_grad/Reshape*(
_output_shapes
:����������*
T0
�
Mgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1Identity<gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1D^gradients/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
_output_shapes	
:�*
T0
�
4gradients/batch_normalization/batchnorm/sub_grad/NegNegMgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:�
�
Agradients/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpN^gradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_15^gradients/batch_normalization/batchnorm/sub_grad/Neg
�
Igradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityMgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1B^gradients/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1*
_output_shapes	
:�
�
Kgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1Identity4gradients/batch_normalization/batchnorm/sub_grad/NegB^gradients/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/batch_normalization/batchnorm/sub_grad/Neg*
_output_shapes	
:�
�
6gradients/batch_normalization/batchnorm/mul_2_grad/MulMulKgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1!batch_normalization/batchnorm/mul*
T0*
_output_shapes	
:�
�
8gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1MulKgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1$batch_normalization/moving_mean/read*
_output_shapes	
:�*
T0
�
Cgradients/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOp7^gradients/batch_normalization/batchnorm/mul_2_grad/Mul9^gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1
�
Kgradients/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentity6gradients/batch_normalization/batchnorm/mul_2_grad/MulD^gradients/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/batch_normalization/batchnorm/mul_2_grad/Mul*
_output_shapes	
:�
�
Mgradients/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1Identity8gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1D^gradients/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1*
_output_shapes	
:�
�
gradients/AddNAddNMgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1Mgradients/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
N*
_output_shapes	
:�*
T0
�
4gradients/batch_normalization/batchnorm/mul_grad/MulMulgradients/AddNbatch_normalization/gamma/read*
T0*
_output_shapes	
:�
�
6gradients/batch_normalization/batchnorm/mul_grad/Mul_1Mulgradients/AddN#batch_normalization/batchnorm/Rsqrt*
T0*
_output_shapes	
:�
�
Agradients/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOp5^gradients/batch_normalization/batchnorm/mul_grad/Mul7^gradients/batch_normalization/batchnorm/mul_grad/Mul_1
�
Igradients/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentity4gradients/batch_normalization/batchnorm/mul_grad/MulB^gradients/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/batch_normalization/batchnorm/mul_grad/Mul*
_output_shapes	
:�
�
Kgradients/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1Identity6gradients/batch_normalization/batchnorm/mul_grad/Mul_1B^gradients/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/batch_normalization/batchnorm/mul_grad/Mul_1*
_output_shapes	
:�
�
beta1_power/initial_valueConst*+
_class!
loc:@batch_normalization/beta*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
beta1_power
VariableV2*
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape: *
dtype0*
_output_shapes
: 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
w
beta1_power/readIdentitybeta1_power*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: *
T0
�
beta2_power/initial_valueConst*+
_class!
loc:@batch_normalization/beta*
valueB
 *w�?*
dtype0*
_output_shapes
: 
�
beta2_power
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *+
_class!
loc:@batch_normalization/beta*
	container 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
w
beta2_power/readIdentitybeta2_power*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: *
T0
�
@batch_normalization/gamma/Adam/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@batch_normalization/gamma*
valueB:�*
dtype0*
_output_shapes
:
�
6batch_normalization/gamma/Adam/Initializer/zeros/ConstConst*,
_class"
 loc:@batch_normalization/gamma*
valueB
 *    *
dtype0*
_output_shapes
: 
�
0batch_normalization/gamma/Adam/Initializer/zerosFill@batch_normalization/gamma/Adam/Initializer/zeros/shape_as_tensor6batch_normalization/gamma/Adam/Initializer/zeros/Const*
T0*,
_class"
 loc:@batch_normalization/gamma*

index_type0*
_output_shapes	
:�
�
batch_normalization/gamma/Adam
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *,
_class"
 loc:@batch_normalization/gamma*
	container 
�
%batch_normalization/gamma/Adam/AssignAssignbatch_normalization/gamma/Adam0batch_normalization/gamma/Adam/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes	
:�
�
#batch_normalization/gamma/Adam/readIdentitybatch_normalization/gamma/Adam*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes	
:�
�
Bbatch_normalization/gamma/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@batch_normalization/gamma*
valueB:�*
dtype0*
_output_shapes
:
�
8batch_normalization/gamma/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *,
_class"
 loc:@batch_normalization/gamma*
valueB
 *    *
dtype0
�
2batch_normalization/gamma/Adam_1/Initializer/zerosFillBbatch_normalization/gamma/Adam_1/Initializer/zeros/shape_as_tensor8batch_normalization/gamma/Adam_1/Initializer/zeros/Const*
T0*,
_class"
 loc:@batch_normalization/gamma*

index_type0*
_output_shapes	
:�
�
 batch_normalization/gamma/Adam_1
VariableV2*
shared_name *,
_class"
 loc:@batch_normalization/gamma*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
'batch_normalization/gamma/Adam_1/AssignAssign batch_normalization/gamma/Adam_12batch_normalization/gamma/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma
�
%batch_normalization/gamma/Adam_1/readIdentity batch_normalization/gamma/Adam_1*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes	
:�*
T0
�
?batch_normalization/beta/Adam/Initializer/zeros/shape_as_tensorConst*+
_class!
loc:@batch_normalization/beta*
valueB:�*
dtype0*
_output_shapes
:
�
5batch_normalization/beta/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *+
_class!
loc:@batch_normalization/beta*
valueB
 *    *
dtype0
�
/batch_normalization/beta/Adam/Initializer/zerosFill?batch_normalization/beta/Adam/Initializer/zeros/shape_as_tensor5batch_normalization/beta/Adam/Initializer/zeros/Const*
T0*+
_class!
loc:@batch_normalization/beta*

index_type0*
_output_shapes	
:�
�
batch_normalization/beta/Adam
VariableV2*
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
$batch_normalization/beta/Adam/AssignAssignbatch_normalization/beta/Adam/batch_normalization/beta/Adam/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes	
:�
�
"batch_normalization/beta/Adam/readIdentitybatch_normalization/beta/Adam*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes	
:�
�
Abatch_normalization/beta/Adam_1/Initializer/zeros/shape_as_tensorConst*+
_class!
loc:@batch_normalization/beta*
valueB:�*
dtype0*
_output_shapes
:
�
7batch_normalization/beta/Adam_1/Initializer/zeros/ConstConst*+
_class!
loc:@batch_normalization/beta*
valueB
 *    *
dtype0*
_output_shapes
: 
�
1batch_normalization/beta/Adam_1/Initializer/zerosFillAbatch_normalization/beta/Adam_1/Initializer/zeros/shape_as_tensor7batch_normalization/beta/Adam_1/Initializer/zeros/Const*+
_class!
loc:@batch_normalization/beta*

index_type0*
_output_shapes	
:�*
T0
�
batch_normalization/beta/Adam_1
VariableV2*+
_class!
loc:@batch_normalization/beta*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
&batch_normalization/beta/Adam_1/AssignAssignbatch_normalization/beta/Adam_11batch_normalization/beta/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
�
$batch_normalization/beta/Adam_1/readIdentitybatch_normalization/beta/Adam_1*
_output_shapes	
:�*
T0*+
_class!
loc:@batch_normalization/beta
�
)layer_conv1/kernel/Adam/Initializer/zerosConst*%
_class
loc:@layer_conv1/kernel*!
valueB *    *
dtype0*"
_output_shapes
: 
�
layer_conv1/kernel/Adam
VariableV2*
shape: *
dtype0*"
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel*
	container 
�
layer_conv1/kernel/Adam/AssignAssignlayer_conv1/kernel/Adam)layer_conv1/kernel/Adam/Initializer/zeros*
validate_shape(*"
_output_shapes
: *
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel
�
layer_conv1/kernel/Adam/readIdentitylayer_conv1/kernel/Adam*"
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel
�
+layer_conv1/kernel/Adam_1/Initializer/zerosConst*%
_class
loc:@layer_conv1/kernel*!
valueB *    *
dtype0*"
_output_shapes
: 
�
layer_conv1/kernel/Adam_1
VariableV2*
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: *
dtype0*"
_output_shapes
: 
�
 layer_conv1/kernel/Adam_1/AssignAssignlayer_conv1/kernel/Adam_1+layer_conv1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*"
_output_shapes
: 
�
layer_conv1/kernel/Adam_1/readIdentitylayer_conv1/kernel/Adam_1*"
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel
�
'layer_conv1/bias/Adam/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv1/bias/Adam
VariableV2*#
_class
loc:@layer_conv1/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
layer_conv1/bias/Adam/AssignAssignlayer_conv1/bias/Adam'layer_conv1/bias/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
�
layer_conv1/bias/Adam/readIdentitylayer_conv1/bias/Adam*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 
�
)layer_conv1/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
valueB *    
�
layer_conv1/bias/Adam_1
VariableV2*#
_class
loc:@layer_conv1/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
layer_conv1/bias/Adam_1/AssignAssignlayer_conv1/bias/Adam_1)layer_conv1/bias/Adam_1/Initializer/zeros*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
layer_conv1/bias/Adam_1/readIdentitylayer_conv1/bias/Adam_1*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 
�
9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@layer_conv2/kernel*!
valueB"           *
dtype0*
_output_shapes
:
�
/layer_conv2/kernel/Adam/Initializer/zeros/ConstConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)layer_conv2/kernel/Adam/Initializer/zerosFill9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensor/layer_conv2/kernel/Adam/Initializer/zeros/Const*%
_class
loc:@layer_conv2/kernel*

index_type0*"
_output_shapes
:  *
T0
�
layer_conv2/kernel/Adam
VariableV2*
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  *
dtype0*"
_output_shapes
:  
�
layer_conv2/kernel/Adam/AssignAssignlayer_conv2/kernel/Adam)layer_conv2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*"
_output_shapes
:  
�
layer_conv2/kernel/Adam/readIdentitylayer_conv2/kernel/Adam*%
_class
loc:@layer_conv2/kernel*"
_output_shapes
:  *
T0
�
;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@layer_conv2/kernel*!
valueB"           *
dtype0*
_output_shapes
:
�
1layer_conv2/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0
�
+layer_conv2/kernel/Adam_1/Initializer/zerosFill;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensor1layer_conv2/kernel/Adam_1/Initializer/zeros/Const*"
_output_shapes
:  *
T0*%
_class
loc:@layer_conv2/kernel*

index_type0
�
layer_conv2/kernel/Adam_1
VariableV2*
	container *
shape:  *
dtype0*"
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel
�
 layer_conv2/kernel/Adam_1/AssignAssignlayer_conv2/kernel/Adam_1+layer_conv2/kernel/Adam_1/Initializer/zeros*%
_class
loc:@layer_conv2/kernel*
validate_shape(*"
_output_shapes
:  *
use_locking(*
T0
�
layer_conv2/kernel/Adam_1/readIdentitylayer_conv2/kernel/Adam_1*
T0*%
_class
loc:@layer_conv2/kernel*"
_output_shapes
:  
�
'layer_conv2/bias/Adam/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv2/bias/Adam
VariableV2*
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
layer_conv2/bias/Adam/AssignAssignlayer_conv2/bias/Adam'layer_conv2/bias/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
�
layer_conv2/bias/Adam/readIdentitylayer_conv2/bias/Adam*
T0*#
_class
loc:@layer_conv2/bias*
_output_shapes
: 
�
)layer_conv2/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv2/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: 
�
layer_conv2/bias/Adam_1/AssignAssignlayer_conv2/bias/Adam_1)layer_conv2/bias/Adam_1/Initializer/zeros*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
layer_conv2/bias/Adam_1/readIdentitylayer_conv2/bias/Adam_1*
T0*#
_class
loc:@layer_conv2/bias*
_output_shapes
: 
�
7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*#
_class
loc:@layer_fc1/kernel*
valueB"    �   
�
-layer_fc1/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel*
valueB
 *    
�
'layer_fc1/kernel/Adam/Initializer/zerosFill7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensor-layer_fc1/kernel/Adam/Initializer/zeros/Const*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:
�@�
�
layer_fc1/kernel/Adam
VariableV2* 
_output_shapes
:
�@�*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container *
shape:
�@�*
dtype0
�
layer_fc1/kernel/Adam/AssignAssignlayer_fc1/kernel/Adam'layer_fc1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
�@�
�
layer_fc1/kernel/Adam/readIdentitylayer_fc1/kernel/Adam*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
�@�
�
9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_fc1/kernel*
valueB"    �   *
dtype0*
_output_shapes
:
�
/layer_fc1/kernel/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)layer_fc1/kernel/Adam_1/Initializer/zerosFill9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/layer_fc1/kernel/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:
�@�
�
layer_fc1/kernel/Adam_1
VariableV2*#
_class
loc:@layer_fc1/kernel*
	container *
shape:
�@�*
dtype0* 
_output_shapes
:
�@�*
shared_name 
�
layer_fc1/kernel/Adam_1/AssignAssignlayer_fc1/kernel/Adam_1)layer_fc1/kernel/Adam_1/Initializer/zeros*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
�@�*
use_locking(
�
layer_fc1/kernel/Adam_1/readIdentitylayer_fc1/kernel/Adam_1*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
�@�
�
%layer_fc1/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:�*!
_class
loc:@layer_fc1/bias*
valueB�*    
�
layer_fc1/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:�
�
layer_fc1/bias/Adam/AssignAssignlayer_fc1/bias/Adam%layer_fc1/bias/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:�
�
layer_fc1/bias/Adam/readIdentitylayer_fc1/bias/Adam*
T0*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:�
�
'layer_fc1/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_fc1/bias/Adam_1
VariableV2*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
layer_fc1/bias/Adam_1/AssignAssignlayer_fc1/bias/Adam_1'layer_fc1/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias
�
layer_fc1/bias/Adam_1/readIdentitylayer_fc1/bias/Adam_1*
T0*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:�
�
Dlayer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
:layer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/ConstConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
4layer_combine_fc_cnn1d/kernel/Adam/Initializer/zerosFillDlayer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/shape_as_tensor:layer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/Const*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*

index_type0* 
_output_shapes
:
��
�
"layer_combine_fc_cnn1d/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
��*
shared_name *0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
	container *
shape:
��
�
)layer_combine_fc_cnn1d/kernel/Adam/AssignAssign"layer_combine_fc_cnn1d/kernel/Adam4layer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros*
use_locking(*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
validate_shape(* 
_output_shapes
:
��
�
'layer_combine_fc_cnn1d/kernel/Adam/readIdentity"layer_combine_fc_cnn1d/kernel/Adam*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel* 
_output_shapes
:
��
�
Flayer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
<layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/ConstConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
6layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zerosFillFlayer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/shape_as_tensor<layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/Const*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*

index_type0* 
_output_shapes
:
��*
T0
�
$layer_combine_fc_cnn1d/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
��*
shared_name *0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
	container *
shape:
��
�
+layer_combine_fc_cnn1d/kernel/Adam_1/AssignAssign$layer_combine_fc_cnn1d/kernel/Adam_16layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
validate_shape(* 
_output_shapes
:
��
�
)layer_combine_fc_cnn1d/kernel/Adam_1/readIdentity$layer_combine_fc_cnn1d/kernel/Adam_1*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel* 
_output_shapes
:
��
�
2layer_combine_fc_cnn1d/bias/Adam/Initializer/zerosConst*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
 layer_combine_fc_cnn1d/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
	container *
shape:�
�
'layer_combine_fc_cnn1d/bias/Adam/AssignAssign layer_combine_fc_cnn1d/bias/Adam2layer_combine_fc_cnn1d/bias/Adam/Initializer/zeros*
_output_shapes	
:�*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(
�
%layer_combine_fc_cnn1d/bias/Adam/readIdentity layer_combine_fc_cnn1d/bias/Adam*
_output_shapes	
:�*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias
�
4layer_combine_fc_cnn1d/bias/Adam_1/Initializer/zerosConst*
_output_shapes	
:�*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
valueB�*    *
dtype0
�
"layer_combine_fc_cnn1d/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
	container *
shape:�
�
)layer_combine_fc_cnn1d/bias/Adam_1/AssignAssign"layer_combine_fc_cnn1d/bias/Adam_14layer_combine_fc_cnn1d/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(*
_output_shapes	
:�
�
'layer_combine_fc_cnn1d/bias/Adam_1/readIdentity"layer_combine_fc_cnn1d/bias/Adam_1*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
_output_shapes	
:�
�
@layer_combine_fc_x/kernel/Adam/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
6layer_combine_fc_x/kernel/Adam/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
0layer_combine_fc_x/kernel/Adam/Initializer/zerosFill@layer_combine_fc_x/kernel/Adam/Initializer/zeros/shape_as_tensor6layer_combine_fc_x/kernel/Adam/Initializer/zeros/Const* 
_output_shapes
:
��*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*

index_type0
�
layer_combine_fc_x/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
��*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel*
	container *
shape:
��
�
%layer_combine_fc_x/kernel/Adam/AssignAssignlayer_combine_fc_x/kernel/Adam0layer_combine_fc_x/kernel/Adam/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
��
�
#layer_combine_fc_x/kernel/Adam/readIdentitylayer_combine_fc_x/kernel/Adam*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��*
T0
�
Blayer_combine_fc_x/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
8layer_combine_fc_x/kernel/Adam_1/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
2layer_combine_fc_x/kernel/Adam_1/Initializer/zerosFillBlayer_combine_fc_x/kernel/Adam_1/Initializer/zeros/shape_as_tensor8layer_combine_fc_x/kernel/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
��*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*

index_type0
�
 layer_combine_fc_x/kernel/Adam_1
VariableV2*,
_class"
 loc:@layer_combine_fc_x/kernel*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��*
shared_name 
�
'layer_combine_fc_x/kernel/Adam_1/AssignAssign layer_combine_fc_x/kernel/Adam_12layer_combine_fc_x/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
��
�
%layer_combine_fc_x/kernel/Adam_1/readIdentity layer_combine_fc_x/kernel/Adam_1* 
_output_shapes
:
��*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel
�
.layer_combine_fc_x/bias/Adam/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_combine_fc_x/bias/Adam
VariableV2*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name **
_class 
loc:@layer_combine_fc_x/bias
�
#layer_combine_fc_x/bias/Adam/AssignAssignlayer_combine_fc_x/bias/Adam.layer_combine_fc_x/bias/Adam/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:�
�
!layer_combine_fc_x/bias/Adam/readIdentitylayer_combine_fc_x/bias/Adam*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes	
:�
�
0layer_combine_fc_x/bias/Adam_1/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_combine_fc_x/bias/Adam_1
VariableV2*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name **
_class 
loc:@layer_combine_fc_x/bias
�
%layer_combine_fc_x/bias/Adam_1/AssignAssignlayer_combine_fc_x/bias/Adam_10layer_combine_fc_x/bias/Adam_1/Initializer/zeros*
_output_shapes	
:�*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(
�
#layer_combine_fc_x/bias/Adam_1/readIdentitylayer_combine_fc_x/bias/Adam_1*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes	
:�
�
@layer_combine_fc_y/kernel/Adam/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"�      *
dtype0*
_output_shapes
:
�
6layer_combine_fc_y/kernel/Adam/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
0layer_combine_fc_y/kernel/Adam/Initializer/zerosFill@layer_combine_fc_y/kernel/Adam/Initializer/zeros/shape_as_tensor6layer_combine_fc_y/kernel/Adam/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*

index_type0*
_output_shapes
:	�
�
layer_combine_fc_y/kernel/Adam
VariableV2*
	container *
shape:	�*
dtype0*
_output_shapes
:	�*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel
�
%layer_combine_fc_y/kernel/Adam/AssignAssignlayer_combine_fc_y/kernel/Adam0layer_combine_fc_y/kernel/Adam/Initializer/zeros*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0
�
#layer_combine_fc_y/kernel/Adam/readIdentitylayer_combine_fc_y/kernel/Adam*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	�*
T0
�
Blayer_combine_fc_y/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"�      *
dtype0*
_output_shapes
:
�
8layer_combine_fc_y/kernel/Adam_1/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
2layer_combine_fc_y/kernel/Adam_1/Initializer/zerosFillBlayer_combine_fc_y/kernel/Adam_1/Initializer/zeros/shape_as_tensor8layer_combine_fc_y/kernel/Adam_1/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*

index_type0*
_output_shapes
:	�
�
 layer_combine_fc_y/kernel/Adam_1
VariableV2*,
_class"
 loc:@layer_combine_fc_y/kernel*
	container *
shape:	�*
dtype0*
_output_shapes
:	�*
shared_name 
�
'layer_combine_fc_y/kernel/Adam_1/AssignAssign layer_combine_fc_y/kernel/Adam_12layer_combine_fc_y/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	�
�
%layer_combine_fc_y/kernel/Adam_1/readIdentity layer_combine_fc_y/kernel/Adam_1*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	�
�
.layer_combine_fc_y/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    
�
layer_combine_fc_y/bias/Adam
VariableV2*
shared_name **
_class 
loc:@layer_combine_fc_y/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
#layer_combine_fc_y/bias/Adam/AssignAssignlayer_combine_fc_y/bias/Adam.layer_combine_fc_y/bias/Adam/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
�
!layer_combine_fc_y/bias/Adam/readIdentitylayer_combine_fc_y/bias/Adam*
T0**
_class 
loc:@layer_combine_fc_y/bias*
_output_shapes
:
�
0layer_combine_fc_y/bias/Adam_1/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    *
dtype0*
_output_shapes
:
�
layer_combine_fc_y/bias/Adam_1
VariableV2*
_output_shapes
:*
shared_name **
_class 
loc:@layer_combine_fc_y/bias*
	container *
shape:*
dtype0
�
%layer_combine_fc_y/bias/Adam_1/AssignAssignlayer_combine_fc_y/bias/Adam_10layer_combine_fc_y/bias/Adam_1/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
�
#layer_combine_fc_y/bias/Adam_1/readIdentitylayer_combine_fc_y/bias/Adam_1*
T0**
_class 
loc:@layer_combine_fc_y/bias*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
/Adam/update_batch_normalization/gamma/ApplyAdam	ApplyAdambatch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonKgradients/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes	
:�*
use_locking( *
T0*,
_class"
 loc:@batch_normalization/gamma
�
.Adam/update_batch_normalization/beta/ApplyAdam	ApplyAdambatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonIgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*
T0*+
_class!
loc:@batch_normalization/beta*
use_nesterov( *
_output_shapes	
:�*
use_locking( 
�
(Adam/update_layer_conv1/kernel/ApplyAdam	ApplyAdamlayer_conv1/kernellayer_conv1/kernel/Adamlayer_conv1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/layer_conv1/conv1d/ExpandDims_1_grad/Reshape*
use_locking( *
T0*%
_class
loc:@layer_conv1/kernel*
use_nesterov( *"
_output_shapes
: 
�
&Adam/update_layer_conv1/bias/ApplyAdam	ApplyAdamlayer_conv1/biaslayer_conv1/bias/Adamlayer_conv1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
: *
use_locking( *
T0*#
_class
loc:@layer_conv1/bias
�
(Adam/update_layer_conv2/kernel/ApplyAdam	ApplyAdamlayer_conv2/kernellayer_conv2/kernel/Adamlayer_conv2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/layer_conv2/conv1d/ExpandDims_1_grad/Reshape*
use_locking( *
T0*%
_class
loc:@layer_conv2/kernel*
use_nesterov( *"
_output_shapes
:  
�
&Adam/update_layer_conv2/bias/ApplyAdam	ApplyAdamlayer_conv2/biaslayer_conv2/bias/Adamlayer_conv2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_conv2/bias*
use_nesterov( *
_output_shapes
: 
�
&Adam/update_layer_fc1/kernel/ApplyAdam	ApplyAdamlayer_fc1/kernellayer_fc1/kernel/Adamlayer_fc1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_fc1/kernel*
use_nesterov( * 
_output_shapes
:
�@�
�
$Adam/update_layer_fc1/bias/ApplyAdam	ApplyAdamlayer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@layer_fc1/bias*
use_nesterov( *
_output_shapes	
:�
�
3Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_cnn1d/kernel"layer_combine_fc_cnn1d/kernel/Adam$layer_combine_fc_cnn1d/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonGgradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
use_nesterov( * 
_output_shapes
:
��
�
1Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam	ApplyAdamlayer_combine_fc_cnn1d/bias layer_combine_fc_cnn1d/bias/Adam"layer_combine_fc_cnn1d/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonHgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
use_nesterov( *
_output_shapes	
:�
�
/Adam/update_layer_combine_fc_x/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_x/kernellayer_combine_fc_x/kernel/Adam layer_combine_fc_x/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonCgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency_1*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
use_nesterov( * 
_output_shapes
:
��*
use_locking( 
�
-Adam/update_layer_combine_fc_x/bias/ApplyAdam	ApplyAdamlayer_combine_fc_x/biaslayer_combine_fc_x/bias/Adamlayer_combine_fc_x/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0**
_class 
loc:@layer_combine_fc_x/bias*
use_nesterov( *
_output_shapes	
:�
�
/Adam/update_layer_combine_fc_y/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_y/kernellayer_combine_fc_y/kernel/Adam layer_combine_fc_y/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonCgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
use_nesterov( *
_output_shapes
:	�
�
-Adam/update_layer_combine_fc_y/bias/ApplyAdam	ApplyAdamlayer_combine_fc_y/biaslayer_combine_fc_y/bias/Adamlayer_combine_fc_y/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency_1*
T0**
_class 
loc:@layer_combine_fc_y/bias*
use_nesterov( *
_output_shapes
:*
use_locking( 
�
Adam/mulMulbeta1_power/read
Adam/beta1/^Adam/update_batch_normalization/beta/ApplyAdam0^Adam/update_batch_normalization/gamma/ApplyAdam2^Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam4^Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam*
_output_shapes
: *
T0*+
_class!
loc:@batch_normalization/beta
�
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2/^Adam/update_batch_normalization/beta/ApplyAdam0^Adam/update_batch_normalization/gamma/ApplyAdam2^Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam4^Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: *
T0
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking( 
�
Adam/updateNoOp^Adam/Assign^Adam/Assign_1/^Adam/update_batch_normalization/beta/ApplyAdam0^Adam/update_batch_normalization/gamma/ApplyAdam2^Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam4^Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam
z

Adam/valueConst^Adam/update*
_output_shapes
: *
_class
loc:@global_step*
value	B	 R*
dtype0	
~
Adam	AssignAddglobal_step
Adam/value*
use_locking( *
T0	*
_class
loc:@global_step*
_output_shapes
: 
W
EqualEqualArgMaxIteratorGetNext:4*#
_output_shapes
:���������*
T0	
c
ToFloatCastEqual*

SrcT0
*
Truncate( *#
_output_shapes
:���������*

DstT0
�
 accuracy/total/Initializer/zerosConst*!
_class
loc:@accuracy/total*
valueB
 *    *
dtype0*
_output_shapes
: 
�
accuracy/total
VariableV2*
shared_name *!
_class
loc:@accuracy/total*
	container *
shape: *
dtype0*
_output_shapes
: 
�
accuracy/total/AssignAssignaccuracy/total accuracy/total/Initializer/zeros*
T0*!
_class
loc:@accuracy/total*
validate_shape(*
_output_shapes
: *
use_locking(
s
accuracy/total/readIdentityaccuracy/total*!
_class
loc:@accuracy/total*
_output_shapes
: *
T0
�
 accuracy/count/Initializer/zerosConst*!
_class
loc:@accuracy/count*
valueB
 *    *
dtype0*
_output_shapes
: 
�
accuracy/count
VariableV2*!
_class
loc:@accuracy/count*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
accuracy/count/AssignAssignaccuracy/count accuracy/count/Initializer/zeros*!
_class
loc:@accuracy/count*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
s
accuracy/count/readIdentityaccuracy/count*
T0*!
_class
loc:@accuracy/count*
_output_shapes
: 
O
accuracy/SizeSizeToFloat*
T0*
out_type0*
_output_shapes
: 
g
accuracy/ToFloatCastaccuracy/Size*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
X
accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
j
accuracy/SumSumToFloataccuracy/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
use_locking( *
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat^ToFloat*
_output_shapes
: *
use_locking( *
T0*!
_class
loc:@accuracy/count
f
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read*
_output_shapes
: *
T0
X
accuracy/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
accuracy/GreaterGreateraccuracy/count/readaccuracy/zeros_like*
T0*
_output_shapes
: 
r
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/zeros_like*
_output_shapes
: *
T0
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
T0*
_output_shapes
: 
Z
accuracy/zeros_like_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
k
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/zeros_like_1*
T0*
_output_shapes
: 
|
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/zeros_like_1*
_output_shapes
: *
T0
Z
accuracy_1/tagsConst*
valueB B
accuracy_1*
dtype0*
_output_shapes
: 
a

accuracy_1ScalarSummaryaccuracy_1/tagsaccuracy/update_op*
T0*
_output_shapes
: 
N
	loss/tagsConst*
valueB
 Bloss*
dtype0*
_output_shapes
: 
G
lossScalarSummary	loss/tagsMean*
T0*
_output_shapes
: �#
�
�
/tf_data_structured_function_wrapper_52oRgbbAY9U
arg0
tfrecorddataset2DWrapper for passing nested structures to and from tf.data functions.�H
compression_typeConst"/device:CPU:0*
valueB B *
dtype0F
buffer_sizeConst"/device:CPU:0*
valueB		 R��*
dtype0	h
TFRecordDatasetTFRecordDatasetarg0compression_type:output:0buffer_size:output:0"/device:CPU:0"+
tfrecorddatasetTFRecordDataset:handle:0
�
�
/tf_data_structured_function_wrapper_HF2qjsseTGA
arg0)
%parsesingleexample_parsesingleexample	+
'parsesingleexample_parsesingleexample_0	+
'parsesingleexample_parsesingleexample_1	+
'parsesingleexample_parsesingleexample_2+
'parsesingleexample_parsesingleexample_3	2DWrapper for passing nested structures to and from tf.data functions.P
ParseSingleExample/ConstConst"/device:CPU:0*
valueB	 *
dtype0	R
ParseSingleExample/Const_1Const"/device:CPU:0*
dtype0	*
valueB	 R
ParseSingleExample/Const_2Const"/device:CPU:0*
valueB	 *
dtype0	R
ParseSingleExample/Const_3Const"/device:CPU:0*
valueB *
dtype0R
ParseSingleExample/Const_4Const"/device:CPU:0*
valueB	 *
dtype0	�
%ParseSingleExample/ParseSingleExampleParseSingleExamplearg0!ParseSingleExample/Const:output:0#ParseSingleExample/Const_1:output:0#ParseSingleExample/Const_2:output:0#ParseSingleExample/Const_3:output:0#ParseSingleExample/Const_4:output:0"/device:CPU:0*
sparse_keys
 *
Tdense	
2				*

num_sparse *R

dense_keysD
BlabelpacketLengthpacketPayloadpacketStatisticrecordTypes*-
dense_shapes
: :@:�::@*
sparse_types
 "]
%parsesingleexample_parsesingleexample4ParseSingleExample/ParseSingleExample:dense_values:4"_
'parsesingleexample_parsesingleexample_04ParseSingleExample/ParseSingleExample:dense_values:1"_
'parsesingleexample_parsesingleexample_14ParseSingleExample/ParseSingleExample:dense_values:2"_
'parsesingleexample_parsesingleexample_24ParseSingleExample/ParseSingleExample:dense_values:3"_
'parsesingleexample_parsesingleexample_34ParseSingleExample/ParseSingleExample:dense_values:0
�
2
_make_dataset_AsAROsJbEI0
batchdatasetv2�z
TensorSliceDataset/ConstConst"/device:CPU:0*;
value2B0 B*../../data/android_train_complete.tfrecord*
dtype0m
'TensorSliceDataset/flat_filenames/shapeConst"/device:CPU:0*
valueB:
���������*
dtype0�
!TensorSliceDataset/flat_filenamesReshape!TensorSliceDataset/Const:output:00TensorSliceDataset/flat_filenames/shape:output:0"/device:CPU:0*
Tshape0*
T0�
TensorSliceDatasetTensorSliceDataset*TensorSliceDataset/flat_filenames:output:0"/device:CPU:0*
output_shapes
: *
Toutput_types
2�
FlatMapDatasetFlatMapDatasetTensorSliceDataset:handle:0"/device:CPU:0*
output_shapes
: *8
f3R1
/tf_data_structured_function_wrapper_52oRgbbAY9U*
output_types
2*

Targuments
 �

MapDataset
MapDatasetFlatMapDataset:handle:0"/device:CPU:0*8
f3R1
/tf_data_structured_function_wrapper_HF2qjsseTGA*
output_types	
2				*
use_inter_op_parallelism(*

Targuments
 *.
output_shapes
:@:@:�:: T
ShuffleDataset/buffer_sizeConst"/device:CPU:0*
value
B	 R�*
dtype0	L
ShuffleDataset/seedConst"/device:CPU:0*
value	B	 R *
dtype0	M
ShuffleDataset/seed2Const"/device:CPU:0*
value	B	 R *
dtype0	�
ShuffleDatasetShuffleDatasetMapDataset:handle:0#ShuffleDataset/buffer_size:output:0ShuffleDataset/seed:output:0ShuffleDataset/seed2:output:0"/device:CPU:0*.
output_shapes
:@:@:�:: *
reshuffle_each_iteration(*
output_types	
2				U
RepeatDataset/countConst"/device:CPU:0*
valueB	 R
���������*
dtype0	�
RepeatDatasetRepeatDatasetShuffleDataset:handle:0RepeatDataset/count:output:0"/device:CPU:0*
output_types	
2				*.
output_shapes
:@:@:�:: R
BatchDatasetV2/batch_sizeConst"/device:CPU:0*
value	B	 R *
dtype0	V
BatchDatasetV2/drop_remainderConst"/device:CPU:0*
value	B
 Z *
dtype0
�
BatchDatasetV2BatchDatasetV2RepeatDataset:handle:0"BatchDatasetV2/batch_size:output:0&BatchDatasetV2/drop_remainder:output:0"/device:CPU:0*o
output_shapes^
\:���������@:���������@:����������:���������:���������*
output_types	
2				")
batchdatasetv2BatchDatasetV2:handle:0""

savers "
losses


Mean:0"2
global_step_read_op_cache

global_step/add:0"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"
train_op

Adam""
	iterators

OneShotIterator:0"�$
trainable_variables�#�#
�
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:08
�
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:08

layer_conv1/kernel:0layer_conv1/kernel/Assignlayer_conv1/kernel/read:02/layer_conv1/kernel/Initializer/random_uniform:08
n
layer_conv1/bias:0layer_conv1/bias/Assignlayer_conv1/bias/read:02$layer_conv1/bias/Initializer/zeros:08

layer_conv2/kernel:0layer_conv2/kernel/Assignlayer_conv2/kernel/read:02/layer_conv2/kernel/Initializer/random_uniform:08
n
layer_conv2/bias:0layer_conv2/bias/Assignlayer_conv2/bias/read:02$layer_conv2/bias/Initializer/zeros:08
w
layer_fc1/kernel:0layer_fc1/kernel/Assignlayer_fc1/kernel/read:02-layer_fc1/kernel/Initializer/random_uniform:08
f
layer_fc1/bias:0layer_fc1/bias/Assignlayer_fc1/bias/read:02"layer_fc1/bias/Initializer/zeros:08
s
word_embeddings:0word_embeddings/Assignword_embeddings/read:02,word_embeddings/Initializer/random_uniform:08
�
rnn/basic_rnn_cell/kernel:0 rnn/basic_rnn_cell/kernel/Assign rnn/basic_rnn_cell/kernel/read:026rnn/basic_rnn_cell/kernel/Initializer/random_uniform:08
�
rnn/basic_rnn_cell/bias:0rnn/basic_rnn_cell/bias/Assignrnn/basic_rnn_cell/bias/read:02+rnn/basic_rnn_cell/bias/Initializer/zeros:08
�
layer_rnn_fc_1/kernel:0layer_rnn_fc_1/kernel/Assignlayer_rnn_fc_1/kernel/read:022layer_rnn_fc_1/kernel/Initializer/random_uniform:08
z
layer_rnn_fc_1/bias:0layer_rnn_fc_1/bias/Assignlayer_rnn_fc_1/bias/read:02'layer_rnn_fc_1/bias/Initializer/zeros:08
�
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:08
�
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:08

layer_dnn_1/kernel:0layer_dnn_1/kernel/Assignlayer_dnn_1/kernel/read:02/layer_dnn_1/kernel/Initializer/random_uniform:08
n
layer_dnn_1/bias:0layer_dnn_1/bias/Assignlayer_dnn_1/bias/read:02$layer_dnn_1/bias/Initializer/zeros:08

layer_dnn_2/kernel:0layer_dnn_2/kernel/Assignlayer_dnn_2/kernel/read:02/layer_dnn_2/kernel/Initializer/random_uniform:08
n
layer_dnn_2/bias:0layer_dnn_2/bias/Assignlayer_dnn_2/bias/read:02$layer_dnn_2/bias/Initializer/zeros:08
�
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02.batch_normalization_2/gamma/Initializer/ones:08
�
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02.batch_normalization_2/beta/Initializer/zeros:08
�
layer_length_conv1/kernel:0 layer_length_conv1/kernel/Assign layer_length_conv1/kernel/read:026layer_length_conv1/kernel/Initializer/random_uniform:08
�
layer_length_conv1/bias:0layer_length_conv1/bias/Assignlayer_length_conv1/bias/read:02+layer_length_conv1/bias/Initializer/zeros:08
�
layer_length_conv2/kernel:0 layer_length_conv2/kernel/Assign layer_length_conv2/kernel/read:026layer_length_conv2/kernel/Initializer/random_uniform:08
�
layer_length_conv2/bias:0layer_length_conv2/bias/Assignlayer_length_conv2/bias/read:02+layer_length_conv2/bias/Initializer/zeros:08
�
layer_length_fc1/kernel:0layer_length_fc1/kernel/Assignlayer_length_fc1/kernel/read:024layer_length_fc1/kernel/Initializer/random_uniform:08
�
layer_length_fc1/bias:0layer_length_fc1/bias/Assignlayer_length_fc1/bias/read:02)layer_length_fc1/bias/Initializer/zeros:08
�
layer_combine_fc_cnn1d/kernel:0$layer_combine_fc_cnn1d/kernel/Assign$layer_combine_fc_cnn1d/kernel/read:02:layer_combine_fc_cnn1d/kernel/Initializer/random_uniform:08
�
layer_combine_fc_cnn1d/bias:0"layer_combine_fc_cnn1d/bias/Assign"layer_combine_fc_cnn1d/bias/read:02/layer_combine_fc_cnn1d/bias/Initializer/zeros:08
�
layer_combine_fc_x/kernel:0 layer_combine_fc_x/kernel/Assign layer_combine_fc_x/kernel/read:026layer_combine_fc_x/kernel/Initializer/random_uniform:08
�
layer_combine_fc_x/bias:0layer_combine_fc_x/bias/Assignlayer_combine_fc_x/bias/read:02+layer_combine_fc_x/bias/Initializer/zeros:08
�
layer_combine_fc_y/kernel:0 layer_combine_fc_y/kernel/Assign layer_combine_fc_y/kernel/read:026layer_combine_fc_y/kernel/Initializer/random_uniform:08
�
layer_combine_fc_y/bias:0layer_combine_fc_y/bias/Assignlayer_combine_fc_y/bias/read:02+layer_combine_fc_y/bias/Initializer/zeros:08"%
	summaries

accuracy_1:0
loss:0"�
while_context��
�
rnn/while/while_context *rnn/while/LoopCond:02rnn/while/Merge:0:rnn/while/Identity:0Brnn/while/Exit:0Brnn/while/Exit_1:0Brnn/while/Exit_2:0Brnn/while/Exit_3:0J�
rnn/Minimum:0
rnn/TensorArray:0
@rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
rnn/TensorArray_1:0
rnn/basic_rnn_cell/bias/read:0
 rnn/basic_rnn_cell/kernel/read:0
rnn/strided_slice_1:0
rnn/while/Enter:0
rnn/while/Enter_1:0
rnn/while/Enter_2:0
rnn/while/Enter_3:0
rnn/while/Exit:0
rnn/while/Exit_1:0
rnn/while/Exit_2:0
rnn/while/Exit_3:0
rnn/while/Identity:0
rnn/while/Identity_1:0
rnn/while/Identity_2:0
rnn/while/Identity_3:0
rnn/while/Less/Enter:0
rnn/while/Less:0
rnn/while/Less_1/Enter:0
rnn/while/Less_1:0
rnn/while/LogicalAnd:0
rnn/while/LoopCond:0
rnn/while/Merge:0
rnn/while/Merge:1
rnn/while/Merge_1:0
rnn/while/Merge_1:1
rnn/while/Merge_2:0
rnn/while/Merge_2:1
rnn/while/Merge_3:0
rnn/while/Merge_3:1
rnn/while/NextIteration:0
rnn/while/NextIteration_1:0
rnn/while/NextIteration_2:0
rnn/while/NextIteration_3:0
rnn/while/Switch:0
rnn/while/Switch:1
rnn/while/Switch_1:0
rnn/while/Switch_1:1
rnn/while/Switch_2:0
rnn/while/Switch_2:1
rnn/while/Switch_3:0
rnn/while/Switch_3:1
#rnn/while/TensorArrayReadV3/Enter:0
%rnn/while/TensorArrayReadV3/Enter_1:0
rnn/while/TensorArrayReadV3:0
5rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
rnn/while/add/y:0
rnn/while/add:0
rnn/while/add_1/y:0
rnn/while/add_1:0
(rnn/while/basic_rnn_cell/BiasAdd/Enter:0
"rnn/while/basic_rnn_cell/BiasAdd:0
'rnn/while/basic_rnn_cell/MatMul/Enter:0
!rnn/while/basic_rnn_cell/MatMul:0
rnn/while/basic_rnn_cell/Tanh:0
&rnn/while/basic_rnn_cell/concat/axis:0
!rnn/while/basic_rnn_cell/concat:0/
rnn/strided_slice_1:0rnn/while/Less/Enter:0i
@rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0%rnn/while/TensorArrayReadV3/Enter_1:0K
 rnn/basic_rnn_cell/kernel/read:0'rnn/while/basic_rnn_cell/MatMul/Enter:0J
rnn/TensorArray:05rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0J
rnn/basic_rnn_cell/bias/read:0(rnn/while/basic_rnn_cell/BiasAdd/Enter:0)
rnn/Minimum:0rnn/while/Less_1/Enter:0:
rnn/TensorArray_1:0#rnn/while/TensorArrayReadV3/Enter:0Rrnn/while/Enter:0Rrnn/while/Enter_1:0Rrnn/while/Enter_2:0Rrnn/while/Enter_3:0Zrnn/strided_slice_1:0"�
cond_context��
�
global_step/cond/cond_textglobal_step/cond/pred_id:0global_step/cond/switch_t:0 *�
global_step/cond/pred_id:0
global_step/cond/read/Switch:1
global_step/cond/read:0
global_step/cond/switch_t:0
global_step:08
global_step/cond/pred_id:0global_step/cond/pred_id:0/
global_step:0global_step/cond/read/Switch:1
�
global_step/cond/cond_text_1global_step/cond/pred_id:0global_step/cond/switch_f:0*�
global_step/Initializer/zeros:0
global_step/cond/Switch_1:0
global_step/cond/Switch_1:1
global_step/cond/pred_id:0
global_step/cond/switch_f:0>
global_step/Initializer/zeros:0global_step/cond/Switch_1:08
global_step/cond/pred_id:0global_step/cond/pred_id:0":
metric_variables&
$
accuracy/total:0
accuracy/count:0"�
local_variables��
d
accuracy/total:0accuracy/total/Assignaccuracy/total/read:02"accuracy/total/Initializer/zeros:0
d
accuracy/count:0accuracy/count/Assignaccuracy/count/read:02"accuracy/count/Initializer/zeros:0"�P
	variables�P�P
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
�
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:08
�
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:08
�
!batch_normalization/moving_mean:0&batch_normalization/moving_mean/Assign&batch_normalization/moving_mean/read:023batch_normalization/moving_mean/Initializer/zeros:0
�
%batch_normalization/moving_variance:0*batch_normalization/moving_variance/Assign*batch_normalization/moving_variance/read:026batch_normalization/moving_variance/Initializer/ones:0

layer_conv1/kernel:0layer_conv1/kernel/Assignlayer_conv1/kernel/read:02/layer_conv1/kernel/Initializer/random_uniform:08
n
layer_conv1/bias:0layer_conv1/bias/Assignlayer_conv1/bias/read:02$layer_conv1/bias/Initializer/zeros:08

layer_conv2/kernel:0layer_conv2/kernel/Assignlayer_conv2/kernel/read:02/layer_conv2/kernel/Initializer/random_uniform:08
n
layer_conv2/bias:0layer_conv2/bias/Assignlayer_conv2/bias/read:02$layer_conv2/bias/Initializer/zeros:08
w
layer_fc1/kernel:0layer_fc1/kernel/Assignlayer_fc1/kernel/read:02-layer_fc1/kernel/Initializer/random_uniform:08
f
layer_fc1/bias:0layer_fc1/bias/Assignlayer_fc1/bias/read:02"layer_fc1/bias/Initializer/zeros:08
s
word_embeddings:0word_embeddings/Assignword_embeddings/read:02,word_embeddings/Initializer/random_uniform:08
�
rnn/basic_rnn_cell/kernel:0 rnn/basic_rnn_cell/kernel/Assign rnn/basic_rnn_cell/kernel/read:026rnn/basic_rnn_cell/kernel/Initializer/random_uniform:08
�
rnn/basic_rnn_cell/bias:0rnn/basic_rnn_cell/bias/Assignrnn/basic_rnn_cell/bias/read:02+rnn/basic_rnn_cell/bias/Initializer/zeros:08
�
layer_rnn_fc_1/kernel:0layer_rnn_fc_1/kernel/Assignlayer_rnn_fc_1/kernel/read:022layer_rnn_fc_1/kernel/Initializer/random_uniform:08
z
layer_rnn_fc_1/bias:0layer_rnn_fc_1/bias/Assignlayer_rnn_fc_1/bias/read:02'layer_rnn_fc_1/bias/Initializer/zeros:08
�
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:08
�
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:08
�
#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign(batch_normalization_1/moving_mean/read:025batch_normalization_1/moving_mean/Initializer/zeros:0
�
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign,batch_normalization_1/moving_variance/read:028batch_normalization_1/moving_variance/Initializer/ones:0

layer_dnn_1/kernel:0layer_dnn_1/kernel/Assignlayer_dnn_1/kernel/read:02/layer_dnn_1/kernel/Initializer/random_uniform:08
n
layer_dnn_1/bias:0layer_dnn_1/bias/Assignlayer_dnn_1/bias/read:02$layer_dnn_1/bias/Initializer/zeros:08

layer_dnn_2/kernel:0layer_dnn_2/kernel/Assignlayer_dnn_2/kernel/read:02/layer_dnn_2/kernel/Initializer/random_uniform:08
n
layer_dnn_2/bias:0layer_dnn_2/bias/Assignlayer_dnn_2/bias/read:02$layer_dnn_2/bias/Initializer/zeros:08
�
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02.batch_normalization_2/gamma/Initializer/ones:08
�
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02.batch_normalization_2/beta/Initializer/zeros:08
�
#batch_normalization_2/moving_mean:0(batch_normalization_2/moving_mean/Assign(batch_normalization_2/moving_mean/read:025batch_normalization_2/moving_mean/Initializer/zeros:0
�
'batch_normalization_2/moving_variance:0,batch_normalization_2/moving_variance/Assign,batch_normalization_2/moving_variance/read:028batch_normalization_2/moving_variance/Initializer/ones:0
�
layer_length_conv1/kernel:0 layer_length_conv1/kernel/Assign layer_length_conv1/kernel/read:026layer_length_conv1/kernel/Initializer/random_uniform:08
�
layer_length_conv1/bias:0layer_length_conv1/bias/Assignlayer_length_conv1/bias/read:02+layer_length_conv1/bias/Initializer/zeros:08
�
layer_length_conv2/kernel:0 layer_length_conv2/kernel/Assign layer_length_conv2/kernel/read:026layer_length_conv2/kernel/Initializer/random_uniform:08
�
layer_length_conv2/bias:0layer_length_conv2/bias/Assignlayer_length_conv2/bias/read:02+layer_length_conv2/bias/Initializer/zeros:08
�
layer_length_fc1/kernel:0layer_length_fc1/kernel/Assignlayer_length_fc1/kernel/read:024layer_length_fc1/kernel/Initializer/random_uniform:08
�
layer_length_fc1/bias:0layer_length_fc1/bias/Assignlayer_length_fc1/bias/read:02)layer_length_fc1/bias/Initializer/zeros:08
�
layer_combine_fc_cnn1d/kernel:0$layer_combine_fc_cnn1d/kernel/Assign$layer_combine_fc_cnn1d/kernel/read:02:layer_combine_fc_cnn1d/kernel/Initializer/random_uniform:08
�
layer_combine_fc_cnn1d/bias:0"layer_combine_fc_cnn1d/bias/Assign"layer_combine_fc_cnn1d/bias/read:02/layer_combine_fc_cnn1d/bias/Initializer/zeros:08
�
layer_combine_fc_x/kernel:0 layer_combine_fc_x/kernel/Assign layer_combine_fc_x/kernel/read:026layer_combine_fc_x/kernel/Initializer/random_uniform:08
�
layer_combine_fc_x/bias:0layer_combine_fc_x/bias/Assignlayer_combine_fc_x/bias/read:02+layer_combine_fc_x/bias/Initializer/zeros:08
�
layer_combine_fc_y/kernel:0 layer_combine_fc_y/kernel/Assign layer_combine_fc_y/kernel/read:026layer_combine_fc_y/kernel/Initializer/random_uniform:08
�
layer_combine_fc_y/bias:0layer_combine_fc_y/bias/Assignlayer_combine_fc_y/bias/read:02+layer_combine_fc_y/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
�
 batch_normalization/gamma/Adam:0%batch_normalization/gamma/Adam/Assign%batch_normalization/gamma/Adam/read:022batch_normalization/gamma/Adam/Initializer/zeros:0
�
"batch_normalization/gamma/Adam_1:0'batch_normalization/gamma/Adam_1/Assign'batch_normalization/gamma/Adam_1/read:024batch_normalization/gamma/Adam_1/Initializer/zeros:0
�
batch_normalization/beta/Adam:0$batch_normalization/beta/Adam/Assign$batch_normalization/beta/Adam/read:021batch_normalization/beta/Adam/Initializer/zeros:0
�
!batch_normalization/beta/Adam_1:0&batch_normalization/beta/Adam_1/Assign&batch_normalization/beta/Adam_1/read:023batch_normalization/beta/Adam_1/Initializer/zeros:0
�
layer_conv1/kernel/Adam:0layer_conv1/kernel/Adam/Assignlayer_conv1/kernel/Adam/read:02+layer_conv1/kernel/Adam/Initializer/zeros:0
�
layer_conv1/kernel/Adam_1:0 layer_conv1/kernel/Adam_1/Assign layer_conv1/kernel/Adam_1/read:02-layer_conv1/kernel/Adam_1/Initializer/zeros:0
�
layer_conv1/bias/Adam:0layer_conv1/bias/Adam/Assignlayer_conv1/bias/Adam/read:02)layer_conv1/bias/Adam/Initializer/zeros:0
�
layer_conv1/bias/Adam_1:0layer_conv1/bias/Adam_1/Assignlayer_conv1/bias/Adam_1/read:02+layer_conv1/bias/Adam_1/Initializer/zeros:0
�
layer_conv2/kernel/Adam:0layer_conv2/kernel/Adam/Assignlayer_conv2/kernel/Adam/read:02+layer_conv2/kernel/Adam/Initializer/zeros:0
�
layer_conv2/kernel/Adam_1:0 layer_conv2/kernel/Adam_1/Assign layer_conv2/kernel/Adam_1/read:02-layer_conv2/kernel/Adam_1/Initializer/zeros:0
�
layer_conv2/bias/Adam:0layer_conv2/bias/Adam/Assignlayer_conv2/bias/Adam/read:02)layer_conv2/bias/Adam/Initializer/zeros:0
�
layer_conv2/bias/Adam_1:0layer_conv2/bias/Adam_1/Assignlayer_conv2/bias/Adam_1/read:02+layer_conv2/bias/Adam_1/Initializer/zeros:0
�
layer_fc1/kernel/Adam:0layer_fc1/kernel/Adam/Assignlayer_fc1/kernel/Adam/read:02)layer_fc1/kernel/Adam/Initializer/zeros:0
�
layer_fc1/kernel/Adam_1:0layer_fc1/kernel/Adam_1/Assignlayer_fc1/kernel/Adam_1/read:02+layer_fc1/kernel/Adam_1/Initializer/zeros:0
x
layer_fc1/bias/Adam:0layer_fc1/bias/Adam/Assignlayer_fc1/bias/Adam/read:02'layer_fc1/bias/Adam/Initializer/zeros:0
�
layer_fc1/bias/Adam_1:0layer_fc1/bias/Adam_1/Assignlayer_fc1/bias/Adam_1/read:02)layer_fc1/bias/Adam_1/Initializer/zeros:0
�
$layer_combine_fc_cnn1d/kernel/Adam:0)layer_combine_fc_cnn1d/kernel/Adam/Assign)layer_combine_fc_cnn1d/kernel/Adam/read:026layer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros:0
�
&layer_combine_fc_cnn1d/kernel/Adam_1:0+layer_combine_fc_cnn1d/kernel/Adam_1/Assign+layer_combine_fc_cnn1d/kernel/Adam_1/read:028layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros:0
�
"layer_combine_fc_cnn1d/bias/Adam:0'layer_combine_fc_cnn1d/bias/Adam/Assign'layer_combine_fc_cnn1d/bias/Adam/read:024layer_combine_fc_cnn1d/bias/Adam/Initializer/zeros:0
�
$layer_combine_fc_cnn1d/bias/Adam_1:0)layer_combine_fc_cnn1d/bias/Adam_1/Assign)layer_combine_fc_cnn1d/bias/Adam_1/read:026layer_combine_fc_cnn1d/bias/Adam_1/Initializer/zeros:0
�
 layer_combine_fc_x/kernel/Adam:0%layer_combine_fc_x/kernel/Adam/Assign%layer_combine_fc_x/kernel/Adam/read:022layer_combine_fc_x/kernel/Adam/Initializer/zeros:0
�
"layer_combine_fc_x/kernel/Adam_1:0'layer_combine_fc_x/kernel/Adam_1/Assign'layer_combine_fc_x/kernel/Adam_1/read:024layer_combine_fc_x/kernel/Adam_1/Initializer/zeros:0
�
layer_combine_fc_x/bias/Adam:0#layer_combine_fc_x/bias/Adam/Assign#layer_combine_fc_x/bias/Adam/read:020layer_combine_fc_x/bias/Adam/Initializer/zeros:0
�
 layer_combine_fc_x/bias/Adam_1:0%layer_combine_fc_x/bias/Adam_1/Assign%layer_combine_fc_x/bias/Adam_1/read:022layer_combine_fc_x/bias/Adam_1/Initializer/zeros:0
�
 layer_combine_fc_y/kernel/Adam:0%layer_combine_fc_y/kernel/Adam/Assign%layer_combine_fc_y/kernel/Adam/read:022layer_combine_fc_y/kernel/Adam/Initializer/zeros:0
�
"layer_combine_fc_y/kernel/Adam_1:0'layer_combine_fc_y/kernel/Adam_1/Assign'layer_combine_fc_y/kernel/Adam_1/read:024layer_combine_fc_y/kernel/Adam_1/Initializer/zeros:0
�
layer_combine_fc_y/bias/Adam:0#layer_combine_fc_y/bias/Adam/Assign#layer_combine_fc_y/bias/Adam/read:020layer_combine_fc_y/bias/Adam/Initializer/zeros:0
�
 layer_combine_fc_y/bias/Adam_1:0%layer_combine_fc_y/bias/Adam_1/Assign%layer_combine_fc_y/bias/Adam_1/read:022layer_combine_fc_y/bias/Adam_1/Initializer/zeros:0���s&�     u�΄	�$',� �A"��

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 
�
global_step
VariableV2*
_class
loc:@global_step*
	container *
shape: *
dtype0	*
_output_shapes
: *
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
�
!global_step/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
global_step/cond/SwitchSwitch!global_step/IsVariableInitialized!global_step/IsVariableInitialized*
T0
*
_output_shapes
: : 
a
global_step/cond/switch_tIdentityglobal_step/cond/Switch:1*
_output_shapes
: *
T0

_
global_step/cond/switch_fIdentityglobal_step/cond/Switch*
T0
*
_output_shapes
: 
h
global_step/cond/pred_idIdentity!global_step/IsVariableInitialized*
T0
*
_output_shapes
: 
b
global_step/cond/readIdentityglobal_step/cond/read/Switch:1*
_output_shapes
: *
T0	
�
global_step/cond/read/Switch	RefSwitchglobal_stepglobal_step/cond/pred_id*
_output_shapes
: : *
T0	*
_class
loc:@global_step
�
global_step/cond/Switch_1Switchglobal_step/Initializer/zerosglobal_step/cond/pred_id*
T0	*
_class
loc:@global_step*
_output_shapes
: : 
}
global_step/cond/MergeMergeglobal_step/cond/Switch_1global_step/cond/read*
T0	*
N*
_output_shapes
: : 
S
global_step/add/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
b
global_step/addAddglobal_step/cond/Mergeglobal_step/add/y*
T0	*
_output_shapes
: 

ConstConst"/device:CPU:0*;
value2B0 B*../../data/android_train_complete.tfrecord*
dtype0*
_output_shapes
: 
v
flat_filenames/shapeConst"/device:CPU:0*
valueB:
���������*
dtype0*
_output_shapes
:
x
flat_filenamesReshapeConstflat_filenames/shape"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:
]
buffer_sizeConst"/device:CPU:0*
value
B	 R�*
dtype0	*
_output_shapes
: 
U
seedConst"/device:CPU:0*
_output_shapes
: *
value	B	 R *
dtype0	
V
seed2Const"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
_
countConst"/device:CPU:0*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
[

batch_sizeConst"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
_
drop_remainderConst"/device:CPU:0*
value	B
 Z *
dtype0
*
_output_shapes
: 
�
OneShotIteratorOneShotIterator"/device:CPU:0*
_output_shapes
: *0
dataset_factoryR
_make_dataset_AsAROsJbEI0*
shared_name *o
output_shapes^
\:���������@:���������@:����������:���������:���������*
	container *
output_types	
2				
h
IteratorToStringHandleIteratorToStringHandleOneShotIterator"/device:CPU:0*
_output_shapes
: 
�
IteratorGetNextIteratorGetNextOneShotIterator"/device:CPU:0*p
_output_shapes^
\:���������@:���������@:����������:���������:���������*
output_types	
2				*o
output_shapes^
\:���������@:���������@:����������:���������:���������
�
CastCastIteratorGetNext:2"/device:CPU:0*

SrcT0	*
Truncate( *(
_output_shapes
:����������*

DstT0
�
Cast_1CastIteratorGetNext:1"/device:CPU:0*

SrcT0	*
Truncate( *'
_output_shapes
:���������@*

DstT0
�
:batch_normalization/gamma/Initializer/ones/shape_as_tensorConst*,
_class"
 loc:@batch_normalization/gamma*
valueB:�*
dtype0*
_output_shapes
:
�
0batch_normalization/gamma/Initializer/ones/ConstConst*,
_class"
 loc:@batch_normalization/gamma*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
*batch_normalization/gamma/Initializer/onesFill:batch_normalization/gamma/Initializer/ones/shape_as_tensor0batch_normalization/gamma/Initializer/ones/Const*
_output_shapes	
:�*
T0*,
_class"
 loc:@batch_normalization/gamma*

index_type0
�
batch_normalization/gamma
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *,
_class"
 loc:@batch_normalization/gamma*
	container 
�
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma
�
batch_normalization/gamma/readIdentitybatch_normalization/gamma*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes	
:�*
T0
�
:batch_normalization/beta/Initializer/zeros/shape_as_tensorConst*+
_class!
loc:@batch_normalization/beta*
valueB:�*
dtype0*
_output_shapes
:
�
0batch_normalization/beta/Initializer/zeros/ConstConst*+
_class!
loc:@batch_normalization/beta*
valueB
 *    *
dtype0*
_output_shapes
: 
�
*batch_normalization/beta/Initializer/zerosFill:batch_normalization/beta/Initializer/zeros/shape_as_tensor0batch_normalization/beta/Initializer/zeros/Const*
T0*+
_class!
loc:@batch_normalization/beta*

index_type0*
_output_shapes	
:�
�
batch_normalization/beta
VariableV2*+
_class!
loc:@batch_normalization/beta*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes	
:�
�
batch_normalization/beta/readIdentitybatch_normalization/beta*+
_class!
loc:@batch_normalization/beta*
_output_shapes	
:�*
T0
�
Abatch_normalization/moving_mean/Initializer/zeros/shape_as_tensorConst*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB:�*
dtype0*
_output_shapes
:
�
7batch_normalization/moving_mean/Initializer/zeros/ConstConst*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB
 *    *
dtype0*
_output_shapes
: 
�
1batch_normalization/moving_mean/Initializer/zerosFillAbatch_normalization/moving_mean/Initializer/zeros/shape_as_tensor7batch_normalization/moving_mean/Initializer/zeros/Const*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*

index_type0*
_output_shapes	
:�
�
batch_normalization/moving_mean
VariableV2*
shared_name *2
_class(
&$loc:@batch_normalization/moving_mean*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes	
:�
�
Dbatch_normalization/moving_variance/Initializer/ones/shape_as_tensorConst*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB:�*
dtype0*
_output_shapes
:
�
:batch_normalization/moving_variance/Initializer/ones/ConstConst*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
4batch_normalization/moving_variance/Initializer/onesFillDbatch_normalization/moving_variance/Initializer/ones/shape_as_tensor:batch_normalization/moving_variance/Initializer/ones/Const*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*

index_type0*
_output_shapes	
:�
�
#batch_normalization/moving_variance
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *6
_class,
*(loc:@batch_normalization/moving_variance*
	container 
�
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
use_locking(*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:�
�
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes	
:�
h
#batch_normalization/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o�:
�
!batch_normalization/batchnorm/addAdd(batch_normalization/moving_variance/read#batch_normalization/batchnorm/add/y*
_output_shapes	
:�*
T0
u
#batch_normalization/batchnorm/RsqrtRsqrt!batch_normalization/batchnorm/add*
T0*
_output_shapes	
:�
�
!batch_normalization/batchnorm/mulMul#batch_normalization/batchnorm/Rsqrtbatch_normalization/gamma/read*
_output_shapes	
:�*
T0
�
#batch_normalization/batchnorm/mul_1MulCast!batch_normalization/batchnorm/mul*
T0*(
_output_shapes
:����������
�
#batch_normalization/batchnorm/mul_2Mul$batch_normalization/moving_mean/read!batch_normalization/batchnorm/mul*
T0*
_output_shapes	
:�
�
!batch_normalization/batchnorm/subSubbatch_normalization/beta/read#batch_normalization/batchnorm/mul_2*
_output_shapes	
:�*
T0
�
#batch_normalization/batchnorm/add_1Add#batch_normalization/batchnorm/mul_1!batch_normalization/batchnorm/sub*(
_output_shapes
:����������*
T0
b
Reshape/shapeConst*!
valueB"����      *
dtype0*
_output_shapes
:
�
ReshapeReshape#batch_normalization/batchnorm/add_1Reshape/shape*
T0*
Tshape0*,
_output_shapes
:����������
�
3layer_conv1/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_conv1/kernel*!
valueB"          *
dtype0*
_output_shapes
:
�
1layer_conv1/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_conv1/kernel*
valueB
 *d|�*
dtype0*
_output_shapes
: 
�
1layer_conv1/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_conv1/kernel*
valueB
 *d|>*
dtype0*
_output_shapes
: 
�
;layer_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*"
_output_shapes
: *

seed *
T0*%
_class
loc:@layer_conv1/kernel
�
1layer_conv1/kernel/Initializer/random_uniform/subSub1layer_conv1/kernel/Initializer/random_uniform/max1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*
_output_shapes
: 
�
1layer_conv1/kernel/Initializer/random_uniform/mulMul;layer_conv1/kernel/Initializer/random_uniform/RandomUniform1layer_conv1/kernel/Initializer/random_uniform/sub*"
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel
�
-layer_conv1/kernel/Initializer/random_uniformAdd1layer_conv1/kernel/Initializer/random_uniform/mul1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*"
_output_shapes
: 
�
layer_conv1/kernel
VariableV2*%
_class
loc:@layer_conv1/kernel*
	container *
shape: *
dtype0*"
_output_shapes
: *
shared_name 
�
layer_conv1/kernel/AssignAssignlayer_conv1/kernel-layer_conv1/kernel/Initializer/random_uniform*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*"
_output_shapes
: *
use_locking(
�
layer_conv1/kernel/readIdentitylayer_conv1/kernel*
T0*%
_class
loc:@layer_conv1/kernel*"
_output_shapes
: 
�
"layer_conv1/bias/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv1/bias
VariableV2*
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
layer_conv1/bias/AssignAssignlayer_conv1/bias"layer_conv1/bias/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(
}
layer_conv1/bias/readIdentitylayer_conv1/bias*
_output_shapes
: *
T0*#
_class
loc:@layer_conv1/bias
c
layer_conv1/dilation_rateConst*
_output_shapes
:*
valueB:*
dtype0
c
!layer_conv1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
layer_conv1/conv1d/ExpandDims
ExpandDimsReshape!layer_conv1/conv1d/ExpandDims/dim*0
_output_shapes
:����������*

Tdim0*
T0
e
#layer_conv1/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
layer_conv1/conv1d/ExpandDims_1
ExpandDimslayer_conv1/kernel/read#layer_conv1/conv1d/ExpandDims_1/dim*&
_output_shapes
: *

Tdim0*
T0
�
layer_conv1/conv1d/Conv2DConv2Dlayer_conv1/conv1d/ExpandDimslayer_conv1/conv1d/ExpandDims_1*
paddingSAME*0
_output_shapes
:���������� *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
layer_conv1/conv1d/SqueezeSqueezelayer_conv1/conv1d/Conv2D*,
_output_shapes
:���������� *
squeeze_dims
*
T0
�
layer_conv1/BiasAddBiasAddlayer_conv1/conv1d/Squeezelayer_conv1/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:���������� 
d
layer_conv1/ReluRelulayer_conv1/BiasAdd*
T0*,
_output_shapes
:���������� 
^
max_pooling1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d/ExpandDims
ExpandDimslayer_conv1/Relumax_pooling1d/ExpandDims/dim*
T0*0
_output_shapes
:���������� *

Tdim0
�
max_pooling1d/MaxPoolMaxPoolmax_pooling1d/ExpandDims*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*0
_output_shapes
:���������� 
�
max_pooling1d/SqueezeSqueezemax_pooling1d/MaxPool*,
_output_shapes
:���������� *
squeeze_dims
*
T0
�
3layer_conv2/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_conv2/kernel*!
valueB"           *
dtype0*
_output_shapes
:
�
1layer_conv2/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *�5�*
dtype0*
_output_shapes
: 
�
1layer_conv2/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
;layer_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv2/kernel/Initializer/random_uniform/shape*
T0*%
_class
loc:@layer_conv2/kernel*
seed2 *
dtype0*"
_output_shapes
:  *

seed 
�
1layer_conv2/kernel/Initializer/random_uniform/subSub1layer_conv2/kernel/Initializer/random_uniform/max1layer_conv2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv2/kernel*
_output_shapes
: 
�
1layer_conv2/kernel/Initializer/random_uniform/mulMul;layer_conv2/kernel/Initializer/random_uniform/RandomUniform1layer_conv2/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_conv2/kernel*"
_output_shapes
:  
�
-layer_conv2/kernel/Initializer/random_uniformAdd1layer_conv2/kernel/Initializer/random_uniform/mul1layer_conv2/kernel/Initializer/random_uniform/min*"
_output_shapes
:  *
T0*%
_class
loc:@layer_conv2/kernel
�
layer_conv2/kernel
VariableV2*
	container *
shape:  *
dtype0*"
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel
�
layer_conv2/kernel/AssignAssignlayer_conv2/kernel-layer_conv2/kernel/Initializer/random_uniform*%
_class
loc:@layer_conv2/kernel*
validate_shape(*"
_output_shapes
:  *
use_locking(*
T0
�
layer_conv2/kernel/readIdentitylayer_conv2/kernel*%
_class
loc:@layer_conv2/kernel*"
_output_shapes
:  *
T0
�
"layer_conv2/bias/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv2/bias
VariableV2*
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
layer_conv2/bias/AssignAssignlayer_conv2/bias"layer_conv2/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
}
layer_conv2/bias/readIdentitylayer_conv2/bias*
_output_shapes
: *
T0*#
_class
loc:@layer_conv2/bias
c
layer_conv2/dilation_rateConst*
_output_shapes
:*
valueB:*
dtype0
c
!layer_conv2/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
layer_conv2/conv1d/ExpandDims
ExpandDimsmax_pooling1d/Squeeze!layer_conv2/conv1d/ExpandDims/dim*0
_output_shapes
:���������� *

Tdim0*
T0
e
#layer_conv2/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
layer_conv2/conv1d/ExpandDims_1
ExpandDimslayer_conv2/kernel/read#layer_conv2/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:  *

Tdim0
�
layer_conv2/conv1d/Conv2DConv2Dlayer_conv2/conv1d/ExpandDimslayer_conv2/conv1d/ExpandDims_1*0
_output_shapes
:���������� *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
layer_conv2/conv1d/SqueezeSqueezelayer_conv2/conv1d/Conv2D*
T0*,
_output_shapes
:���������� *
squeeze_dims

�
layer_conv2/BiasAddBiasAddlayer_conv2/conv1d/Squeezelayer_conv2/bias/read*
data_formatNHWC*,
_output_shapes
:���������� *
T0
d
layer_conv2/ReluRelulayer_conv2/BiasAdd*
T0*,
_output_shapes
:���������� 
`
max_pooling1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d_1/ExpandDims
ExpandDimslayer_conv2/Relumax_pooling1d_1/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:���������� 
�
max_pooling1d_1/MaxPoolMaxPoolmax_pooling1d_1/ExpandDims*0
_output_shapes
:���������� *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
�
max_pooling1d_1/SqueezeSqueezemax_pooling1d_1/MaxPool*
T0*,
_output_shapes
:���������� *
squeeze_dims

l
Flatten/flatten/ShapeShapemax_pooling1d_1/Squeeze*
_output_shapes
:*
T0*
out_type0
m
#Flatten/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
Flatten/flatten/strided_sliceStridedSliceFlatten/flatten/Shape#Flatten/flatten/strided_slice/stack%Flatten/flatten/strided_slice/stack_1%Flatten/flatten/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
j
Flatten/flatten/Reshape/shape/1Const*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Flatten/flatten/Reshape/shapePackFlatten/flatten/strided_sliceFlatten/flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
�
Flatten/flatten/ReshapeReshapemax_pooling1d_1/SqueezeFlatten/flatten/Reshape/shape*(
_output_shapes
:����������@*
T0*
Tshape0
�
1layer_fc1/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_fc1/kernel*
valueB"    �   *
dtype0*
_output_shapes
:
�
/layer_fc1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel*
valueB
 *��ۼ*
dtype0
�
/layer_fc1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *���<*
dtype0*
_output_shapes
: 
�
9layer_fc1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1layer_fc1/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@layer_fc1/kernel*
seed2 *
dtype0* 
_output_shapes
:
�@�*

seed 
�
/layer_fc1/kernel/Initializer/random_uniform/subSub/layer_fc1/kernel/Initializer/random_uniform/max/layer_fc1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@layer_fc1/kernel
�
/layer_fc1/kernel/Initializer/random_uniform/mulMul9layer_fc1/kernel/Initializer/random_uniform/RandomUniform/layer_fc1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
�@�
�
+layer_fc1/kernel/Initializer/random_uniformAdd/layer_fc1/kernel/Initializer/random_uniform/mul/layer_fc1/kernel/Initializer/random_uniform/min*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
�@�*
T0
�
layer_fc1/kernel
VariableV2*
	container *
shape:
�@�*
dtype0* 
_output_shapes
:
�@�*
shared_name *#
_class
loc:@layer_fc1/kernel
�
layer_fc1/kernel/AssignAssignlayer_fc1/kernel+layer_fc1/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
�@�*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel
�
layer_fc1/kernel/readIdentitylayer_fc1/kernel*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
�@�*
T0
�
 layer_fc1/bias/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_fc1/bias
VariableV2*!
_class
loc:@layer_fc1/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
layer_fc1/bias/AssignAssignlayer_fc1/bias layer_fc1/bias/Initializer/zeros*
_output_shapes	
:�*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(
x
layer_fc1/bias/readIdentitylayer_fc1/bias*
_output_shapes	
:�*
T0*!
_class
loc:@layer_fc1/bias
�
layer_fc1/MatMulMatMulFlatten/flatten/Reshapelayer_fc1/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
layer_fc1/BiasAddBiasAddlayer_fc1/MatMullayer_fc1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
\
layer_fc1/ReluRelulayer_fc1/BiasAdd*
T0*(
_output_shapes
:����������
`
Reshape_1/shapeConst*
valueB"����@   *
dtype0*
_output_shapes
:
v
	Reshape_1ReshapeIteratorGetNextReshape_1/shape*
T0	*
Tshape0*'
_output_shapes
:���������@
�
0word_embeddings/Initializer/random_uniform/shapeConst*
_output_shapes
:*"
_class
loc:@word_embeddings*
valueB"      *
dtype0
�
.word_embeddings/Initializer/random_uniform/minConst*"
_class
loc:@word_embeddings*
valueB
 *���*
dtype0*
_output_shapes
: 
�
.word_embeddings/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *"
_class
loc:@word_embeddings*
valueB
 *��>
�
8word_embeddings/Initializer/random_uniform/RandomUniformRandomUniform0word_embeddings/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes
:	� *

seed *
T0*"
_class
loc:@word_embeddings
�
.word_embeddings/Initializer/random_uniform/subSub.word_embeddings/Initializer/random_uniform/max.word_embeddings/Initializer/random_uniform/min*
T0*"
_class
loc:@word_embeddings*
_output_shapes
: 
�
.word_embeddings/Initializer/random_uniform/mulMul8word_embeddings/Initializer/random_uniform/RandomUniform.word_embeddings/Initializer/random_uniform/sub*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	� 
�
*word_embeddings/Initializer/random_uniformAdd.word_embeddings/Initializer/random_uniform/mul.word_embeddings/Initializer/random_uniform/min*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	� 
�
word_embeddings
VariableV2*
shape:	� *
dtype0*
_output_shapes
:	� *
shared_name *"
_class
loc:@word_embeddings*
	container 
�
word_embeddings/AssignAssignword_embeddings*word_embeddings/Initializer/random_uniform*
_output_shapes
:	� *
use_locking(*
T0*"
_class
loc:@word_embeddings*
validate_shape(

word_embeddings/readIdentityword_embeddings*"
_class
loc:@word_embeddings*
_output_shapes
:	� *
T0
{
embedding_lookup/axisConst*"
_class
loc:@word_embeddings*
value	B : *
dtype0*
_output_shapes
: 
�
embedding_lookupGatherV2word_embeddings/read	Reshape_1embedding_lookup/axis*"
_class
loc:@word_embeddings*+
_output_shapes
:���������@ *
Taxis0*
Tindices0	*
Tparams0
m
embedding_lookup/IdentityIdentityembedding_lookup*
T0*+
_output_shapes
:���������@ 
J
rnn/RankConst*
_output_shapes
: *
value	B :*
dtype0
Q
rnn/range/startConst*
_output_shapes
: *
value	B :*
dtype0
Q
rnn/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
f
	rnn/rangeRangernn/range/startrnn/Rankrnn/range/delta*
_output_shapes
:*

Tidx0
d
rnn/concat/values_0Const*
_output_shapes
:*
valueB"       *
dtype0
Q
rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�

rnn/concatConcatV2rnn/concat/values_0	rnn/rangernn/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
rnn/transpose	Transposeembedding_lookup/Identity
rnn/concat*
Tperm0*
T0*+
_output_shapes
:@��������� 
V
	rnn/ShapeShapernn/transpose*
out_type0*
_output_shapes
:*
T0
a
rnn/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
c
rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
c
rnn/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
rnn/strided_sliceStridedSlice	rnn/Shapernn/strided_slice/stackrnn/strided_slice/stack_1rnn/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
j
(rnn/BasicRNNCellZeroState/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
$rnn/BasicRNNCellZeroState/ExpandDims
ExpandDimsrnn/strided_slice(rnn/BasicRNNCellZeroState/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
i
rnn/BasicRNNCellZeroState/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
g
%rnn/BasicRNNCellZeroState/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
 rnn/BasicRNNCellZeroState/concatConcatV2$rnn/BasicRNNCellZeroState/ExpandDimsrnn/BasicRNNCellZeroState/Const%rnn/BasicRNNCellZeroState/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
j
%rnn/BasicRNNCellZeroState/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
rnn/BasicRNNCellZeroState/zerosFill rnn/BasicRNNCellZeroState/concat%rnn/BasicRNNCellZeroState/zeros/Const*'
_output_shapes
:���������@*
T0*

index_type0
l
*rnn/BasicRNNCellZeroState/ExpandDims_1/dimConst*
_output_shapes
: *
value	B : *
dtype0
�
&rnn/BasicRNNCellZeroState/ExpandDims_1
ExpandDimsrnn/strided_slice*rnn/BasicRNNCellZeroState/ExpandDims_1/dim*
T0*
_output_shapes
:*

Tdim0
k
!rnn/BasicRNNCellZeroState/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
X
rnn/Shape_1Shapernn/transpose*
T0*
out_type0*
_output_shapes
:
c
rnn/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB: 
e
rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
rnn/strided_slice_1StridedSlicernn/Shape_1rnn/strided_slice_1/stackrnn/strided_slice_1/stack_1rnn/strided_slice_1/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
X
rnn/Shape_2Shapernn/transpose*
T0*
out_type0*
_output_shapes
:
c
rnn/strided_slice_2/stackConst*
_output_shapes
:*
valueB:*
dtype0
e
rnn/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
e
rnn/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
rnn/strided_slice_2StridedSlicernn/Shape_2rnn/strided_slice_2/stackrnn/strided_slice_2/stack_1rnn/strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
T
rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
v
rnn/ExpandDims
ExpandDimsrnn/strided_slice_2rnn/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
S
	rnn/ConstConst*
_output_shapes
:*
valueB:@*
dtype0
S
rnn/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
rnn/concat_1ConcatV2rnn/ExpandDims	rnn/Constrnn/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
T
rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
t
	rnn/zerosFillrnn/concat_1rnn/zeros/Const*
T0*

index_type0*'
_output_shapes
:���������@
J
rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
�
rnn/TensorArrayTensorArrayV3rnn/strided_slice_1*/
tensor_array_namernn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *$
element_shape:���������@*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
�
rnn/TensorArray_1TensorArrayV3rnn/strided_slice_1*.
tensor_array_namernn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *$
element_shape:��������� *
clear_after_read(*
dynamic_size( *
identical_element_shapes(
i
rnn/TensorArrayUnstack/ShapeShapernn/transpose*
_output_shapes
:*
T0*
out_type0
t
*rnn/TensorArrayUnstack/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
v
,rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
$rnn/TensorArrayUnstack/strided_sliceStridedSlicernn/TensorArrayUnstack/Shape*rnn/TensorArrayUnstack/strided_slice/stack,rnn/TensorArrayUnstack/strided_slice/stack_1,rnn/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
d
"rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
d
"rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
rnn/TensorArrayUnstack/rangeRange"rnn/TensorArrayUnstack/range/start$rnn/TensorArrayUnstack/strided_slice"rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:���������*

Tidx0
�
>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3rnn/TensorArray_1rnn/TensorArrayUnstack/rangernn/transposernn/TensorArray_1:1*
T0* 
_class
loc:@rnn/transpose*
_output_shapes
: 
O
rnn/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
[
rnn/MaximumMaximumrnn/Maximum/xrnn/strided_slice_1*
T0*
_output_shapes
: 
Y
rnn/MinimumMinimumrnn/strided_slice_1rnn/Maximum*
_output_shapes
: *
T0
]
rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
�
rnn/while/EnterEnterrnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
�
rnn/while/Enter_1Enterrnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
�
rnn/while/Enter_2Enterrnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
�
rnn/while/Enter_3Enterrnn/BasicRNNCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:���������@*'

frame_namernn/while/while_context
n
rnn/while/MergeMergernn/while/Enterrnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
t
rnn/while/Merge_1Mergernn/while/Enter_1rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
t
rnn/while/Merge_2Mergernn/while/Enter_2rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
�
rnn/while/Merge_3Mergernn/while/Enter_3rnn/while/NextIteration_3*
N*)
_output_shapes
:���������@: *
T0
^
rnn/while/LessLessrnn/while/Mergernn/while/Less/Enter*
T0*
_output_shapes
: 
�
rnn/while/Less/EnterEnterrnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
d
rnn/while/Less_1Lessrnn/while/Merge_1rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
�
rnn/while/Less_1/EnterEnterrnn/Minimum*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context*
T0
\
rnn/while/LogicalAnd
LogicalAndrnn/while/Lessrnn/while/Less_1*
_output_shapes
: 
L
rnn/while/LoopCondLoopCondrnn/while/LogicalAnd*
_output_shapes
: 
�
rnn/while/SwitchSwitchrnn/while/Mergernn/while/LoopCond*
T0*"
_class
loc:@rnn/while/Merge*
_output_shapes
: : 
�
rnn/while/Switch_1Switchrnn/while/Merge_1rnn/while/LoopCond*
_output_shapes
: : *
T0*$
_class
loc:@rnn/while/Merge_1
�
rnn/while/Switch_2Switchrnn/while/Merge_2rnn/while/LoopCond*
_output_shapes
: : *
T0*$
_class
loc:@rnn/while/Merge_2
�
rnn/while/Switch_3Switchrnn/while/Merge_3rnn/while/LoopCond*:
_output_shapes(
&:���������@:���������@*
T0*$
_class
loc:@rnn/while/Merge_3
S
rnn/while/IdentityIdentityrnn/while/Switch:1*
T0*
_output_shapes
: 
W
rnn/while/Identity_1Identityrnn/while/Switch_1:1*
_output_shapes
: *
T0
W
rnn/while/Identity_2Identityrnn/while/Switch_2:1*
T0*
_output_shapes
: 
h
rnn/while/Identity_3Identityrnn/while/Switch_3:1*
T0*'
_output_shapes
:���������@
f
rnn/while/add/yConst^rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Z
rnn/while/addAddrnn/while/Identityrnn/while/add/y*
_output_shapes
: *
T0
�
rnn/while/TensorArrayReadV3TensorArrayReadV3!rnn/while/TensorArrayReadV3/Enterrnn/while/Identity_1#rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:��������� 
�
!rnn/while/TensorArrayReadV3/EnterEnterrnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*'

frame_namernn/while/while_context
�
#rnn/while/TensorArrayReadV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context*
T0
�
:rnn/basic_rnn_cell/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB"`   @   
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *�KF�*
dtype0*
_output_shapes
: 
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *�KF>*
dtype0*
_output_shapes
: 
�
Brnn/basic_rnn_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniform:rnn/basic_rnn_cell/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:`@*

seed *
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
seed2 
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/subSub8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/max8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/min*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
_output_shapes
: *
T0
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/mulMulBrnn/basic_rnn_cell/kernel/Initializer/random_uniform/RandomUniform8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/sub*
_output_shapes

:`@*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel
�
4rnn/basic_rnn_cell/kernel/Initializer/random_uniformAdd8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/mul8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/min*
_output_shapes

:`@*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel
�
rnn/basic_rnn_cell/kernel
VariableV2*
	container *
shape
:`@*
dtype0*
_output_shapes

:`@*
shared_name *,
_class"
 loc:@rnn/basic_rnn_cell/kernel
�
 rnn/basic_rnn_cell/kernel/AssignAssignrnn/basic_rnn_cell/kernel4rnn/basic_rnn_cell/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes

:`@*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel
n
rnn/basic_rnn_cell/kernel/readIdentityrnn/basic_rnn_cell/kernel*
_output_shapes

:`@*
T0
�
)rnn/basic_rnn_cell/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@**
_class 
loc:@rnn/basic_rnn_cell/bias*
valueB@*    
�
rnn/basic_rnn_cell/bias
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name **
_class 
loc:@rnn/basic_rnn_cell/bias*
	container 
�
rnn/basic_rnn_cell/bias/AssignAssignrnn/basic_rnn_cell/bias)rnn/basic_rnn_cell/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias
f
rnn/basic_rnn_cell/bias/readIdentityrnn/basic_rnn_cell/bias*
T0*
_output_shapes
:@
{
$rnn/while/basic_rnn_cell/concat/axisConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
�
rnn/while/basic_rnn_cell/concatConcatV2rnn/while/TensorArrayReadV3rnn/while/Identity_3$rnn/while/basic_rnn_cell/concat/axis*
T0*
N*'
_output_shapes
:���������`*

Tidx0
�
rnn/while/basic_rnn_cell/MatMulMatMulrnn/while/basic_rnn_cell/concat%rnn/while/basic_rnn_cell/MatMul/Enter*
T0*'
_output_shapes
:���������@*
transpose_a( *
transpose_b( 
�
%rnn/while/basic_rnn_cell/MatMul/EnterEnterrnn/basic_rnn_cell/kernel/read*
_output_shapes

:`@*'

frame_namernn/while/while_context*
T0*
is_constant(*
parallel_iterations 
�
 rnn/while/basic_rnn_cell/BiasAddBiasAddrnn/while/basic_rnn_cell/MatMul&rnn/while/basic_rnn_cell/BiasAdd/Enter*'
_output_shapes
:���������@*
T0*
data_formatNHWC
�
&rnn/while/basic_rnn_cell/BiasAdd/EnterEnterrnn/basic_rnn_cell/bias/read*
parallel_iterations *
_output_shapes
:@*'

frame_namernn/while/while_context*
T0*
is_constant(
y
rnn/while/basic_rnn_cell/TanhTanh rnn/while/basic_rnn_cell/BiasAdd*
T0*'
_output_shapes
:���������@
�
-rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterrnn/while/Identity_1rnn/while/basic_rnn_cell/Tanhrnn/while/Identity_2*
T0*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
_output_shapes
: 
�
3rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterrnn/TensorArray*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
parallel_iterations *
is_constant(*
_output_shapes
:*'

frame_namernn/while/while_context*
T0
h
rnn/while/add_1/yConst^rnn/while/Identity*
_output_shapes
: *
value	B :*
dtype0
`
rnn/while/add_1Addrnn/while/Identity_1rnn/while/add_1/y*
_output_shapes
: *
T0
X
rnn/while/NextIterationNextIterationrnn/while/add*
T0*
_output_shapes
: 
\
rnn/while/NextIteration_1NextIterationrnn/while/add_1*
_output_shapes
: *
T0
z
rnn/while/NextIteration_2NextIteration-rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
{
rnn/while/NextIteration_3NextIterationrnn/while/basic_rnn_cell/Tanh*
T0*'
_output_shapes
:���������@
I
rnn/while/ExitExitrnn/while/Switch*
T0*
_output_shapes
: 
M
rnn/while/Exit_1Exitrnn/while/Switch_1*
_output_shapes
: *
T0
M
rnn/while/Exit_2Exitrnn/while/Switch_2*
_output_shapes
: *
T0
^
rnn/while/Exit_3Exitrnn/while/Switch_3*
T0*'
_output_shapes
:���������@
�
&rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3rnn/TensorArrayrnn/while/Exit_2*"
_class
loc:@rnn/TensorArray*
_output_shapes
: 
�
 rnn/TensorArrayStack/range/startConst*"
_class
loc:@rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
�
 rnn/TensorArrayStack/range/deltaConst*"
_class
loc:@rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
�
rnn/TensorArrayStack/rangeRange rnn/TensorArrayStack/range/start&rnn/TensorArrayStack/TensorArraySizeV3 rnn/TensorArrayStack/range/delta*"
_class
loc:@rnn/TensorArray*#
_output_shapes
:���������*

Tidx0
�
(rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3rnn/TensorArrayrnn/TensorArrayStack/rangernn/while/Exit_2*
dtype0*+
_output_shapes
:@���������@*$
element_shape:���������@*"
_class
loc:@rnn/TensorArray
U
rnn/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
L

rnn/Rank_1Const*
dtype0*
_output_shapes
: *
value	B :
S
rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
S
rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
n
rnn/range_1Rangernn/range_1/start
rnn/Rank_1rnn/range_1/delta*

Tidx0*
_output_shapes
:
f
rnn/concat_2/values_0Const*
_output_shapes
:*
valueB"       *
dtype0
S
rnn/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
rnn/concat_2ConcatV2rnn/concat_2/values_0rnn/range_1rnn/concat_2/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
rnn/transpose_1	Transpose(rnn/TensorArrayStack/TensorArrayGatherV3rnn/concat_2*
T0*+
_output_shapes
:���������@@*
Tperm0
h
strided_slice/stackConst*!
valueB"    ����    *
dtype0*
_output_shapes
:
j
strided_slice/stack_1Const*!
valueB"            *
dtype0*
_output_shapes
:
j
strided_slice/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:
�
strided_sliceStridedSlicernn/transpose_1strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*'
_output_shapes
:���������@
�
6layer_rnn_fc_1/kernel/Initializer/random_uniform/shapeConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB"@   �   *
dtype0*
_output_shapes
:
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/minConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *�5�*
dtype0*
_output_shapes
: 
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/maxConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
>layer_rnn_fc_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform6layer_rnn_fc_1/kernel/Initializer/random_uniform/shape*

seed *
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
seed2 *
dtype0*
_output_shapes
:	@�
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/subSub4layer_rnn_fc_1/kernel/Initializer/random_uniform/max4layer_rnn_fc_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*(
_class
loc:@layer_rnn_fc_1/kernel
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/mulMul>layer_rnn_fc_1/kernel/Initializer/random_uniform/RandomUniform4layer_rnn_fc_1/kernel/Initializer/random_uniform/sub*
_output_shapes
:	@�*
T0*(
_class
loc:@layer_rnn_fc_1/kernel
�
0layer_rnn_fc_1/kernel/Initializer/random_uniformAdd4layer_rnn_fc_1/kernel/Initializer/random_uniform/mul4layer_rnn_fc_1/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
:	@�
�
layer_rnn_fc_1/kernel
VariableV2*
	container *
shape:	@�*
dtype0*
_output_shapes
:	@�*
shared_name *(
_class
loc:@layer_rnn_fc_1/kernel
�
layer_rnn_fc_1/kernel/AssignAssignlayer_rnn_fc_1/kernel0layer_rnn_fc_1/kernel/Initializer/random_uniform*
use_locking(*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
validate_shape(*
_output_shapes
:	@�
�
layer_rnn_fc_1/kernel/readIdentitylayer_rnn_fc_1/kernel*
_output_shapes
:	@�*
T0*(
_class
loc:@layer_rnn_fc_1/kernel
�
%layer_rnn_fc_1/bias/Initializer/zerosConst*&
_class
loc:@layer_rnn_fc_1/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_rnn_fc_1/bias
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *&
_class
loc:@layer_rnn_fc_1/bias*
	container *
shape:�
�
layer_rnn_fc_1/bias/AssignAssignlayer_rnn_fc_1/bias%layer_rnn_fc_1/bias/Initializer/zeros*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
layer_rnn_fc_1/bias/readIdentitylayer_rnn_fc_1/bias*
_output_shapes	
:�*
T0*&
_class
loc:@layer_rnn_fc_1/bias
�
layer_rnn_fc_1/MatMulMatMulstrided_slicelayer_rnn_fc_1/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
layer_rnn_fc_1/BiasAddBiasAddlayer_rnn_fc_1/MatMullayer_rnn_fc_1/bias/read*
data_formatNHWC*(
_output_shapes
:����������*
T0
f
layer_rnn_fc_1/ReluRelulayer_rnn_fc_1/BiasAdd*
T0*(
_output_shapes
:����������
�
,batch_normalization_1/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_1/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
batch_normalization_1/gamma
VariableV2*
dtype0*
_output_shapes
:*
shared_name *.
_class$
" loc:@batch_normalization_1/gamma*
	container *
shape:
�
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma
�
 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:
�
,batch_normalization_1/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*-
_class#
!loc:@batch_normalization_1/beta*
valueB*    
�
batch_normalization_1/beta
VariableV2*
_output_shapes
:*
shared_name *-
_class#
!loc:@batch_normalization_1/beta*
	container *
shape:*
dtype0
�
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:
�
batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:*
T0
�
3batch_normalization_1/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
!batch_normalization_1/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@batch_normalization_1/moving_mean*
	container *
shape:
�
(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
�
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:
�
6batch_normalization_1/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
%batch_normalization_1/moving_variance
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_1/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:
�
,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(
�
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:
j
%batch_normalization_1/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o�:
�
#batch_normalization_1/batchnorm/addAdd*batch_normalization_1/moving_variance/read%batch_normalization_1/batchnorm/add/y*
_output_shapes
:*
T0
x
%batch_normalization_1/batchnorm/RsqrtRsqrt#batch_normalization_1/batchnorm/add*
T0*
_output_shapes
:
�
#batch_normalization_1/batchnorm/mulMul%batch_normalization_1/batchnorm/Rsqrt batch_normalization_1/gamma/read*
T0*
_output_shapes
:
�
%batch_normalization_1/batchnorm/mul_1MulIteratorGetNext:3#batch_normalization_1/batchnorm/mul*'
_output_shapes
:���������*
T0
�
%batch_normalization_1/batchnorm/mul_2Mul&batch_normalization_1/moving_mean/read#batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:
�
#batch_normalization_1/batchnorm/subSubbatch_normalization_1/beta/read%batch_normalization_1/batchnorm/mul_2*
_output_shapes
:*
T0
�
%batch_normalization_1/batchnorm/add_1Add%batch_normalization_1/batchnorm/mul_1#batch_normalization_1/batchnorm/sub*
T0*'
_output_shapes
:���������
�
3layer_dnn_1/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_dnn_1/kernel*
valueB"       *
dtype0*
_output_shapes
:
�
1layer_dnn_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *%
_class
loc:@layer_dnn_1/kernel*
valueB
 *b���*
dtype0
�
1layer_dnn_1/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_dnn_1/kernel*
valueB
 *b��>*
dtype0*
_output_shapes
: 
�
;layer_dnn_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_dnn_1/kernel/Initializer/random_uniform/shape*
T0*%
_class
loc:@layer_dnn_1/kernel*
seed2 *
dtype0*
_output_shapes

: *

seed 
�
1layer_dnn_1/kernel/Initializer/random_uniform/subSub1layer_dnn_1/kernel/Initializer/random_uniform/max1layer_dnn_1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_dnn_1/kernel*
_output_shapes
: 
�
1layer_dnn_1/kernel/Initializer/random_uniform/mulMul;layer_dnn_1/kernel/Initializer/random_uniform/RandomUniform1layer_dnn_1/kernel/Initializer/random_uniform/sub*
_output_shapes

: *
T0*%
_class
loc:@layer_dnn_1/kernel
�
-layer_dnn_1/kernel/Initializer/random_uniformAdd1layer_dnn_1/kernel/Initializer/random_uniform/mul1layer_dnn_1/kernel/Initializer/random_uniform/min*
_output_shapes

: *
T0*%
_class
loc:@layer_dnn_1/kernel
�
layer_dnn_1/kernel
VariableV2*%
_class
loc:@layer_dnn_1/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: *
shared_name 
�
layer_dnn_1/kernel/AssignAssignlayer_dnn_1/kernel-layer_dnn_1/kernel/Initializer/random_uniform*
use_locking(*
T0*%
_class
loc:@layer_dnn_1/kernel*
validate_shape(*
_output_shapes

: 
�
layer_dnn_1/kernel/readIdentitylayer_dnn_1/kernel*
_output_shapes

: *
T0*%
_class
loc:@layer_dnn_1/kernel
�
"layer_dnn_1/bias/Initializer/zerosConst*#
_class
loc:@layer_dnn_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_dnn_1/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_dnn_1/bias*
	container *
shape: 
�
layer_dnn_1/bias/AssignAssignlayer_dnn_1/bias"layer_dnn_1/bias/Initializer/zeros*
T0*#
_class
loc:@layer_dnn_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
}
layer_dnn_1/bias/readIdentitylayer_dnn_1/bias*
_output_shapes
: *
T0*#
_class
loc:@layer_dnn_1/bias
�
layer_dnn_1/MatMulMatMul%batch_normalization_1/batchnorm/add_1layer_dnn_1/kernel/read*
T0*'
_output_shapes
:��������� *
transpose_a( *
transpose_b( 
�
layer_dnn_1/BiasAddBiasAddlayer_dnn_1/MatMullayer_dnn_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
_
layer_dnn_1/ReluRelulayer_dnn_1/BiasAdd*'
_output_shapes
:��������� *
T0
�
3layer_dnn_2/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_dnn_2/kernel*
valueB"        *
dtype0*
_output_shapes
:
�
1layer_dnn_2/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_dnn_2/kernel*
valueB
 *qĜ�*
dtype0*
_output_shapes
: 
�
1layer_dnn_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *%
_class
loc:@layer_dnn_2/kernel*
valueB
 *qĜ>*
dtype0
�
;layer_dnn_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_dnn_2/kernel/Initializer/random_uniform/shape*
_output_shapes

:  *

seed *
T0*%
_class
loc:@layer_dnn_2/kernel*
seed2 *
dtype0
�
1layer_dnn_2/kernel/Initializer/random_uniform/subSub1layer_dnn_2/kernel/Initializer/random_uniform/max1layer_dnn_2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_dnn_2/kernel*
_output_shapes
: 
�
1layer_dnn_2/kernel/Initializer/random_uniform/mulMul;layer_dnn_2/kernel/Initializer/random_uniform/RandomUniform1layer_dnn_2/kernel/Initializer/random_uniform/sub*%
_class
loc:@layer_dnn_2/kernel*
_output_shapes

:  *
T0
�
-layer_dnn_2/kernel/Initializer/random_uniformAdd1layer_dnn_2/kernel/Initializer/random_uniform/mul1layer_dnn_2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_dnn_2/kernel*
_output_shapes

:  
�
layer_dnn_2/kernel
VariableV2*
shared_name *%
_class
loc:@layer_dnn_2/kernel*
	container *
shape
:  *
dtype0*
_output_shapes

:  
�
layer_dnn_2/kernel/AssignAssignlayer_dnn_2/kernel-layer_dnn_2/kernel/Initializer/random_uniform*%
_class
loc:@layer_dnn_2/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0
�
layer_dnn_2/kernel/readIdentitylayer_dnn_2/kernel*%
_class
loc:@layer_dnn_2/kernel*
_output_shapes

:  *
T0
�
"layer_dnn_2/bias/Initializer/zerosConst*#
_class
loc:@layer_dnn_2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_dnn_2/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_dnn_2/bias*
	container *
shape: 
�
layer_dnn_2/bias/AssignAssignlayer_dnn_2/bias"layer_dnn_2/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_dnn_2/bias*
validate_shape(*
_output_shapes
: 
}
layer_dnn_2/bias/readIdentitylayer_dnn_2/bias*
T0*#
_class
loc:@layer_dnn_2/bias*
_output_shapes
: 
�
layer_dnn_2/MatMulMatMullayer_dnn_1/Relulayer_dnn_2/kernel/read*'
_output_shapes
:��������� *
transpose_a( *
transpose_b( *
T0
�
layer_dnn_2/BiasAddBiasAddlayer_dnn_2/MatMullayer_dnn_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
_
layer_dnn_2/ReluRelulayer_dnn_2/BiasAdd*
T0*'
_output_shapes
:��������� 
�
,batch_normalization_2/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:@*.
_class$
" loc:@batch_normalization_2/gamma*
valueB@*  �?
�
batch_normalization_2/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *.
_class$
" loc:@batch_normalization_2/gamma*
	container *
shape:@
�
"batch_normalization_2/gamma/AssignAssignbatch_normalization_2/gamma,batch_normalization_2/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@
�
 batch_normalization_2/gamma/readIdentitybatch_normalization_2/gamma*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
:@
�
,batch_normalization_2/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*-
_class#
!loc:@batch_normalization_2/beta*
valueB@*    
�
batch_normalization_2/beta
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *-
_class#
!loc:@batch_normalization_2/beta*
	container *
shape:@
�
!batch_normalization_2/beta/AssignAssignbatch_normalization_2/beta,batch_normalization_2/beta/Initializer/zeros*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
�
batch_normalization_2/beta/readIdentitybatch_normalization_2/beta*
_output_shapes
:@*
T0*-
_class#
!loc:@batch_normalization_2/beta
�
3batch_normalization_2/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_2/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
�
!batch_normalization_2/moving_mean
VariableV2*4
_class*
(&loc:@batch_normalization_2/moving_mean*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
�
(batch_normalization_2/moving_mean/AssignAssign!batch_normalization_2/moving_mean3batch_normalization_2/moving_mean/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(
�
&batch_normalization_2/moving_mean/readIdentity!batch_normalization_2/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:@
�
6batch_normalization_2/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_2/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
%batch_normalization_2/moving_variance
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *8
_class.
,*loc:@batch_normalization_2/moving_variance
�
,batch_normalization_2/moving_variance/AssignAssign%batch_normalization_2/moving_variance6batch_normalization_2/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
�
*batch_normalization_2/moving_variance/readIdentity%batch_normalization_2/moving_variance*
_output_shapes
:@*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
j
%batch_normalization_2/batchnorm/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
#batch_normalization_2/batchnorm/addAdd*batch_normalization_2/moving_variance/read%batch_normalization_2/batchnorm/add/y*
T0*
_output_shapes
:@
x
%batch_normalization_2/batchnorm/RsqrtRsqrt#batch_normalization_2/batchnorm/add*
T0*
_output_shapes
:@
�
#batch_normalization_2/batchnorm/mulMul%batch_normalization_2/batchnorm/Rsqrt batch_normalization_2/gamma/read*
_output_shapes
:@*
T0
�
%batch_normalization_2/batchnorm/mul_1MulCast_1#batch_normalization_2/batchnorm/mul*'
_output_shapes
:���������@*
T0
�
%batch_normalization_2/batchnorm/mul_2Mul&batch_normalization_2/moving_mean/read#batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:@
�
#batch_normalization_2/batchnorm/subSubbatch_normalization_2/beta/read%batch_normalization_2/batchnorm/mul_2*
_output_shapes
:@*
T0
�
%batch_normalization_2/batchnorm/add_1Add%batch_normalization_2/batchnorm/mul_1#batch_normalization_2/batchnorm/sub*'
_output_shapes
:���������@*
T0
d
Reshape_2/shapeConst*!
valueB"����@      *
dtype0*
_output_shapes
:
�
	Reshape_2Reshape%batch_normalization_2/batchnorm/add_1Reshape_2/shape*
T0*
Tshape0*+
_output_shapes
:���������@
�
:layer_length_conv1/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_length_conv1/kernel*!
valueB"          *
dtype0*
_output_shapes
:
�
8layer_length_conv1/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_length_conv1/kernel*
valueB
 *d|�*
dtype0*
_output_shapes
: 
�
8layer_length_conv1/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_length_conv1/kernel*
valueB
 *d|>*
dtype0*
_output_shapes
: 
�
Blayer_length_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_length_conv1/kernel/Initializer/random_uniform/shape*"
_output_shapes
: *

seed *
T0*,
_class"
 loc:@layer_length_conv1/kernel*
seed2 *
dtype0
�
8layer_length_conv1/kernel/Initializer/random_uniform/subSub8layer_length_conv1/kernel/Initializer/random_uniform/max8layer_length_conv1/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_length_conv1/kernel*
_output_shapes
: 
�
8layer_length_conv1/kernel/Initializer/random_uniform/mulMulBlayer_length_conv1/kernel/Initializer/random_uniform/RandomUniform8layer_length_conv1/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_length_conv1/kernel*"
_output_shapes
: 
�
4layer_length_conv1/kernel/Initializer/random_uniformAdd8layer_length_conv1/kernel/Initializer/random_uniform/mul8layer_length_conv1/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_length_conv1/kernel*"
_output_shapes
: 
�
layer_length_conv1/kernel
VariableV2*
dtype0*"
_output_shapes
: *
shared_name *,
_class"
 loc:@layer_length_conv1/kernel*
	container *
shape: 
�
 layer_length_conv1/kernel/AssignAssignlayer_length_conv1/kernel4layer_length_conv1/kernel/Initializer/random_uniform*,
_class"
 loc:@layer_length_conv1/kernel*
validate_shape(*"
_output_shapes
: *
use_locking(*
T0
�
layer_length_conv1/kernel/readIdentitylayer_length_conv1/kernel*"
_output_shapes
: *
T0*,
_class"
 loc:@layer_length_conv1/kernel
�
)layer_length_conv1/bias/Initializer/zerosConst**
_class 
loc:@layer_length_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_length_conv1/bias
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name **
_class 
loc:@layer_length_conv1/bias
�
layer_length_conv1/bias/AssignAssignlayer_length_conv1/bias)layer_length_conv1/bias/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0**
_class 
loc:@layer_length_conv1/bias
�
layer_length_conv1/bias/readIdentitylayer_length_conv1/bias*
T0**
_class 
loc:@layer_length_conv1/bias*
_output_shapes
: 
j
 layer_length_conv1/dilation_rateConst*
_output_shapes
:*
valueB:*
dtype0
j
(layer_length_conv1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
$layer_length_conv1/conv1d/ExpandDims
ExpandDims	Reshape_2(layer_length_conv1/conv1d/ExpandDims/dim*

Tdim0*
T0*/
_output_shapes
:���������@
l
*layer_length_conv1/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
&layer_length_conv1/conv1d/ExpandDims_1
ExpandDimslayer_length_conv1/kernel/read*layer_length_conv1/conv1d/ExpandDims_1/dim*

Tdim0*
T0*&
_output_shapes
: 
�
 layer_length_conv1/conv1d/Conv2DConv2D$layer_length_conv1/conv1d/ExpandDims&layer_length_conv1/conv1d/ExpandDims_1*/
_output_shapes
:���������@ *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
!layer_length_conv1/conv1d/SqueezeSqueeze layer_length_conv1/conv1d/Conv2D*
T0*+
_output_shapes
:���������@ *
squeeze_dims

�
layer_length_conv1/BiasAddBiasAdd!layer_length_conv1/conv1d/Squeezelayer_length_conv1/bias/read*
T0*
data_formatNHWC*+
_output_shapes
:���������@ 
q
layer_length_conv1/ReluRelulayer_length_conv1/BiasAdd*
T0*+
_output_shapes
:���������@ 
`
max_pooling1d_2/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d_2/ExpandDims
ExpandDimslayer_length_conv1/Relumax_pooling1d_2/ExpandDims/dim*

Tdim0*
T0*/
_output_shapes
:���������@ 
�
max_pooling1d_2/MaxPoolMaxPoolmax_pooling1d_2/ExpandDims*/
_output_shapes
:���������  *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
�
max_pooling1d_2/SqueezeSqueezemax_pooling1d_2/MaxPool*
squeeze_dims
*
T0*+
_output_shapes
:���������  
�
:layer_length_conv2/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_length_conv2/kernel*!
valueB"           *
dtype0*
_output_shapes
:
�
8layer_length_conv2/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_length_conv2/kernel*
valueB
 *�5�*
dtype0*
_output_shapes
: 
�
8layer_length_conv2/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_length_conv2/kernel*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
Blayer_length_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_length_conv2/kernel/Initializer/random_uniform/shape*"
_output_shapes
:  *

seed *
T0*,
_class"
 loc:@layer_length_conv2/kernel*
seed2 *
dtype0
�
8layer_length_conv2/kernel/Initializer/random_uniform/subSub8layer_length_conv2/kernel/Initializer/random_uniform/max8layer_length_conv2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@layer_length_conv2/kernel
�
8layer_length_conv2/kernel/Initializer/random_uniform/mulMulBlayer_length_conv2/kernel/Initializer/random_uniform/RandomUniform8layer_length_conv2/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_length_conv2/kernel*"
_output_shapes
:  
�
4layer_length_conv2/kernel/Initializer/random_uniformAdd8layer_length_conv2/kernel/Initializer/random_uniform/mul8layer_length_conv2/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_length_conv2/kernel*"
_output_shapes
:  
�
layer_length_conv2/kernel
VariableV2*
shared_name *,
_class"
 loc:@layer_length_conv2/kernel*
	container *
shape:  *
dtype0*"
_output_shapes
:  
�
 layer_length_conv2/kernel/AssignAssignlayer_length_conv2/kernel4layer_length_conv2/kernel/Initializer/random_uniform*
T0*,
_class"
 loc:@layer_length_conv2/kernel*
validate_shape(*"
_output_shapes
:  *
use_locking(
�
layer_length_conv2/kernel/readIdentitylayer_length_conv2/kernel*"
_output_shapes
:  *
T0*,
_class"
 loc:@layer_length_conv2/kernel
�
)layer_length_conv2/bias/Initializer/zerosConst**
_class 
loc:@layer_length_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_length_conv2/bias
VariableV2*
shared_name **
_class 
loc:@layer_length_conv2/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
layer_length_conv2/bias/AssignAssignlayer_length_conv2/bias)layer_length_conv2/bias/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_length_conv2/bias*
validate_shape(*
_output_shapes
: 
�
layer_length_conv2/bias/readIdentitylayer_length_conv2/bias*
T0**
_class 
loc:@layer_length_conv2/bias*
_output_shapes
: 
j
 layer_length_conv2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB:
j
(layer_length_conv2/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
$layer_length_conv2/conv1d/ExpandDims
ExpandDimsmax_pooling1d_2/Squeeze(layer_length_conv2/conv1d/ExpandDims/dim*

Tdim0*
T0*/
_output_shapes
:���������  
l
*layer_length_conv2/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
&layer_length_conv2/conv1d/ExpandDims_1
ExpandDimslayer_length_conv2/kernel/read*layer_length_conv2/conv1d/ExpandDims_1/dim*&
_output_shapes
:  *

Tdim0*
T0
�
 layer_length_conv2/conv1d/Conv2DConv2D$layer_length_conv2/conv1d/ExpandDims&layer_length_conv2/conv1d/ExpandDims_1*
paddingSAME*/
_output_shapes
:���������  *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
�
!layer_length_conv2/conv1d/SqueezeSqueeze layer_length_conv2/conv1d/Conv2D*
T0*+
_output_shapes
:���������  *
squeeze_dims

�
layer_length_conv2/BiasAddBiasAdd!layer_length_conv2/conv1d/Squeezelayer_length_conv2/bias/read*
T0*
data_formatNHWC*+
_output_shapes
:���������  
q
layer_length_conv2/ReluRelulayer_length_conv2/BiasAdd*
T0*+
_output_shapes
:���������  
`
max_pooling1d_3/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d_3/ExpandDims
ExpandDimslayer_length_conv2/Relumax_pooling1d_3/ExpandDims/dim*
T0*/
_output_shapes
:���������  *

Tdim0
�
max_pooling1d_3/MaxPoolMaxPoolmax_pooling1d_3/ExpandDims*/
_output_shapes
:��������� *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
�
max_pooling1d_3/SqueezeSqueezemax_pooling1d_3/MaxPool*
squeeze_dims
*
T0*+
_output_shapes
:��������� 
n
Flatten_1/flatten/ShapeShapemax_pooling1d_3/Squeeze*
T0*
out_type0*
_output_shapes
:
o
%Flatten_1/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
q
'Flatten_1/flatten/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
q
'Flatten_1/flatten/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
Flatten_1/flatten/strided_sliceStridedSliceFlatten_1/flatten/Shape%Flatten_1/flatten/strided_slice/stack'Flatten_1/flatten/strided_slice/stack_1'Flatten_1/flatten/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
l
!Flatten_1/flatten/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
valueB :
���������
�
Flatten_1/flatten/Reshape/shapePackFlatten_1/flatten/strided_slice!Flatten_1/flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
�
Flatten_1/flatten/ReshapeReshapemax_pooling1d_3/SqueezeFlatten_1/flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:����������
�
8layer_length_fc1/kernel/Initializer/random_uniform/shapeConst**
_class 
loc:@layer_length_fc1/kernel*
valueB"   �   *
dtype0*
_output_shapes
:
�
6layer_length_fc1/kernel/Initializer/random_uniform/minConst**
_class 
loc:@layer_length_fc1/kernel*
valueB
 *�Kƽ*
dtype0*
_output_shapes
: 
�
6layer_length_fc1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: **
_class 
loc:@layer_length_fc1/kernel*
valueB
 *�K�=
�
@layer_length_fc1/kernel/Initializer/random_uniform/RandomUniformRandomUniform8layer_length_fc1/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
��*

seed *
T0**
_class 
loc:@layer_length_fc1/kernel*
seed2 
�
6layer_length_fc1/kernel/Initializer/random_uniform/subSub6layer_length_fc1/kernel/Initializer/random_uniform/max6layer_length_fc1/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@layer_length_fc1/kernel*
_output_shapes
: 
�
6layer_length_fc1/kernel/Initializer/random_uniform/mulMul@layer_length_fc1/kernel/Initializer/random_uniform/RandomUniform6layer_length_fc1/kernel/Initializer/random_uniform/sub**
_class 
loc:@layer_length_fc1/kernel* 
_output_shapes
:
��*
T0
�
2layer_length_fc1/kernel/Initializer/random_uniformAdd6layer_length_fc1/kernel/Initializer/random_uniform/mul6layer_length_fc1/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@layer_length_fc1/kernel* 
_output_shapes
:
��
�
layer_length_fc1/kernel
VariableV2*
shared_name **
_class 
loc:@layer_length_fc1/kernel*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��
�
layer_length_fc1/kernel/AssignAssignlayer_length_fc1/kernel2layer_length_fc1/kernel/Initializer/random_uniform*
use_locking(*
T0**
_class 
loc:@layer_length_fc1/kernel*
validate_shape(* 
_output_shapes
:
��
�
layer_length_fc1/kernel/readIdentitylayer_length_fc1/kernel*
T0**
_class 
loc:@layer_length_fc1/kernel* 
_output_shapes
:
��
�
'layer_length_fc1/bias/Initializer/zerosConst*(
_class
loc:@layer_length_fc1/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_length_fc1/bias
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *(
_class
loc:@layer_length_fc1/bias*
	container *
shape:�
�
layer_length_fc1/bias/AssignAssignlayer_length_fc1/bias'layer_length_fc1/bias/Initializer/zeros*
_output_shapes	
:�*
use_locking(*
T0*(
_class
loc:@layer_length_fc1/bias*
validate_shape(
�
layer_length_fc1/bias/readIdentitylayer_length_fc1/bias*(
_class
loc:@layer_length_fc1/bias*
_output_shapes	
:�*
T0
�
layer_length_fc1/MatMulMatMulFlatten_1/flatten/Reshapelayer_length_fc1/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
layer_length_fc1/BiasAddBiasAddlayer_length_fc1/MatMullayer_length_fc1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
j
layer_length_fc1/ReluRelulayer_length_fc1/BiasAdd*
T0*(
_output_shapes
:����������
�
>layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/shapeConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/minConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *q��*
dtype0*
_output_shapes
: 
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/maxConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *q�>*
dtype0*
_output_shapes
: 
�
Flayer_combine_fc_cnn1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform>layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/shape*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
seed2 *
dtype0* 
_output_shapes
:
��*

seed 
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/subSub<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/max<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/min*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
_output_shapes
: 
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/mulMulFlayer_combine_fc_cnn1d/kernel/Initializer/random_uniform/RandomUniform<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
��*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel
�
8layer_combine_fc_cnn1d/kernel/Initializer/random_uniformAdd<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/mul<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/min*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel* 
_output_shapes
:
��
�
layer_combine_fc_cnn1d/kernel
VariableV2*
shared_name *0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��
�
$layer_combine_fc_cnn1d/kernel/AssignAssignlayer_combine_fc_cnn1d/kernel8layer_combine_fc_cnn1d/kernel/Initializer/random_uniform*
use_locking(*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
validate_shape(* 
_output_shapes
:
��
�
"layer_combine_fc_cnn1d/kernel/readIdentitylayer_combine_fc_cnn1d/kernel*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel* 
_output_shapes
:
��*
T0
�
-layer_combine_fc_cnn1d/bias/Initializer/zerosConst*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_combine_fc_cnn1d/bias
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
	container 
�
"layer_combine_fc_cnn1d/bias/AssignAssignlayer_combine_fc_cnn1d/bias-layer_combine_fc_cnn1d/bias/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(*
_output_shapes	
:�
�
 layer_combine_fc_cnn1d/bias/readIdentitylayer_combine_fc_cnn1d/bias*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
_output_shapes	
:�
�
layer_combine_fc_cnn1d/MatMulMatMullayer_fc1/Relu"layer_combine_fc_cnn1d/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
layer_combine_fc_cnn1d/BiasAddBiasAddlayer_combine_fc_cnn1d/MatMul layer_combine_fc_cnn1d/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
v
layer_combine_fc_cnn1d/ReluRelulayer_combine_fc_cnn1d/BiasAdd*(
_output_shapes
:����������*
T0
�
:layer_combine_fc_x/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *q��*
dtype0*
_output_shapes
: 
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *q�>*
dtype0*
_output_shapes
: 
�
Blayer_combine_fc_x/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_combine_fc_x/kernel/Initializer/random_uniform/shape*,
_class"
 loc:@layer_combine_fc_x/kernel*
seed2 *
dtype0* 
_output_shapes
:
��*

seed *
T0
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/subSub8layer_combine_fc_x/kernel/Initializer/random_uniform/max8layer_combine_fc_x/kernel/Initializer/random_uniform/min*,
_class"
 loc:@layer_combine_fc_x/kernel*
_output_shapes
: *
T0
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/mulMulBlayer_combine_fc_x/kernel/Initializer/random_uniform/RandomUniform8layer_combine_fc_x/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��
�
4layer_combine_fc_x/kernel/Initializer/random_uniformAdd8layer_combine_fc_x/kernel/Initializer/random_uniform/mul8layer_combine_fc_x/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��
�
layer_combine_fc_x/kernel
VariableV2*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��
�
 layer_combine_fc_x/kernel/AssignAssignlayer_combine_fc_x/kernel4layer_combine_fc_x/kernel/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
��
�
layer_combine_fc_x/kernel/readIdentitylayer_combine_fc_x/kernel* 
_output_shapes
:
��*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel
�
)layer_combine_fc_x/bias/Initializer/zerosConst*
_output_shapes	
:�**
_class 
loc:@layer_combine_fc_x/bias*
valueB�*    *
dtype0
�
layer_combine_fc_x/bias
VariableV2*
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
layer_combine_fc_x/bias/AssignAssignlayer_combine_fc_x/bias)layer_combine_fc_x/bias/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:�
�
layer_combine_fc_x/bias/readIdentitylayer_combine_fc_x/bias*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes	
:�
�
layer_combine_fc_x/MatMulMatMullayer_combine_fc_cnn1d/Relulayer_combine_fc_x/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b( *
T0
�
layer_combine_fc_x/BiasAddBiasAddlayer_combine_fc_x/MatMullayer_combine_fc_x/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
n
layer_combine_fc_x/ReluRelulayer_combine_fc_x/BiasAdd*(
_output_shapes
:����������*
T0
�
:layer_combine_fc_y/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"�      *
dtype0*
_output_shapes
:
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *o}R�*
dtype0*
_output_shapes
: 
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *o}R>*
dtype0*
_output_shapes
: 
�
Blayer_combine_fc_y/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_combine_fc_y/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	�*

seed *
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
seed2 
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/subSub8layer_combine_fc_y/kernel/Initializer/random_uniform/max8layer_combine_fc_y/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@layer_combine_fc_y/kernel
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/mulMulBlayer_combine_fc_y/kernel/Initializer/random_uniform/RandomUniform8layer_combine_fc_y/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	�
�
4layer_combine_fc_y/kernel/Initializer/random_uniformAdd8layer_combine_fc_y/kernel/Initializer/random_uniform/mul8layer_combine_fc_y/kernel/Initializer/random_uniform/min*
_output_shapes
:	�*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel
�
layer_combine_fc_y/kernel
VariableV2*
dtype0*
_output_shapes
:	�*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel*
	container *
shape:	�
�
 layer_combine_fc_y/kernel/AssignAssignlayer_combine_fc_y/kernel4layer_combine_fc_y/kernel/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	�
�
layer_combine_fc_y/kernel/readIdentitylayer_combine_fc_y/kernel*
_output_shapes
:	�*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel
�
)layer_combine_fc_y/bias/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    *
dtype0*
_output_shapes
:
�
layer_combine_fc_y/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name **
_class 
loc:@layer_combine_fc_y/bias*
	container *
shape:
�
layer_combine_fc_y/bias/AssignAssignlayer_combine_fc_y/bias)layer_combine_fc_y/bias/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
�
layer_combine_fc_y/bias/readIdentitylayer_combine_fc_y/bias*
T0**
_class 
loc:@layer_combine_fc_y/bias*
_output_shapes
:
�
layer_combine_fc_y/MatMulMatMullayer_combine_fc_x/Relulayer_combine_fc_y/kernel/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
�
layer_combine_fc_y/BiasAddBiasAddlayer_combine_fc_y/MatMullayer_combine_fc_y/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
`
SoftmaxSoftmaxlayer_combine_fc_y/BiasAdd*
T0*'
_output_shapes
:���������
R
ArgMax/dimensionConst*
_output_shapes
: *
value	B :*
dtype0
x
ArgMaxArgMaxSoftmaxArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:���������*

Tidx0
z
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeIteratorGetNext:4*
out_type0*
_output_shapes
:*
T0	
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitslayer_combine_fc_y/BiasAddIteratorGetNext:4*
T0*6
_output_shapes$
":���������:���������*
Tlabels0	
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
MeanMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
_output_shapes
: *
valueB
 *  �?*
dtype0
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
�
gradients/Mean_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*
_output_shapes
:*
T0
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
�
gradients/Mean_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
_output_shapes
: *
valueB *
dtype0
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
e
gradients/Mean_grad/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:���������*
T0
�
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:���������*
T0
�
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:���������*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:���������
�
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:���������
�
5gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGradBiasAddGradZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*
_output_shapes
:*
T0*
data_formatNHWC
�
:gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_depsNoOp[^gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul6^gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad
�
Bgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependencyIdentityZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul;^gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_deps*m
_classc
a_loc:@gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*'
_output_shapes
:���������*
T0
�
Dgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad;^gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*H
_class>
<:loc:@gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad
�
/gradients/layer_combine_fc_y/MatMul_grad/MatMulMatMulBgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependencylayer_combine_fc_y/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b(*
T0
�
1gradients/layer_combine_fc_y/MatMul_grad/MatMul_1MatMullayer_combine_fc_x/ReluBgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	�*
transpose_a(*
transpose_b( *
T0
�
9gradients/layer_combine_fc_y/MatMul_grad/tuple/group_depsNoOp0^gradients/layer_combine_fc_y/MatMul_grad/MatMul2^gradients/layer_combine_fc_y/MatMul_grad/MatMul_1
�
Agradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_y/MatMul_grad/MatMul:^gradients/layer_combine_fc_y/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/layer_combine_fc_y/MatMul_grad/MatMul*(
_output_shapes
:����������
�
Cgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependency_1Identity1gradients/layer_combine_fc_y/MatMul_grad/MatMul_1:^gradients/layer_combine_fc_y/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/layer_combine_fc_y/MatMul_grad/MatMul_1*
_output_shapes
:	�
�
/gradients/layer_combine_fc_x/Relu_grad/ReluGradReluGradAgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependencylayer_combine_fc_x/Relu*(
_output_shapes
:����������*
T0
�
5gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/layer_combine_fc_x/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:�
�
:gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_depsNoOp6^gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad0^gradients/layer_combine_fc_x/Relu_grad/ReluGrad
�
Bgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_x/Relu_grad/ReluGrad;^gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/layer_combine_fc_x/Relu_grad/ReluGrad*(
_output_shapes
:����������
�
Dgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad;^gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
/gradients/layer_combine_fc_x/MatMul_grad/MatMulMatMulBgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependencylayer_combine_fc_x/kernel/read*
transpose_b(*
T0*(
_output_shapes
:����������*
transpose_a( 
�
1gradients/layer_combine_fc_x/MatMul_grad/MatMul_1MatMullayer_combine_fc_cnn1d/ReluBgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
�
9gradients/layer_combine_fc_x/MatMul_grad/tuple/group_depsNoOp0^gradients/layer_combine_fc_x/MatMul_grad/MatMul2^gradients/layer_combine_fc_x/MatMul_grad/MatMul_1
�
Agradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_x/MatMul_grad/MatMul:^gradients/layer_combine_fc_x/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*B
_class8
64loc:@gradients/layer_combine_fc_x/MatMul_grad/MatMul
�
Cgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency_1Identity1gradients/layer_combine_fc_x/MatMul_grad/MatMul_1:^gradients/layer_combine_fc_x/MatMul_grad/tuple/group_deps* 
_output_shapes
:
��*
T0*D
_class:
86loc:@gradients/layer_combine_fc_x/MatMul_grad/MatMul_1
�
3gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGradReluGradAgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependencylayer_combine_fc_cnn1d/Relu*
T0*(
_output_shapes
:����������
�
9gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGradBiasAddGrad3gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:�*
T0
�
>gradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/group_depsNoOp:^gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGrad4^gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad
�
Fgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependencyIdentity3gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad?^gradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/group_deps*F
_class<
:8loc:@gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad*(
_output_shapes
:����������*
T0
�
Hgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency_1Identity9gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGrad?^gradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:�*
T0*L
_classB
@>loc:@gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGrad
�
3gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMulMatMulFgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency"layer_combine_fc_cnn1d/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
5gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1MatMullayer_fc1/ReluFgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
�
=gradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/group_depsNoOp4^gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul6^gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1
�
Egradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependencyIdentity3gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul>^gradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*F
_class<
:8loc:@gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul
�
Ggradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1>^gradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1* 
_output_shapes
:
��
�
&gradients/layer_fc1/Relu_grad/ReluGradReluGradEgradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependencylayer_fc1/Relu*
T0*(
_output_shapes
:����������
�
,gradients/layer_fc1/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/layer_fc1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:�
�
1gradients/layer_fc1/BiasAdd_grad/tuple/group_depsNoOp-^gradients/layer_fc1/BiasAdd_grad/BiasAddGrad'^gradients/layer_fc1/Relu_grad/ReluGrad
�
9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/Relu_grad/ReluGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_fc1/Relu_grad/ReluGrad*(
_output_shapes
:����������
�
;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/layer_fc1/BiasAdd_grad/BiasAddGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:�*
T0*?
_class5
31loc:@gradients/layer_fc1/BiasAdd_grad/BiasAddGrad
�
&gradients/layer_fc1/MatMul_grad/MatMulMatMul9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencylayer_fc1/kernel/read*(
_output_shapes
:����������@*
transpose_a( *
transpose_b(*
T0
�
(gradients/layer_fc1/MatMul_grad/MatMul_1MatMulFlatten/flatten/Reshape9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
�@�*
transpose_a(*
transpose_b( 
�
0gradients/layer_fc1/MatMul_grad/tuple/group_depsNoOp'^gradients/layer_fc1/MatMul_grad/MatMul)^gradients/layer_fc1/MatMul_grad/MatMul_1
�
8gradients/layer_fc1/MatMul_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/MatMul_grad/MatMul1^gradients/layer_fc1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_fc1/MatMul_grad/MatMul*(
_output_shapes
:����������@
�
:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1Identity(gradients/layer_fc1/MatMul_grad/MatMul_11^gradients/layer_fc1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_fc1/MatMul_grad/MatMul_1* 
_output_shapes
:
�@�
�
,gradients/Flatten/flatten/Reshape_grad/ShapeShapemax_pooling1d_1/Squeeze*
_output_shapes
:*
T0*
out_type0
�
.gradients/Flatten/flatten/Reshape_grad/ReshapeReshape8gradients/layer_fc1/MatMul_grad/tuple/control_dependency,gradients/Flatten/flatten/Reshape_grad/Shape*
T0*
Tshape0*,
_output_shapes
:���������� 
�
,gradients/max_pooling1d_1/Squeeze_grad/ShapeShapemax_pooling1d_1/MaxPool*
T0*
out_type0*
_output_shapes
:
�
.gradients/max_pooling1d_1/Squeeze_grad/ReshapeReshape.gradients/Flatten/flatten/Reshape_grad/Reshape,gradients/max_pooling1d_1/Squeeze_grad/Shape*0
_output_shapes
:���������� *
T0*
Tshape0
�
2gradients/max_pooling1d_1/MaxPool_grad/MaxPoolGradMaxPoolGradmax_pooling1d_1/ExpandDimsmax_pooling1d_1/MaxPool.gradients/max_pooling1d_1/Squeeze_grad/Reshape*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*0
_output_shapes
:���������� *
T0

/gradients/max_pooling1d_1/ExpandDims_grad/ShapeShapelayer_conv2/Relu*
out_type0*
_output_shapes
:*
T0
�
1gradients/max_pooling1d_1/ExpandDims_grad/ReshapeReshape2gradients/max_pooling1d_1/MaxPool_grad/MaxPoolGrad/gradients/max_pooling1d_1/ExpandDims_grad/Shape*,
_output_shapes
:���������� *
T0*
Tshape0
�
(gradients/layer_conv2/Relu_grad/ReluGradReluGrad1gradients/max_pooling1d_1/ExpandDims_grad/Reshapelayer_conv2/Relu*,
_output_shapes
:���������� *
T0
�
.gradients/layer_conv2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv2/Relu_grad/ReluGrad*
_output_shapes
: *
T0*
data_formatNHWC
�
3gradients/layer_conv2/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv2/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv2/Relu_grad/ReluGrad
�
;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv2/Relu_grad/ReluGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/layer_conv2/Relu_grad/ReluGrad*,
_output_shapes
:���������� *
T0
�
=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv2/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*A
_class7
53loc:@gradients/layer_conv2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
/gradients/layer_conv2/conv1d/Squeeze_grad/ShapeShapelayer_conv2/conv1d/Conv2D*
_output_shapes
:*
T0*
out_type0
�
1gradients/layer_conv2/conv1d/Squeeze_grad/ReshapeReshape;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency/gradients/layer_conv2/conv1d/Squeeze_grad/Shape*
Tshape0*0
_output_shapes
:���������� *
T0
�
/gradients/layer_conv2/conv1d/Conv2D_grad/ShapeNShapeNlayer_conv2/conv1d/ExpandDimslayer_conv2/conv1d/ExpandDims_1*
T0*
out_type0*
N* 
_output_shapes
::
�
<gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput/gradients/layer_conv2/conv1d/Conv2D_grad/ShapeNlayer_conv2/conv1d/ExpandDims_11gradients/layer_conv2/conv1d/Squeeze_grad/Reshape*0
_output_shapes
:���������� *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
�
=gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterlayer_conv2/conv1d/ExpandDims1gradients/layer_conv2/conv1d/Conv2D_grad/ShapeN:11gradients/layer_conv2/conv1d/Squeeze_grad/Reshape*&
_output_shapes
:  *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
�
9gradients/layer_conv2/conv1d/Conv2D_grad/tuple/group_depsNoOp>^gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilter=^gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInput
�
Agradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependencyIdentity<gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInput:^gradients/layer_conv2/conv1d/Conv2D_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:���������� 
�
Cgradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependency_1Identity=gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilter:^gradients/layer_conv2/conv1d/Conv2D_grad/tuple/group_deps*&
_output_shapes
:  *
T0*P
_classF
DBloc:@gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilter
�
2gradients/layer_conv2/conv1d/ExpandDims_grad/ShapeShapemax_pooling1d/Squeeze*
T0*
out_type0*
_output_shapes
:
�
4gradients/layer_conv2/conv1d/ExpandDims_grad/ReshapeReshapeAgradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependency2gradients/layer_conv2/conv1d/ExpandDims_grad/Shape*
T0*
Tshape0*,
_output_shapes
:���������� 
�
4gradients/layer_conv2/conv1d/ExpandDims_1_grad/ShapeConst*!
valueB"           *
dtype0*
_output_shapes
:
�
6gradients/layer_conv2/conv1d/ExpandDims_1_grad/ReshapeReshapeCgradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependency_14gradients/layer_conv2/conv1d/ExpandDims_1_grad/Shape*"
_output_shapes
:  *
T0*
Tshape0

*gradients/max_pooling1d/Squeeze_grad/ShapeShapemax_pooling1d/MaxPool*
T0*
out_type0*
_output_shapes
:
�
,gradients/max_pooling1d/Squeeze_grad/ReshapeReshape4gradients/layer_conv2/conv1d/ExpandDims_grad/Reshape*gradients/max_pooling1d/Squeeze_grad/Shape*
Tshape0*0
_output_shapes
:���������� *
T0
�
0gradients/max_pooling1d/MaxPool_grad/MaxPoolGradMaxPoolGradmax_pooling1d/ExpandDimsmax_pooling1d/MaxPool,gradients/max_pooling1d/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*0
_output_shapes
:���������� 
}
-gradients/max_pooling1d/ExpandDims_grad/ShapeShapelayer_conv1/Relu*
_output_shapes
:*
T0*
out_type0
�
/gradients/max_pooling1d/ExpandDims_grad/ReshapeReshape0gradients/max_pooling1d/MaxPool_grad/MaxPoolGrad-gradients/max_pooling1d/ExpandDims_grad/Shape*
T0*
Tshape0*,
_output_shapes
:���������� 
�
(gradients/layer_conv1/Relu_grad/ReluGradReluGrad/gradients/max_pooling1d/ExpandDims_grad/Reshapelayer_conv1/Relu*
T0*,
_output_shapes
:���������� 
�
.gradients/layer_conv1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
�
3gradients/layer_conv1/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv1/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv1/Relu_grad/ReluGrad
�
;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv1/Relu_grad/ReluGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_conv1/Relu_grad/ReluGrad*,
_output_shapes
:���������� 
�
=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv1/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/layer_conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
/gradients/layer_conv1/conv1d/Squeeze_grad/ShapeShapelayer_conv1/conv1d/Conv2D*
T0*
out_type0*
_output_shapes
:
�
1gradients/layer_conv1/conv1d/Squeeze_grad/ReshapeReshape;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency/gradients/layer_conv1/conv1d/Squeeze_grad/Shape*
Tshape0*0
_output_shapes
:���������� *
T0
�
/gradients/layer_conv1/conv1d/Conv2D_grad/ShapeNShapeNlayer_conv1/conv1d/ExpandDimslayer_conv1/conv1d/ExpandDims_1*
T0*
out_type0*
N* 
_output_shapes
::
�
<gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput/gradients/layer_conv1/conv1d/Conv2D_grad/ShapeNlayer_conv1/conv1d/ExpandDims_11gradients/layer_conv1/conv1d/Squeeze_grad/Reshape*
paddingSAME*0
_output_shapes
:����������*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
=gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterlayer_conv1/conv1d/ExpandDims1gradients/layer_conv1/conv1d/Conv2D_grad/ShapeN:11gradients/layer_conv1/conv1d/Squeeze_grad/Reshape*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: *
	dilations
*
T0
�
9gradients/layer_conv1/conv1d/Conv2D_grad/tuple/group_depsNoOp>^gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilter=^gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInput
�
Agradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependencyIdentity<gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInput:^gradients/layer_conv1/conv1d/Conv2D_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:����������
�
Cgradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependency_1Identity=gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilter:^gradients/layer_conv1/conv1d/Conv2D_grad/tuple/group_deps*
T0*P
_classF
DBloc:@gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
y
2gradients/layer_conv1/conv1d/ExpandDims_grad/ShapeShapeReshape*
T0*
out_type0*
_output_shapes
:
�
4gradients/layer_conv1/conv1d/ExpandDims_grad/ReshapeReshapeAgradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependency2gradients/layer_conv1/conv1d/ExpandDims_grad/Shape*
T0*
Tshape0*,
_output_shapes
:����������
�
4gradients/layer_conv1/conv1d/ExpandDims_1_grad/ShapeConst*!
valueB"          *
dtype0*
_output_shapes
:
�
6gradients/layer_conv1/conv1d/ExpandDims_1_grad/ReshapeReshapeCgradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependency_14gradients/layer_conv1/conv1d/ExpandDims_1_grad/Shape*
T0*
Tshape0*"
_output_shapes
: 

gradients/Reshape_grad/ShapeShape#batch_normalization/batchnorm/add_1*
T0*
out_type0*
_output_shapes
:
�
gradients/Reshape_grad/ReshapeReshape4gradients/layer_conv1/conv1d/ExpandDims_grad/Reshapegradients/Reshape_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
8gradients/batch_normalization/batchnorm/add_1_grad/ShapeShape#batch_normalization/batchnorm/mul_1*
T0*
out_type0*
_output_shapes
:
�
:gradients/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:�*
dtype0*
_output_shapes
:
�
Hgradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization/batchnorm/add_1_grad/Shape:gradients/batch_normalization/batchnorm/add_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
6gradients/batch_normalization/batchnorm/add_1_grad/SumSumgradients/Reshape_grad/ReshapeHgradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
:gradients/batch_normalization/batchnorm/add_1_grad/ReshapeReshape6gradients/batch_normalization/batchnorm/add_1_grad/Sum8gradients/batch_normalization/batchnorm/add_1_grad/Shape*(
_output_shapes
:����������*
T0*
Tshape0
�
8gradients/batch_normalization/batchnorm/add_1_grad/Sum_1Sumgradients/Reshape_grad/ReshapeJgradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
<gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1Reshape8gradients/batch_normalization/batchnorm/add_1_grad/Sum_1:gradients/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:�
�
Cgradients/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOp;^gradients/batch_normalization/batchnorm/add_1_grad/Reshape=^gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1
�
Kgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentity:gradients/batch_normalization/batchnorm/add_1_grad/ReshapeD^gradients/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/batch_normalization/batchnorm/add_1_grad/Reshape*(
_output_shapes
:����������
�
Mgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1Identity<gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1D^gradients/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1*
_output_shapes	
:�
|
8gradients/batch_normalization/batchnorm/mul_1_grad/ShapeShapeCast*
T0*
out_type0*
_output_shapes
:
�
:gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
valueB:�*
dtype0*
_output_shapes
:
�
Hgradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization/batchnorm/mul_1_grad/Shape:gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization/batchnorm/mul_1_grad/MulMulKgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency!batch_normalization/batchnorm/mul*
T0*(
_output_shapes
:����������
�
6gradients/batch_normalization/batchnorm/mul_1_grad/SumSum6gradients/batch_normalization/batchnorm/mul_1_grad/MulHgradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization/batchnorm/mul_1_grad/ReshapeReshape6gradients/batch_normalization/batchnorm/mul_1_grad/Sum8gradients/batch_normalization/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
8gradients/batch_normalization/batchnorm/mul_1_grad/Mul_1MulCastKgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:����������
�
8gradients/batch_normalization/batchnorm/mul_1_grad/Sum_1Sum8gradients/batch_normalization/batchnorm/mul_1_grad/Mul_1Jgradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
<gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1Reshape8gradients/batch_normalization/batchnorm/mul_1_grad/Sum_1:gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:�
�
Cgradients/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOp;^gradients/batch_normalization/batchnorm/mul_1_grad/Reshape=^gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
Kgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentity:gradients/batch_normalization/batchnorm/mul_1_grad/ReshapeD^gradients/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/batch_normalization/batchnorm/mul_1_grad/Reshape*(
_output_shapes
:����������
�
Mgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1Identity<gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1D^gradients/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
_output_shapes	
:�
�
4gradients/batch_normalization/batchnorm/sub_grad/NegNegMgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:�
�
Agradients/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpN^gradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_15^gradients/batch_normalization/batchnorm/sub_grad/Neg
�
Igradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityMgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1B^gradients/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1*
_output_shapes	
:�
�
Kgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1Identity4gradients/batch_normalization/batchnorm/sub_grad/NegB^gradients/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/batch_normalization/batchnorm/sub_grad/Neg*
_output_shapes	
:�
�
6gradients/batch_normalization/batchnorm/mul_2_grad/MulMulKgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1!batch_normalization/batchnorm/mul*
T0*
_output_shapes	
:�
�
8gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1MulKgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1$batch_normalization/moving_mean/read*
_output_shapes	
:�*
T0
�
Cgradients/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOp7^gradients/batch_normalization/batchnorm/mul_2_grad/Mul9^gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1
�
Kgradients/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentity6gradients/batch_normalization/batchnorm/mul_2_grad/MulD^gradients/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/batch_normalization/batchnorm/mul_2_grad/Mul*
_output_shapes	
:�
�
Mgradients/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1Identity8gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1D^gradients/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1*
_output_shapes	
:�
�
gradients/AddNAddNMgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1Mgradients/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
N*
_output_shapes	
:�*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
4gradients/batch_normalization/batchnorm/mul_grad/MulMulgradients/AddNbatch_normalization/gamma/read*
T0*
_output_shapes	
:�
�
6gradients/batch_normalization/batchnorm/mul_grad/Mul_1Mulgradients/AddN#batch_normalization/batchnorm/Rsqrt*
T0*
_output_shapes	
:�
�
Agradients/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOp5^gradients/batch_normalization/batchnorm/mul_grad/Mul7^gradients/batch_normalization/batchnorm/mul_grad/Mul_1
�
Igradients/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentity4gradients/batch_normalization/batchnorm/mul_grad/MulB^gradients/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/batch_normalization/batchnorm/mul_grad/Mul*
_output_shapes	
:�
�
Kgradients/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1Identity6gradients/batch_normalization/batchnorm/mul_grad/Mul_1B^gradients/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/batch_normalization/batchnorm/mul_grad/Mul_1*
_output_shapes	
:�
�
beta1_power/initial_valueConst*
dtype0*
_output_shapes
: *+
_class!
loc:@batch_normalization/beta*
valueB
 *fff?
�
beta1_power
VariableV2*
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape: *
dtype0*
_output_shapes
: 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(
w
beta1_power/readIdentitybeta1_power*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: *
T0
�
beta2_power/initial_valueConst*+
_class!
loc:@batch_normalization/beta*
valueB
 *w�?*
dtype0*
_output_shapes
: 
�
beta2_power
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *+
_class!
loc:@batch_normalization/beta*
	container 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
w
beta2_power/readIdentitybeta2_power*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
@batch_normalization/gamma/Adam/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@batch_normalization/gamma*
valueB:�*
dtype0*
_output_shapes
:
�
6batch_normalization/gamma/Adam/Initializer/zeros/ConstConst*,
_class"
 loc:@batch_normalization/gamma*
valueB
 *    *
dtype0*
_output_shapes
: 
�
0batch_normalization/gamma/Adam/Initializer/zerosFill@batch_normalization/gamma/Adam/Initializer/zeros/shape_as_tensor6batch_normalization/gamma/Adam/Initializer/zeros/Const*,
_class"
 loc:@batch_normalization/gamma*

index_type0*
_output_shapes	
:�*
T0
�
batch_normalization/gamma/Adam
VariableV2*
_output_shapes	
:�*
shared_name *,
_class"
 loc:@batch_normalization/gamma*
	container *
shape:�*
dtype0
�
%batch_normalization/gamma/Adam/AssignAssignbatch_normalization/gamma/Adam0batch_normalization/gamma/Adam/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes	
:�
�
#batch_normalization/gamma/Adam/readIdentitybatch_normalization/gamma/Adam*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes	
:�
�
Bbatch_normalization/gamma/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@batch_normalization/gamma*
valueB:�*
dtype0*
_output_shapes
:
�
8batch_normalization/gamma/Adam_1/Initializer/zeros/ConstConst*,
_class"
 loc:@batch_normalization/gamma*
valueB
 *    *
dtype0*
_output_shapes
: 
�
2batch_normalization/gamma/Adam_1/Initializer/zerosFillBbatch_normalization/gamma/Adam_1/Initializer/zeros/shape_as_tensor8batch_normalization/gamma/Adam_1/Initializer/zeros/Const*
_output_shapes	
:�*
T0*,
_class"
 loc:@batch_normalization/gamma*

index_type0
�
 batch_normalization/gamma/Adam_1
VariableV2*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *,
_class"
 loc:@batch_normalization/gamma
�
'batch_normalization/gamma/Adam_1/AssignAssign batch_normalization/gamma/Adam_12batch_normalization/gamma/Adam_1/Initializer/zeros*
_output_shapes	
:�*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(
�
%batch_normalization/gamma/Adam_1/readIdentity batch_normalization/gamma/Adam_1*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes	
:�
�
?batch_normalization/beta/Adam/Initializer/zeros/shape_as_tensorConst*+
_class!
loc:@batch_normalization/beta*
valueB:�*
dtype0*
_output_shapes
:
�
5batch_normalization/beta/Adam/Initializer/zeros/ConstConst*+
_class!
loc:@batch_normalization/beta*
valueB
 *    *
dtype0*
_output_shapes
: 
�
/batch_normalization/beta/Adam/Initializer/zerosFill?batch_normalization/beta/Adam/Initializer/zeros/shape_as_tensor5batch_normalization/beta/Adam/Initializer/zeros/Const*
_output_shapes	
:�*
T0*+
_class!
loc:@batch_normalization/beta*

index_type0
�
batch_normalization/beta/Adam
VariableV2*
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
$batch_normalization/beta/Adam/AssignAssignbatch_normalization/beta/Adam/batch_normalization/beta/Adam/Initializer/zeros*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
�
"batch_normalization/beta/Adam/readIdentitybatch_normalization/beta/Adam*+
_class!
loc:@batch_normalization/beta*
_output_shapes	
:�*
T0
�
Abatch_normalization/beta/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*+
_class!
loc:@batch_normalization/beta*
valueB:�
�
7batch_normalization/beta/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *+
_class!
loc:@batch_normalization/beta*
valueB
 *    
�
1batch_normalization/beta/Adam_1/Initializer/zerosFillAbatch_normalization/beta/Adam_1/Initializer/zeros/shape_as_tensor7batch_normalization/beta/Adam_1/Initializer/zeros/Const*
T0*+
_class!
loc:@batch_normalization/beta*

index_type0*
_output_shapes	
:�
�
batch_normalization/beta/Adam_1
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape:�
�
&batch_normalization/beta/Adam_1/AssignAssignbatch_normalization/beta/Adam_11batch_normalization/beta/Adam_1/Initializer/zeros*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
$batch_normalization/beta/Adam_1/readIdentitybatch_normalization/beta/Adam_1*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes	
:�
�
)layer_conv1/kernel/Adam/Initializer/zerosConst*"
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*!
valueB *    *
dtype0
�
layer_conv1/kernel/Adam
VariableV2*
shape: *
dtype0*"
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel*
	container 
�
layer_conv1/kernel/Adam/AssignAssignlayer_conv1/kernel/Adam)layer_conv1/kernel/Adam/Initializer/zeros*
validate_shape(*"
_output_shapes
: *
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel
�
layer_conv1/kernel/Adam/readIdentitylayer_conv1/kernel/Adam*"
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel
�
+layer_conv1/kernel/Adam_1/Initializer/zerosConst*%
_class
loc:@layer_conv1/kernel*!
valueB *    *
dtype0*"
_output_shapes
: 
�
layer_conv1/kernel/Adam_1
VariableV2*
dtype0*"
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: 
�
 layer_conv1/kernel/Adam_1/AssignAssignlayer_conv1/kernel/Adam_1+layer_conv1/kernel/Adam_1/Initializer/zeros*"
_output_shapes
: *
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(
�
layer_conv1/kernel/Adam_1/readIdentitylayer_conv1/kernel/Adam_1*
T0*%
_class
loc:@layer_conv1/kernel*"
_output_shapes
: 
�
'layer_conv1/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
valueB *    
�
layer_conv1/bias/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: 
�
layer_conv1/bias/Adam/AssignAssignlayer_conv1/bias/Adam'layer_conv1/bias/Adam/Initializer/zeros*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
layer_conv1/bias/Adam/readIdentitylayer_conv1/bias/Adam*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 
�
)layer_conv1/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: 
�
layer_conv1/bias/Adam_1/AssignAssignlayer_conv1/bias/Adam_1)layer_conv1/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias
�
layer_conv1/bias/Adam_1/readIdentitylayer_conv1/bias/Adam_1*
_output_shapes
: *
T0*#
_class
loc:@layer_conv1/bias
�
9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*%
_class
loc:@layer_conv2/kernel*!
valueB"           *
dtype0
�
/layer_conv2/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0
�
)layer_conv2/kernel/Adam/Initializer/zerosFill9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensor/layer_conv2/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@layer_conv2/kernel*

index_type0*"
_output_shapes
:  
�
layer_conv2/kernel/Adam
VariableV2*
dtype0*"
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  
�
layer_conv2/kernel/Adam/AssignAssignlayer_conv2/kernel/Adam)layer_conv2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*"
_output_shapes
:  
�
layer_conv2/kernel/Adam/readIdentitylayer_conv2/kernel/Adam*"
_output_shapes
:  *
T0*%
_class
loc:@layer_conv2/kernel
�
;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
_class
loc:@layer_conv2/kernel*!
valueB"           
�
1layer_conv2/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0
�
+layer_conv2/kernel/Adam_1/Initializer/zerosFill;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensor1layer_conv2/kernel/Adam_1/Initializer/zeros/Const*"
_output_shapes
:  *
T0*%
_class
loc:@layer_conv2/kernel*

index_type0
�
layer_conv2/kernel/Adam_1
VariableV2*
dtype0*"
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  
�
 layer_conv2/kernel/Adam_1/AssignAssignlayer_conv2/kernel/Adam_1+layer_conv2/kernel/Adam_1/Initializer/zeros*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*"
_output_shapes
:  *
use_locking(
�
layer_conv2/kernel/Adam_1/readIdentitylayer_conv2/kernel/Adam_1*"
_output_shapes
:  *
T0*%
_class
loc:@layer_conv2/kernel
�
'layer_conv2/bias/Adam/Initializer/zerosConst*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0
�
layer_conv2/bias/Adam
VariableV2*
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
layer_conv2/bias/Adam/AssignAssignlayer_conv2/bias/Adam'layer_conv2/bias/Adam/Initializer/zeros*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
layer_conv2/bias/Adam/readIdentitylayer_conv2/bias/Adam*
_output_shapes
: *
T0*#
_class
loc:@layer_conv2/bias
�
)layer_conv2/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv2/bias/Adam_1
VariableV2*
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
layer_conv2/bias/Adam_1/AssignAssignlayer_conv2/bias/Adam_1)layer_conv2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
�
layer_conv2/bias/Adam_1/readIdentitylayer_conv2/bias/Adam_1*
T0*#
_class
loc:@layer_conv2/bias*
_output_shapes
: 
�
7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_fc1/kernel*
valueB"    �   *
dtype0*
_output_shapes
:
�
-layer_fc1/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0
�
'layer_fc1/kernel/Adam/Initializer/zerosFill7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensor-layer_fc1/kernel/Adam/Initializer/zeros/Const*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:
�@�*
T0
�
layer_fc1/kernel/Adam
VariableV2*
shape:
�@�*
dtype0* 
_output_shapes
:
�@�*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container 
�
layer_fc1/kernel/Adam/AssignAssignlayer_fc1/kernel/Adam'layer_fc1/kernel/Adam/Initializer/zeros*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
�@�*
use_locking(
�
layer_fc1/kernel/Adam/readIdentitylayer_fc1/kernel/Adam*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
�@�
�
9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_fc1/kernel*
valueB"    �   *
dtype0*
_output_shapes
:
�
/layer_fc1/kernel/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)layer_fc1/kernel/Adam_1/Initializer/zerosFill9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/layer_fc1/kernel/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:
�@�
�
layer_fc1/kernel/Adam_1
VariableV2*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container *
shape:
�@�*
dtype0* 
_output_shapes
:
�@�
�
layer_fc1/kernel/Adam_1/AssignAssignlayer_fc1/kernel/Adam_1)layer_fc1/kernel/Adam_1/Initializer/zeros*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
�@�*
use_locking(*
T0
�
layer_fc1/kernel/Adam_1/readIdentitylayer_fc1/kernel/Adam_1*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
�@�
�
%layer_fc1/bias/Adam/Initializer/zerosConst*
_output_shapes	
:�*!
_class
loc:@layer_fc1/bias*
valueB�*    *
dtype0
�
layer_fc1/bias/Adam
VariableV2*
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *!
_class
loc:@layer_fc1/bias*
	container 
�
layer_fc1/bias/Adam/AssignAssignlayer_fc1/bias/Adam%layer_fc1/bias/Adam/Initializer/zeros*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
layer_fc1/bias/Adam/readIdentitylayer_fc1/bias/Adam*
_output_shapes	
:�*
T0*!
_class
loc:@layer_fc1/bias
�
'layer_fc1/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_fc1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:�
�
layer_fc1/bias/Adam_1/AssignAssignlayer_fc1/bias/Adam_1'layer_fc1/bias/Adam_1/Initializer/zeros*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
layer_fc1/bias/Adam_1/readIdentitylayer_fc1/bias/Adam_1*
T0*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:�
�
Dlayer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
:layer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/ConstConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
4layer_combine_fc_cnn1d/kernel/Adam/Initializer/zerosFillDlayer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/shape_as_tensor:layer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/Const*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*

index_type0* 
_output_shapes
:
��
�
"layer_combine_fc_cnn1d/kernel/Adam
VariableV2*
shape:
��*
dtype0* 
_output_shapes
:
��*
shared_name *0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
	container 
�
)layer_combine_fc_cnn1d/kernel/Adam/AssignAssign"layer_combine_fc_cnn1d/kernel/Adam4layer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros* 
_output_shapes
:
��*
use_locking(*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
validate_shape(
�
'layer_combine_fc_cnn1d/kernel/Adam/readIdentity"layer_combine_fc_cnn1d/kernel/Adam*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel* 
_output_shapes
:
��
�
Flayer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
<layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/ConstConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
6layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zerosFillFlayer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/shape_as_tensor<layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/Const*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*

index_type0* 
_output_shapes
:
��
�
$layer_combine_fc_cnn1d/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
��*
shared_name *0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
	container *
shape:
��
�
+layer_combine_fc_cnn1d/kernel/Adam_1/AssignAssign$layer_combine_fc_cnn1d/kernel/Adam_16layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
)layer_combine_fc_cnn1d/kernel/Adam_1/readIdentity$layer_combine_fc_cnn1d/kernel/Adam_1* 
_output_shapes
:
��*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel
�
2layer_combine_fc_cnn1d/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:�*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
valueB�*    
�
 layer_combine_fc_cnn1d/bias/Adam
VariableV2*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
'layer_combine_fc_cnn1d/bias/Adam/AssignAssign layer_combine_fc_cnn1d/bias/Adam2layer_combine_fc_cnn1d/bias/Adam/Initializer/zeros*
_output_shapes	
:�*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(
�
%layer_combine_fc_cnn1d/bias/Adam/readIdentity layer_combine_fc_cnn1d/bias/Adam*
_output_shapes	
:�*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias
�
4layer_combine_fc_cnn1d/bias/Adam_1/Initializer/zerosConst*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
"layer_combine_fc_cnn1d/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
	container *
shape:�
�
)layer_combine_fc_cnn1d/bias/Adam_1/AssignAssign"layer_combine_fc_cnn1d/bias/Adam_14layer_combine_fc_cnn1d/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(*
_output_shapes	
:�
�
'layer_combine_fc_cnn1d/bias/Adam_1/readIdentity"layer_combine_fc_cnn1d/bias/Adam_1*
_output_shapes	
:�*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias
�
@layer_combine_fc_x/kernel/Adam/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
6layer_combine_fc_x/kernel/Adam/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
0layer_combine_fc_x/kernel/Adam/Initializer/zerosFill@layer_combine_fc_x/kernel/Adam/Initializer/zeros/shape_as_tensor6layer_combine_fc_x/kernel/Adam/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*

index_type0* 
_output_shapes
:
��
�
layer_combine_fc_x/kernel/Adam
VariableV2*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��
�
%layer_combine_fc_x/kernel/Adam/AssignAssignlayer_combine_fc_x/kernel/Adam0layer_combine_fc_x/kernel/Adam/Initializer/zeros*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0
�
#layer_combine_fc_x/kernel/Adam/readIdentitylayer_combine_fc_x/kernel/Adam*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��
�
Blayer_combine_fc_x/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
8layer_combine_fc_x/kernel/Adam_1/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
2layer_combine_fc_x/kernel/Adam_1/Initializer/zerosFillBlayer_combine_fc_x/kernel/Adam_1/Initializer/zeros/shape_as_tensor8layer_combine_fc_x/kernel/Adam_1/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*

index_type0* 
_output_shapes
:
��
�
 layer_combine_fc_x/kernel/Adam_1
VariableV2*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel
�
'layer_combine_fc_x/kernel/Adam_1/AssignAssign layer_combine_fc_x/kernel/Adam_12layer_combine_fc_x/kernel/Adam_1/Initializer/zeros* 
_output_shapes
:
��*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(
�
%layer_combine_fc_x/kernel/Adam_1/readIdentity layer_combine_fc_x/kernel/Adam_1*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��
�
.layer_combine_fc_x/bias/Adam/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_combine_fc_x/bias/Adam
VariableV2*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name **
_class 
loc:@layer_combine_fc_x/bias
�
#layer_combine_fc_x/bias/Adam/AssignAssignlayer_combine_fc_x/bias/Adam.layer_combine_fc_x/bias/Adam/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:�
�
!layer_combine_fc_x/bias/Adam/readIdentitylayer_combine_fc_x/bias/Adam*
_output_shapes	
:�*
T0**
_class 
loc:@layer_combine_fc_x/bias
�
0layer_combine_fc_x/bias/Adam_1/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_combine_fc_x/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape:�
�
%layer_combine_fc_x/bias/Adam_1/AssignAssignlayer_combine_fc_x/bias/Adam_10layer_combine_fc_x/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias
�
#layer_combine_fc_x/bias/Adam_1/readIdentitylayer_combine_fc_x/bias/Adam_1*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes	
:�
�
@layer_combine_fc_y/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"�      *
dtype0
�
6layer_combine_fc_y/kernel/Adam/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
0layer_combine_fc_y/kernel/Adam/Initializer/zerosFill@layer_combine_fc_y/kernel/Adam/Initializer/zeros/shape_as_tensor6layer_combine_fc_y/kernel/Adam/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*

index_type0*
_output_shapes
:	�
�
layer_combine_fc_y/kernel/Adam
VariableV2*
dtype0*
_output_shapes
:	�*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel*
	container *
shape:	�
�
%layer_combine_fc_y/kernel/Adam/AssignAssignlayer_combine_fc_y/kernel/Adam0layer_combine_fc_y/kernel/Adam/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	�
�
#layer_combine_fc_y/kernel/Adam/readIdentitylayer_combine_fc_y/kernel/Adam*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	�
�
Blayer_combine_fc_y/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"�      *
dtype0*
_output_shapes
:
�
8layer_combine_fc_y/kernel/Adam_1/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
2layer_combine_fc_y/kernel/Adam_1/Initializer/zerosFillBlayer_combine_fc_y/kernel/Adam_1/Initializer/zeros/shape_as_tensor8layer_combine_fc_y/kernel/Adam_1/Initializer/zeros/Const*,
_class"
 loc:@layer_combine_fc_y/kernel*

index_type0*
_output_shapes
:	�*
T0
�
 layer_combine_fc_y/kernel/Adam_1
VariableV2*
	container *
shape:	�*
dtype0*
_output_shapes
:	�*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel
�
'layer_combine_fc_y/kernel/Adam_1/AssignAssign layer_combine_fc_y/kernel/Adam_12layer_combine_fc_y/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	�
�
%layer_combine_fc_y/kernel/Adam_1/readIdentity layer_combine_fc_y/kernel/Adam_1*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	�*
T0
�
.layer_combine_fc_y/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    
�
layer_combine_fc_y/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name **
_class 
loc:@layer_combine_fc_y/bias*
	container *
shape:
�
#layer_combine_fc_y/bias/Adam/AssignAssignlayer_combine_fc_y/bias/Adam.layer_combine_fc_y/bias/Adam/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
�
!layer_combine_fc_y/bias/Adam/readIdentitylayer_combine_fc_y/bias/Adam*
_output_shapes
:*
T0**
_class 
loc:@layer_combine_fc_y/bias
�
0layer_combine_fc_y/bias/Adam_1/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    *
dtype0*
_output_shapes
:
�
layer_combine_fc_y/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name **
_class 
loc:@layer_combine_fc_y/bias*
	container *
shape:
�
%layer_combine_fc_y/bias/Adam_1/AssignAssignlayer_combine_fc_y/bias/Adam_10layer_combine_fc_y/bias/Adam_1/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
�
#layer_combine_fc_y/bias/Adam_1/readIdentitylayer_combine_fc_y/bias/Adam_1*
_output_shapes
:*
T0**
_class 
loc:@layer_combine_fc_y/bias
W
Adam/learning_rateConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
/Adam/update_batch_normalization/gamma/ApplyAdam	ApplyAdambatch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonKgradients/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*
_output_shapes	
:�*
use_locking( *
T0*,
_class"
 loc:@batch_normalization/gamma*
use_nesterov( 
�
.Adam/update_batch_normalization/beta/ApplyAdam	ApplyAdambatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonIgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*
T0*+
_class!
loc:@batch_normalization/beta*
use_nesterov( *
_output_shapes	
:�*
use_locking( 
�
(Adam/update_layer_conv1/kernel/ApplyAdam	ApplyAdamlayer_conv1/kernellayer_conv1/kernel/Adamlayer_conv1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/layer_conv1/conv1d/ExpandDims_1_grad/Reshape*
use_locking( *
T0*%
_class
loc:@layer_conv1/kernel*
use_nesterov( *"
_output_shapes
: 
�
&Adam/update_layer_conv1/bias/ApplyAdam	ApplyAdamlayer_conv1/biaslayer_conv1/bias/Adamlayer_conv1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_conv1/bias*
use_nesterov( *
_output_shapes
: 
�
(Adam/update_layer_conv2/kernel/ApplyAdam	ApplyAdamlayer_conv2/kernellayer_conv2/kernel/Adamlayer_conv2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/layer_conv2/conv1d/ExpandDims_1_grad/Reshape*
use_nesterov( *"
_output_shapes
:  *
use_locking( *
T0*%
_class
loc:@layer_conv2/kernel
�
&Adam/update_layer_conv2/bias/ApplyAdam	ApplyAdamlayer_conv2/biaslayer_conv2/bias/Adamlayer_conv2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_conv2/bias*
use_nesterov( *
_output_shapes
: 
�
&Adam/update_layer_fc1/kernel/ApplyAdam	ApplyAdamlayer_fc1/kernellayer_fc1/kernel/Adamlayer_fc1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1*
use_nesterov( * 
_output_shapes
:
�@�*
use_locking( *
T0*#
_class
loc:@layer_fc1/kernel
�
$Adam/update_layer_fc1/bias/ApplyAdam	ApplyAdamlayer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes	
:�*
use_locking( *
T0*!
_class
loc:@layer_fc1/bias*
use_nesterov( 
�
3Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_cnn1d/kernel"layer_combine_fc_cnn1d/kernel/Adam$layer_combine_fc_cnn1d/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonGgradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
use_nesterov( * 
_output_shapes
:
��
�
1Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam	ApplyAdamlayer_combine_fc_cnn1d/bias layer_combine_fc_cnn1d/bias/Adam"layer_combine_fc_cnn1d/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonHgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
use_nesterov( *
_output_shapes	
:�*
use_locking( 
�
/Adam/update_layer_combine_fc_x/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_x/kernellayer_combine_fc_x/kernel/Adam layer_combine_fc_x/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonCgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
use_nesterov( * 
_output_shapes
:
��
�
-Adam/update_layer_combine_fc_x/bias/ApplyAdam	ApplyAdamlayer_combine_fc_x/biaslayer_combine_fc_x/bias/Adamlayer_combine_fc_x/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency_1**
_class 
loc:@layer_combine_fc_x/bias*
use_nesterov( *
_output_shapes	
:�*
use_locking( *
T0
�
/Adam/update_layer_combine_fc_y/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_y/kernellayer_combine_fc_y/kernel/Adam layer_combine_fc_y/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonCgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependency_1*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
use_nesterov( *
_output_shapes
:	�*
use_locking( 
�
-Adam/update_layer_combine_fc_y/bias/ApplyAdam	ApplyAdamlayer_combine_fc_y/biaslayer_combine_fc_y/bias/Adamlayer_combine_fc_y/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0**
_class 
loc:@layer_combine_fc_y/bias*
use_nesterov( *
_output_shapes
:
�
Adam/mulMulbeta1_power/read
Adam/beta1/^Adam/update_batch_normalization/beta/ApplyAdam0^Adam/update_batch_normalization/gamma/ApplyAdam2^Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam4^Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2/^Adam/update_batch_normalization/beta/ApplyAdam0^Adam/update_batch_normalization/gamma/ApplyAdam2^Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam4^Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking( *
T0
�
Adam/updateNoOp^Adam/Assign^Adam/Assign_1/^Adam/update_batch_normalization/beta/ApplyAdam0^Adam/update_batch_normalization/gamma/ApplyAdam2^Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam4^Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam
z

Adam/valueConst^Adam/update*
_output_shapes
: *
_class
loc:@global_step*
value	B	 R*
dtype0	
~
Adam	AssignAddglobal_step
Adam/value*
use_locking( *
T0	*
_class
loc:@global_step*
_output_shapes
: 
W
EqualEqualArgMaxIteratorGetNext:4*
T0	*#
_output_shapes
:���������
c
ToFloatCastEqual*

SrcT0
*
Truncate( *#
_output_shapes
:���������*

DstT0
�
 accuracy/total/Initializer/zerosConst*
dtype0*
_output_shapes
: *!
_class
loc:@accuracy/total*
valueB
 *    
�
accuracy/total
VariableV2*
shared_name *!
_class
loc:@accuracy/total*
	container *
shape: *
dtype0*
_output_shapes
: 
�
accuracy/total/AssignAssignaccuracy/total accuracy/total/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*!
_class
loc:@accuracy/total
s
accuracy/total/readIdentityaccuracy/total*
_output_shapes
: *
T0*!
_class
loc:@accuracy/total
�
 accuracy/count/Initializer/zerosConst*!
_class
loc:@accuracy/count*
valueB
 *    *
dtype0*
_output_shapes
: 
�
accuracy/count
VariableV2*
dtype0*
_output_shapes
: *
shared_name *!
_class
loc:@accuracy/count*
	container *
shape: 
�
accuracy/count/AssignAssignaccuracy/count accuracy/count/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@accuracy/count*
validate_shape(*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*
T0*!
_class
loc:@accuracy/count*
_output_shapes
: 
O
accuracy/SizeSizeToFloat*
T0*
out_type0*
_output_shapes
: 
g
accuracy/ToFloatCastaccuracy/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
X
accuracy/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
j
accuracy/SumSumToFloataccuracy/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
T0*!
_class
loc:@accuracy/total*
_output_shapes
: *
use_locking( 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat^ToFloat*
use_locking( *
T0*!
_class
loc:@accuracy/count*
_output_shapes
: 
f
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read*
T0*
_output_shapes
: 
X
accuracy/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
accuracy/GreaterGreateraccuracy/count/readaccuracy/zeros_like*
T0*
_output_shapes
: 
r
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/zeros_like*
T0*
_output_shapes
: 
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
_output_shapes
: *
T0
Z
accuracy/zeros_like_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
k
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/zeros_like_1*
_output_shapes
: *
T0
|
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/zeros_like_1*
_output_shapes
: *
T0
Z
accuracy_1/tagsConst*
valueB B
accuracy_1*
dtype0*
_output_shapes
: 
a

accuracy_1ScalarSummaryaccuracy_1/tagsaccuracy/update_op*
_output_shapes
: *
T0
N
	loss/tagsConst*
_output_shapes
: *
valueB
 Bloss*
dtype0
G
lossScalarSummary	loss/tagsMean*
T0*
_output_shapes
: 
�
initNoOp%^batch_normalization/beta/Adam/Assign'^batch_normalization/beta/Adam_1/Assign ^batch_normalization/beta/Assign&^batch_normalization/gamma/Adam/Assign(^batch_normalization/gamma/Adam_1/Assign!^batch_normalization/gamma/Assign'^batch_normalization/moving_mean/Assign+^batch_normalization/moving_variance/Assign"^batch_normalization_1/beta/Assign#^batch_normalization_1/gamma/Assign)^batch_normalization_1/moving_mean/Assign-^batch_normalization_1/moving_variance/Assign"^batch_normalization_2/beta/Assign#^batch_normalization_2/gamma/Assign)^batch_normalization_2/moving_mean/Assign-^batch_normalization_2/moving_variance/Assign^beta1_power/Assign^beta2_power/Assign^global_step/Assign(^layer_combine_fc_cnn1d/bias/Adam/Assign*^layer_combine_fc_cnn1d/bias/Adam_1/Assign#^layer_combine_fc_cnn1d/bias/Assign*^layer_combine_fc_cnn1d/kernel/Adam/Assign,^layer_combine_fc_cnn1d/kernel/Adam_1/Assign%^layer_combine_fc_cnn1d/kernel/Assign$^layer_combine_fc_x/bias/Adam/Assign&^layer_combine_fc_x/bias/Adam_1/Assign^layer_combine_fc_x/bias/Assign&^layer_combine_fc_x/kernel/Adam/Assign(^layer_combine_fc_x/kernel/Adam_1/Assign!^layer_combine_fc_x/kernel/Assign$^layer_combine_fc_y/bias/Adam/Assign&^layer_combine_fc_y/bias/Adam_1/Assign^layer_combine_fc_y/bias/Assign&^layer_combine_fc_y/kernel/Adam/Assign(^layer_combine_fc_y/kernel/Adam_1/Assign!^layer_combine_fc_y/kernel/Assign^layer_conv1/bias/Adam/Assign^layer_conv1/bias/Adam_1/Assign^layer_conv1/bias/Assign^layer_conv1/kernel/Adam/Assign!^layer_conv1/kernel/Adam_1/Assign^layer_conv1/kernel/Assign^layer_conv2/bias/Adam/Assign^layer_conv2/bias/Adam_1/Assign^layer_conv2/bias/Assign^layer_conv2/kernel/Adam/Assign!^layer_conv2/kernel/Adam_1/Assign^layer_conv2/kernel/Assign^layer_dnn_1/bias/Assign^layer_dnn_1/kernel/Assign^layer_dnn_2/bias/Assign^layer_dnn_2/kernel/Assign^layer_fc1/bias/Adam/Assign^layer_fc1/bias/Adam_1/Assign^layer_fc1/bias/Assign^layer_fc1/kernel/Adam/Assign^layer_fc1/kernel/Adam_1/Assign^layer_fc1/kernel/Assign^layer_length_conv1/bias/Assign!^layer_length_conv1/kernel/Assign^layer_length_conv2/bias/Assign!^layer_length_conv2/kernel/Assign^layer_length_fc1/bias/Assign^layer_length_fc1/kernel/Assign^layer_rnn_fc_1/bias/Assign^layer_rnn_fc_1/kernel/Assign^rnn/basic_rnn_cell/bias/Assign!^rnn/basic_rnn_cell/kernel/Assign^word_embeddings/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
�
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedbatch_normalization/gamma*
dtype0*
_output_shapes
: *,
_class"
 loc:@batch_normalization/gamma
�
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedbatch_normalization/beta*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedbatch_normalization/moving_mean*2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitialized#batch_normalization/moving_variance*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedlayer_conv1/kernel*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*
dtype0
�
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializedlayer_conv1/bias*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializedlayer_conv2/kernel*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel
�
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedlayer_conv2/bias*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializedlayer_fc1/kernel*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitializedlayer_fc1/bias*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitializedword_embeddings*"
_class
loc:@word_embeddings*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitializedrnn/basic_rnn_cell/kernel*
_output_shapes
: *,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
dtype0
�
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializedrnn/basic_rnn_cell/bias**
_class 
loc:@rnn/basic_rnn_cell/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializedlayer_rnn_fc_1/kernel*(
_class
loc:@layer_rnn_fc_1/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializedlayer_rnn_fc_1/bias*&
_class
loc:@layer_rnn_fc_1/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializedbatch_normalization_1/gamma*.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_17IsVariableInitializedbatch_normalization_1/beta*
_output_shapes
: *-
_class#
!loc:@batch_normalization_1/beta*
dtype0
�
7report_uninitialized_variables/IsVariableInitialized_18IsVariableInitialized!batch_normalization_1/moving_mean*4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_19IsVariableInitialized%batch_normalization_1/moving_variance*
_output_shapes
: *8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0
�
7report_uninitialized_variables/IsVariableInitialized_20IsVariableInitializedlayer_dnn_1/kernel*%
_class
loc:@layer_dnn_1/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_21IsVariableInitializedlayer_dnn_1/bias*#
_class
loc:@layer_dnn_1/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_22IsVariableInitializedlayer_dnn_2/kernel*%
_class
loc:@layer_dnn_2/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_23IsVariableInitializedlayer_dnn_2/bias*#
_class
loc:@layer_dnn_2/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_24IsVariableInitializedbatch_normalization_2/gamma*
dtype0*
_output_shapes
: *.
_class$
" loc:@batch_normalization_2/gamma
�
7report_uninitialized_variables/IsVariableInitialized_25IsVariableInitializedbatch_normalization_2/beta*-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_26IsVariableInitialized!batch_normalization_2/moving_mean*4
_class*
(&loc:@batch_normalization_2/moving_mean*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_27IsVariableInitialized%batch_normalization_2/moving_variance*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_28IsVariableInitializedlayer_length_conv1/kernel*
_output_shapes
: *,
_class"
 loc:@layer_length_conv1/kernel*
dtype0
�
7report_uninitialized_variables/IsVariableInitialized_29IsVariableInitializedlayer_length_conv1/bias*
_output_shapes
: **
_class 
loc:@layer_length_conv1/bias*
dtype0
�
7report_uninitialized_variables/IsVariableInitialized_30IsVariableInitializedlayer_length_conv2/kernel*,
_class"
 loc:@layer_length_conv2/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_31IsVariableInitializedlayer_length_conv2/bias**
_class 
loc:@layer_length_conv2/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_32IsVariableInitializedlayer_length_fc1/kernel**
_class 
loc:@layer_length_fc1/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_33IsVariableInitializedlayer_length_fc1/bias*(
_class
loc:@layer_length_fc1/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_34IsVariableInitializedlayer_combine_fc_cnn1d/kernel*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_35IsVariableInitializedlayer_combine_fc_cnn1d/bias*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_36IsVariableInitializedlayer_combine_fc_x/kernel*
dtype0*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_x/kernel
�
7report_uninitialized_variables/IsVariableInitialized_37IsVariableInitializedlayer_combine_fc_x/bias*
_output_shapes
: **
_class 
loc:@layer_combine_fc_x/bias*
dtype0
�
7report_uninitialized_variables/IsVariableInitialized_38IsVariableInitializedlayer_combine_fc_y/kernel*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_39IsVariableInitializedlayer_combine_fc_y/bias**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_40IsVariableInitializedbeta1_power*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_41IsVariableInitializedbeta2_power*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_42IsVariableInitializedbatch_normalization/gamma/Adam*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_43IsVariableInitialized batch_normalization/gamma/Adam_1*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_44IsVariableInitializedbatch_normalization/beta/Adam*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_45IsVariableInitializedbatch_normalization/beta/Adam_1*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_46IsVariableInitializedlayer_conv1/kernel/Adam*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_47IsVariableInitializedlayer_conv1/kernel/Adam_1*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_48IsVariableInitializedlayer_conv1/bias/Adam*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_49IsVariableInitializedlayer_conv1/bias/Adam_1*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_50IsVariableInitializedlayer_conv2/kernel/Adam*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_51IsVariableInitializedlayer_conv2/kernel/Adam_1*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_52IsVariableInitializedlayer_conv2/bias/Adam*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_53IsVariableInitializedlayer_conv2/bias/Adam_1*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_54IsVariableInitializedlayer_fc1/kernel/Adam*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_55IsVariableInitializedlayer_fc1/kernel/Adam_1*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel*
dtype0
�
7report_uninitialized_variables/IsVariableInitialized_56IsVariableInitializedlayer_fc1/bias/Adam*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_57IsVariableInitializedlayer_fc1/bias/Adam_1*
dtype0*
_output_shapes
: *!
_class
loc:@layer_fc1/bias
�
7report_uninitialized_variables/IsVariableInitialized_58IsVariableInitialized"layer_combine_fc_cnn1d/kernel/Adam*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_59IsVariableInitialized$layer_combine_fc_cnn1d/kernel/Adam_1*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_60IsVariableInitialized layer_combine_fc_cnn1d/bias/Adam*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_61IsVariableInitialized"layer_combine_fc_cnn1d/bias/Adam_1*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_62IsVariableInitializedlayer_combine_fc_x/kernel/Adam*,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_63IsVariableInitialized layer_combine_fc_x/kernel/Adam_1*
dtype0*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_x/kernel
�
7report_uninitialized_variables/IsVariableInitialized_64IsVariableInitializedlayer_combine_fc_x/bias/Adam**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_65IsVariableInitializedlayer_combine_fc_x/bias/Adam_1**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_66IsVariableInitializedlayer_combine_fc_y/kernel/Adam*
dtype0*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_y/kernel
�
7report_uninitialized_variables/IsVariableInitialized_67IsVariableInitialized layer_combine_fc_y/kernel/Adam_1*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_68IsVariableInitializedlayer_combine_fc_y/bias/Adam*
_output_shapes
: **
_class 
loc:@layer_combine_fc_y/bias*
dtype0
�
7report_uninitialized_variables/IsVariableInitialized_69IsVariableInitializedlayer_combine_fc_y/bias/Adam_1*
_output_shapes
: **
_class 
loc:@layer_combine_fc_y/bias*
dtype0
�
7report_uninitialized_variables/IsVariableInitialized_70IsVariableInitializedaccuracy/total*!
_class
loc:@accuracy/total*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_71IsVariableInitializedaccuracy/count*!
_class
loc:@accuracy/count*
dtype0*
_output_shapes
: 
� 
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_117report_uninitialized_variables/IsVariableInitialized_127report_uninitialized_variables/IsVariableInitialized_137report_uninitialized_variables/IsVariableInitialized_147report_uninitialized_variables/IsVariableInitialized_157report_uninitialized_variables/IsVariableInitialized_167report_uninitialized_variables/IsVariableInitialized_177report_uninitialized_variables/IsVariableInitialized_187report_uninitialized_variables/IsVariableInitialized_197report_uninitialized_variables/IsVariableInitialized_207report_uninitialized_variables/IsVariableInitialized_217report_uninitialized_variables/IsVariableInitialized_227report_uninitialized_variables/IsVariableInitialized_237report_uninitialized_variables/IsVariableInitialized_247report_uninitialized_variables/IsVariableInitialized_257report_uninitialized_variables/IsVariableInitialized_267report_uninitialized_variables/IsVariableInitialized_277report_uninitialized_variables/IsVariableInitialized_287report_uninitialized_variables/IsVariableInitialized_297report_uninitialized_variables/IsVariableInitialized_307report_uninitialized_variables/IsVariableInitialized_317report_uninitialized_variables/IsVariableInitialized_327report_uninitialized_variables/IsVariableInitialized_337report_uninitialized_variables/IsVariableInitialized_347report_uninitialized_variables/IsVariableInitialized_357report_uninitialized_variables/IsVariableInitialized_367report_uninitialized_variables/IsVariableInitialized_377report_uninitialized_variables/IsVariableInitialized_387report_uninitialized_variables/IsVariableInitialized_397report_uninitialized_variables/IsVariableInitialized_407report_uninitialized_variables/IsVariableInitialized_417report_uninitialized_variables/IsVariableInitialized_427report_uninitialized_variables/IsVariableInitialized_437report_uninitialized_variables/IsVariableInitialized_447report_uninitialized_variables/IsVariableInitialized_457report_uninitialized_variables/IsVariableInitialized_467report_uninitialized_variables/IsVariableInitialized_477report_uninitialized_variables/IsVariableInitialized_487report_uninitialized_variables/IsVariableInitialized_497report_uninitialized_variables/IsVariableInitialized_507report_uninitialized_variables/IsVariableInitialized_517report_uninitialized_variables/IsVariableInitialized_527report_uninitialized_variables/IsVariableInitialized_537report_uninitialized_variables/IsVariableInitialized_547report_uninitialized_variables/IsVariableInitialized_557report_uninitialized_variables/IsVariableInitialized_567report_uninitialized_variables/IsVariableInitialized_577report_uninitialized_variables/IsVariableInitialized_587report_uninitialized_variables/IsVariableInitialized_597report_uninitialized_variables/IsVariableInitialized_607report_uninitialized_variables/IsVariableInitialized_617report_uninitialized_variables/IsVariableInitialized_627report_uninitialized_variables/IsVariableInitialized_637report_uninitialized_variables/IsVariableInitialized_647report_uninitialized_variables/IsVariableInitialized_657report_uninitialized_variables/IsVariableInitialized_667report_uninitialized_variables/IsVariableInitialized_677report_uninitialized_variables/IsVariableInitialized_687report_uninitialized_variables/IsVariableInitialized_697report_uninitialized_variables/IsVariableInitialized_707report_uninitialized_variables/IsVariableInitialized_71"/device:CPU:0*
T0
*

axis *
NH*
_output_shapes
:H
�
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack"/device:CPU:0*
_output_shapes
:H
�
$report_uninitialized_variables/ConstConst"/device:CPU:0*�
value�B�HBglobal_stepBbatch_normalization/gammaBbatch_normalization/betaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBlayer_conv1/kernelBlayer_conv1/biasBlayer_conv2/kernelBlayer_conv2/biasBlayer_fc1/kernelBlayer_fc1/biasBword_embeddingsBrnn/basic_rnn_cell/kernelBrnn/basic_rnn_cell/biasBlayer_rnn_fc_1/kernelBlayer_rnn_fc_1/biasBbatch_normalization_1/gammaBbatch_normalization_1/betaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBlayer_dnn_1/kernelBlayer_dnn_1/biasBlayer_dnn_2/kernelBlayer_dnn_2/biasBbatch_normalization_2/gammaBbatch_normalization_2/betaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBlayer_length_conv1/kernelBlayer_length_conv1/biasBlayer_length_conv2/kernelBlayer_length_conv2/biasBlayer_length_fc1/kernelBlayer_length_fc1/biasBlayer_combine_fc_cnn1d/kernelBlayer_combine_fc_cnn1d/biasBlayer_combine_fc_x/kernelBlayer_combine_fc_x/biasBlayer_combine_fc_y/kernelBlayer_combine_fc_y/biasBbeta1_powerBbeta2_powerBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Blayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1B"layer_combine_fc_cnn1d/kernel/AdamB$layer_combine_fc_cnn1d/kernel/Adam_1B layer_combine_fc_cnn1d/bias/AdamB"layer_combine_fc_cnn1d/bias/Adam_1Blayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1Baccuracy/totalBaccuracy/count*
dtype0*
_output_shapes
:H
�
1report_uninitialized_variables/boolean_mask/ShapeConst"/device:CPU:0*
valueB:H*
dtype0*
_output_shapes
:
�
?report_uninitialized_variables/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
�
Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices"/device:CPU:0*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
3report_uninitialized_variables/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:H*
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
�
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
�
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
�
3report_uninitialized_variables/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:H*
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
;report_uninitialized_variables/boolean_mask/strided_slice_2StridedSlice3report_uninitialized_variables/boolean_mask/Shape_2Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackCreport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask
�
;report_uninitialized_variables/boolean_mask/concat/values_1Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/strided_slice_1;report_uninitialized_variables/boolean_mask/concat/values_1;report_uninitialized_variables/boolean_mask/strided_slice_27report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*

Tidx0*
T0*
N*
_output_shapes
:
�
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:H
�
;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
���������*
dtype0*
_output_shapes
:
�
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:H
�
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*
T0
*'
_output_shapes
:���������
�
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:���������
�
9report_uninitialized_variables/boolean_mask/GatherV2/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
4report_uninitialized_variables/boolean_mask/GatherV2GatherV23report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze9report_uninitialized_variables/boolean_mask/GatherV2/axis"/device:CPU:0*#
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0
v
$report_uninitialized_resources/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
M
concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
concatConcatV24report_uninitialized_variables/boolean_mask/GatherV2$report_uninitialized_resources/Constconcat/axis*
N*#
_output_shapes
:���������*

Tidx0*
T0
�
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedbatch_normalization/gamma*
dtype0*
_output_shapes
: *,
_class"
 loc:@batch_normalization/gamma
�
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedbatch_normalization/beta*
dtype0*
_output_shapes
: *+
_class!
loc:@batch_normalization/beta
�
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedbatch_normalization/moving_mean*2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitialized#batch_normalization/moving_variance*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedlayer_conv1/kernel*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializedlayer_conv1/bias*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv1/bias
�
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializedlayer_conv2/kernel*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedlayer_conv2/bias*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv2/bias
�
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializedlayer_fc1/kernel*
dtype0*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel
�
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitializedlayer_fc1/bias*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitializedword_embeddings*
dtype0*
_output_shapes
: *"
_class
loc:@word_embeddings
�
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitializedrnn/basic_rnn_cell/kernel*
_output_shapes
: *,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializedrnn/basic_rnn_cell/bias**
_class 
loc:@rnn/basic_rnn_cell/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializedlayer_rnn_fc_1/kernel*(
_class
loc:@layer_rnn_fc_1/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_15IsVariableInitializedlayer_rnn_fc_1/bias*&
_class
loc:@layer_rnn_fc_1/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_16IsVariableInitializedbatch_normalization_1/gamma*.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_17IsVariableInitializedbatch_normalization_1/beta*-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_18IsVariableInitialized!batch_normalization_1/moving_mean*4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_19IsVariableInitialized%batch_normalization_1/moving_variance*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_20IsVariableInitializedlayer_dnn_1/kernel*%
_class
loc:@layer_dnn_1/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_21IsVariableInitializedlayer_dnn_1/bias*#
_class
loc:@layer_dnn_1/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_22IsVariableInitializedlayer_dnn_2/kernel*%
_class
loc:@layer_dnn_2/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_23IsVariableInitializedlayer_dnn_2/bias*#
_class
loc:@layer_dnn_2/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_24IsVariableInitializedbatch_normalization_2/gamma*.
_class$
" loc:@batch_normalization_2/gamma*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_25IsVariableInitializedbatch_normalization_2/beta*-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_26IsVariableInitialized!batch_normalization_2/moving_mean*
dtype0*
_output_shapes
: *4
_class*
(&loc:@batch_normalization_2/moving_mean
�
9report_uninitialized_variables_1/IsVariableInitialized_27IsVariableInitialized%batch_normalization_2/moving_variance*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_28IsVariableInitializedlayer_length_conv1/kernel*,
_class"
 loc:@layer_length_conv1/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_29IsVariableInitializedlayer_length_conv1/bias**
_class 
loc:@layer_length_conv1/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_30IsVariableInitializedlayer_length_conv2/kernel*,
_class"
 loc:@layer_length_conv2/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_31IsVariableInitializedlayer_length_conv2/bias*
_output_shapes
: **
_class 
loc:@layer_length_conv2/bias*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_32IsVariableInitializedlayer_length_fc1/kernel**
_class 
loc:@layer_length_fc1/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_33IsVariableInitializedlayer_length_fc1/bias*
dtype0*
_output_shapes
: *(
_class
loc:@layer_length_fc1/bias
�
9report_uninitialized_variables_1/IsVariableInitialized_34IsVariableInitializedlayer_combine_fc_cnn1d/kernel*
dtype0*
_output_shapes
: *0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel
�
9report_uninitialized_variables_1/IsVariableInitialized_35IsVariableInitializedlayer_combine_fc_cnn1d/bias*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_36IsVariableInitializedlayer_combine_fc_x/kernel*,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_37IsVariableInitializedlayer_combine_fc_x/bias*
dtype0*
_output_shapes
: **
_class 
loc:@layer_combine_fc_x/bias
�
9report_uninitialized_variables_1/IsVariableInitialized_38IsVariableInitializedlayer_combine_fc_y/kernel*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_39IsVariableInitializedlayer_combine_fc_y/bias**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_40IsVariableInitializedbeta1_power*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_41IsVariableInitializedbeta2_power*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_42IsVariableInitializedbatch_normalization/gamma/Adam*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_43IsVariableInitialized batch_normalization/gamma/Adam_1*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_44IsVariableInitializedbatch_normalization/beta/Adam*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_45IsVariableInitializedbatch_normalization/beta/Adam_1*
_output_shapes
: *+
_class!
loc:@batch_normalization/beta*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_46IsVariableInitializedlayer_conv1/kernel/Adam*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_47IsVariableInitializedlayer_conv1/kernel/Adam_1*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel
�
9report_uninitialized_variables_1/IsVariableInitialized_48IsVariableInitializedlayer_conv1/bias/Adam*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_49IsVariableInitializedlayer_conv1/bias/Adam_1*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_50IsVariableInitializedlayer_conv2/kernel/Adam*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_51IsVariableInitializedlayer_conv2/kernel/Adam_1*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_52IsVariableInitializedlayer_conv2/bias/Adam*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv2/bias
�
9report_uninitialized_variables_1/IsVariableInitialized_53IsVariableInitializedlayer_conv2/bias/Adam_1*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv2/bias
�
9report_uninitialized_variables_1/IsVariableInitialized_54IsVariableInitializedlayer_fc1/kernel/Adam*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_55IsVariableInitializedlayer_fc1/kernel/Adam_1*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_56IsVariableInitializedlayer_fc1/bias/Adam*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_57IsVariableInitializedlayer_fc1/bias/Adam_1*
_output_shapes
: *!
_class
loc:@layer_fc1/bias*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_58IsVariableInitialized"layer_combine_fc_cnn1d/kernel/Adam*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_59IsVariableInitialized$layer_combine_fc_cnn1d/kernel/Adam_1*
_output_shapes
: *0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_60IsVariableInitialized layer_combine_fc_cnn1d/bias/Adam*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_61IsVariableInitialized"layer_combine_fc_cnn1d/bias/Adam_1*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_62IsVariableInitializedlayer_combine_fc_x/kernel/Adam*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_63IsVariableInitialized layer_combine_fc_x/kernel/Adam_1*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_64IsVariableInitializedlayer_combine_fc_x/bias/Adam**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_65IsVariableInitializedlayer_combine_fc_x/bias/Adam_1*
dtype0*
_output_shapes
: **
_class 
loc:@layer_combine_fc_x/bias
�
9report_uninitialized_variables_1/IsVariableInitialized_66IsVariableInitializedlayer_combine_fc_y/kernel/Adam*
dtype0*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_y/kernel
�
9report_uninitialized_variables_1/IsVariableInitialized_67IsVariableInitialized layer_combine_fc_y/kernel/Adam_1*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_68IsVariableInitializedlayer_combine_fc_y/bias/Adam**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_69IsVariableInitializedlayer_combine_fc_y/bias/Adam_1**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
�!
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_88report_uninitialized_variables_1/IsVariableInitialized_99report_uninitialized_variables_1/IsVariableInitialized_109report_uninitialized_variables_1/IsVariableInitialized_119report_uninitialized_variables_1/IsVariableInitialized_129report_uninitialized_variables_1/IsVariableInitialized_139report_uninitialized_variables_1/IsVariableInitialized_149report_uninitialized_variables_1/IsVariableInitialized_159report_uninitialized_variables_1/IsVariableInitialized_169report_uninitialized_variables_1/IsVariableInitialized_179report_uninitialized_variables_1/IsVariableInitialized_189report_uninitialized_variables_1/IsVariableInitialized_199report_uninitialized_variables_1/IsVariableInitialized_209report_uninitialized_variables_1/IsVariableInitialized_219report_uninitialized_variables_1/IsVariableInitialized_229report_uninitialized_variables_1/IsVariableInitialized_239report_uninitialized_variables_1/IsVariableInitialized_249report_uninitialized_variables_1/IsVariableInitialized_259report_uninitialized_variables_1/IsVariableInitialized_269report_uninitialized_variables_1/IsVariableInitialized_279report_uninitialized_variables_1/IsVariableInitialized_289report_uninitialized_variables_1/IsVariableInitialized_299report_uninitialized_variables_1/IsVariableInitialized_309report_uninitialized_variables_1/IsVariableInitialized_319report_uninitialized_variables_1/IsVariableInitialized_329report_uninitialized_variables_1/IsVariableInitialized_339report_uninitialized_variables_1/IsVariableInitialized_349report_uninitialized_variables_1/IsVariableInitialized_359report_uninitialized_variables_1/IsVariableInitialized_369report_uninitialized_variables_1/IsVariableInitialized_379report_uninitialized_variables_1/IsVariableInitialized_389report_uninitialized_variables_1/IsVariableInitialized_399report_uninitialized_variables_1/IsVariableInitialized_409report_uninitialized_variables_1/IsVariableInitialized_419report_uninitialized_variables_1/IsVariableInitialized_429report_uninitialized_variables_1/IsVariableInitialized_439report_uninitialized_variables_1/IsVariableInitialized_449report_uninitialized_variables_1/IsVariableInitialized_459report_uninitialized_variables_1/IsVariableInitialized_469report_uninitialized_variables_1/IsVariableInitialized_479report_uninitialized_variables_1/IsVariableInitialized_489report_uninitialized_variables_1/IsVariableInitialized_499report_uninitialized_variables_1/IsVariableInitialized_509report_uninitialized_variables_1/IsVariableInitialized_519report_uninitialized_variables_1/IsVariableInitialized_529report_uninitialized_variables_1/IsVariableInitialized_539report_uninitialized_variables_1/IsVariableInitialized_549report_uninitialized_variables_1/IsVariableInitialized_559report_uninitialized_variables_1/IsVariableInitialized_569report_uninitialized_variables_1/IsVariableInitialized_579report_uninitialized_variables_1/IsVariableInitialized_589report_uninitialized_variables_1/IsVariableInitialized_599report_uninitialized_variables_1/IsVariableInitialized_609report_uninitialized_variables_1/IsVariableInitialized_619report_uninitialized_variables_1/IsVariableInitialized_629report_uninitialized_variables_1/IsVariableInitialized_639report_uninitialized_variables_1/IsVariableInitialized_649report_uninitialized_variables_1/IsVariableInitialized_659report_uninitialized_variables_1/IsVariableInitialized_669report_uninitialized_variables_1/IsVariableInitialized_679report_uninitialized_variables_1/IsVariableInitialized_689report_uninitialized_variables_1/IsVariableInitialized_69"/device:CPU:0*
_output_shapes
:F*
T0
*

axis *
NF
�
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack"/device:CPU:0*
_output_shapes
:F
�
&report_uninitialized_variables_1/ConstConst"/device:CPU:0*�
value�B�FBglobal_stepBbatch_normalization/gammaBbatch_normalization/betaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBlayer_conv1/kernelBlayer_conv1/biasBlayer_conv2/kernelBlayer_conv2/biasBlayer_fc1/kernelBlayer_fc1/biasBword_embeddingsBrnn/basic_rnn_cell/kernelBrnn/basic_rnn_cell/biasBlayer_rnn_fc_1/kernelBlayer_rnn_fc_1/biasBbatch_normalization_1/gammaBbatch_normalization_1/betaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBlayer_dnn_1/kernelBlayer_dnn_1/biasBlayer_dnn_2/kernelBlayer_dnn_2/biasBbatch_normalization_2/gammaBbatch_normalization_2/betaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBlayer_length_conv1/kernelBlayer_length_conv1/biasBlayer_length_conv2/kernelBlayer_length_conv2/biasBlayer_length_fc1/kernelBlayer_length_fc1/biasBlayer_combine_fc_cnn1d/kernelBlayer_combine_fc_cnn1d/biasBlayer_combine_fc_x/kernelBlayer_combine_fc_x/biasBlayer_combine_fc_y/kernelBlayer_combine_fc_y/biasBbeta1_powerBbeta2_powerBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Blayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1B"layer_combine_fc_cnn1d/kernel/AdamB$layer_combine_fc_cnn1d/kernel/Adam_1B layer_combine_fc_cnn1d/bias/AdamB"layer_combine_fc_cnn1d/bias/Adam_1Blayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1*
dtype0*
_output_shapes
:F
�
3report_uninitialized_variables_1/boolean_mask/ShapeConst"/device:CPU:0*
valueB:F*
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
�
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
�
Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices"/device:CPU:0*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
5report_uninitialized_variables_1/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:F*
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
5report_uninitialized_variables_1/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:F*
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
=report_uninitialized_variables_1/boolean_mask/strided_slice_2StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_2Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: 
�
=report_uninitialized_variables_1/boolean_mask/concat/values_1Pack2report_uninitialized_variables_1/boolean_mask/Prod"/device:CPU:0*
_output_shapes
:*
T0*

axis *
N
�
9report_uninitialized_variables_1/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/strided_slice_1=report_uninitialized_variables_1/boolean_mask/concat/values_1=report_uninitialized_variables_1/boolean_mask/strided_slice_29report_uninitialized_variables_1/boolean_mask/concat/axis"/device:CPU:0*
T0*
N*
_output_shapes
:*

Tidx0
�
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:F
�
=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
���������*
dtype0*
_output_shapes
:
�
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
_output_shapes
:F*
T0
*
Tshape0
�
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:���������*
T0

�
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*#
_output_shapes
:���������*
squeeze_dims
*
T0	
�
;report_uninitialized_variables_1/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
6report_uninitialized_variables_1/boolean_mask/GatherV2GatherV25report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze;report_uninitialized_variables_1/boolean_mask/GatherV2/axis"/device:CPU:0*
Tindices0	*
Tparams0*#
_output_shapes
:���������*
Taxis0
>
init_2NoOp^accuracy/count/Assign^accuracy/total/Assign

init_all_tablesNoOp

init_3NoOp
8
group_deps_1NoOp^init_2^init_3^init_all_tables
U
Merge/MergeSummaryMergeSummary
accuracy_1loss*
_output_shapes
: *
N
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_609c58c562334f21b56246ff42f47182/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�FBbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbeta1_powerBbeta2_powerBglobal_stepBlayer_combine_fc_cnn1d/biasB layer_combine_fc_cnn1d/bias/AdamB"layer_combine_fc_cnn1d/bias/Adam_1Blayer_combine_fc_cnn1d/kernelB"layer_combine_fc_cnn1d/kernel/AdamB$layer_combine_fc_cnn1d/kernel/Adam_1Blayer_combine_fc_x/biasBlayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_x/kernelBlayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_y/biasBlayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1Blayer_combine_fc_y/kernelBlayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_dnn_1/biasBlayer_dnn_1/kernelBlayer_dnn_2/biasBlayer_dnn_2/kernelBlayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_length_conv1/biasBlayer_length_conv1/kernelBlayer_length_conv2/biasBlayer_length_conv2/kernelBlayer_length_fc1/biasBlayer_length_fc1/kernelBlayer_rnn_fc_1/biasBlayer_rnn_fc_1/kernelBrnn/basic_rnn_cell/biasBrnn/basic_rnn_cell/kernelBword_embeddings*
dtype0*
_output_shapes
:F
�
save/SaveV2/shape_and_slicesConst"/device:CPU:0*�
value�B�FB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:F
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1batch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1batch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/betabatch_normalization_1/gamma!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancebatch_normalization_2/betabatch_normalization_2/gamma!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancebeta1_powerbeta2_powerglobal_steplayer_combine_fc_cnn1d/bias layer_combine_fc_cnn1d/bias/Adam"layer_combine_fc_cnn1d/bias/Adam_1layer_combine_fc_cnn1d/kernel"layer_combine_fc_cnn1d/kernel/Adam$layer_combine_fc_cnn1d/kernel/Adam_1layer_combine_fc_x/biaslayer_combine_fc_x/bias/Adamlayer_combine_fc_x/bias/Adam_1layer_combine_fc_x/kernellayer_combine_fc_x/kernel/Adam layer_combine_fc_x/kernel/Adam_1layer_combine_fc_y/biaslayer_combine_fc_y/bias/Adamlayer_combine_fc_y/bias/Adam_1layer_combine_fc_y/kernellayer_combine_fc_y/kernel/Adam layer_combine_fc_y/kernel/Adam_1layer_conv1/biaslayer_conv1/bias/Adamlayer_conv1/bias/Adam_1layer_conv1/kernellayer_conv1/kernel/Adamlayer_conv1/kernel/Adam_1layer_conv2/biaslayer_conv2/bias/Adamlayer_conv2/bias/Adam_1layer_conv2/kernellayer_conv2/kernel/Adamlayer_conv2/kernel/Adam_1layer_dnn_1/biaslayer_dnn_1/kernellayer_dnn_2/biaslayer_dnn_2/kernellayer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1layer_fc1/kernellayer_fc1/kernel/Adamlayer_fc1/kernel/Adam_1layer_length_conv1/biaslayer_length_conv1/kernellayer_length_conv2/biaslayer_length_conv2/kernellayer_length_fc1/biaslayer_length_fc1/kernellayer_rnn_fc_1/biaslayer_rnn_fc_1/kernelrnn/basic_rnn_cell/biasrnn/basic_rnn_cell/kernelword_embeddings"/device:CPU:0*T
dtypesJ
H2F	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
�
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�FBbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbeta1_powerBbeta2_powerBglobal_stepBlayer_combine_fc_cnn1d/biasB layer_combine_fc_cnn1d/bias/AdamB"layer_combine_fc_cnn1d/bias/Adam_1Blayer_combine_fc_cnn1d/kernelB"layer_combine_fc_cnn1d/kernel/AdamB$layer_combine_fc_cnn1d/kernel/Adam_1Blayer_combine_fc_x/biasBlayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_x/kernelBlayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_y/biasBlayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1Blayer_combine_fc_y/kernelBlayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_dnn_1/biasBlayer_dnn_1/kernelBlayer_dnn_2/biasBlayer_dnn_2/kernelBlayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_length_conv1/biasBlayer_length_conv1/kernelBlayer_length_conv2/biasBlayer_length_conv2/kernelBlayer_length_fc1/biasBlayer_length_fc1/kernelBlayer_rnn_fc_1/biasBlayer_rnn_fc_1/kernelBrnn/basic_rnn_cell/biasBrnn/basic_rnn_cell/kernelBword_embeddings*
dtype0*
_output_shapes
:F
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:F*�
value�B�FB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*T
dtypesJ
H2F	
�
save/AssignAssignbatch_normalization/betasave/RestoreV2*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes	
:�
�
save/Assign_1Assignbatch_normalization/beta/Adamsave/RestoreV2:1*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
�
save/Assign_2Assignbatch_normalization/beta/Adam_1save/RestoreV2:2*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save/Assign_3Assignbatch_normalization/gammasave/RestoreV2:3*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes	
:�
�
save/Assign_4Assignbatch_normalization/gamma/Adamsave/RestoreV2:4*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma
�
save/Assign_5Assign batch_normalization/gamma/Adam_1save/RestoreV2:5*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes	
:�
�
save/Assign_6Assignbatch_normalization/moving_meansave/RestoreV2:6*
use_locking(*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:�
�
save/Assign_7Assign#batch_normalization/moving_variancesave/RestoreV2:7*
_output_shapes	
:�*
use_locking(*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(
�
save/Assign_8Assignbatch_normalization_1/betasave/RestoreV2:8*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:
�
save/Assign_9Assignbatch_normalization_1/gammasave/RestoreV2:9*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:
�
save/Assign_10Assign!batch_normalization_1/moving_meansave/RestoreV2:10*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save/Assign_11Assign%batch_normalization_1/moving_variancesave/RestoreV2:11*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
�
save/Assign_12Assignbatch_normalization_2/betasave/RestoreV2:12*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta
�
save/Assign_13Assignbatch_normalization_2/gammasave/RestoreV2:13*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
�
save/Assign_14Assign!batch_normalization_2/moving_meansave/RestoreV2:14*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean
�
save/Assign_15Assign%batch_normalization_2/moving_variancesave/RestoreV2:15*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
�
save/Assign_16Assignbeta1_powersave/RestoreV2:16*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
�
save/Assign_17Assignbeta2_powersave/RestoreV2:17*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
�
save/Assign_18Assignglobal_stepsave/RestoreV2:18*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save/Assign_19Assignlayer_combine_fc_cnn1d/biassave/RestoreV2:19*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(*
_output_shapes	
:�
�
save/Assign_20Assign layer_combine_fc_cnn1d/bias/Adamsave/RestoreV2:20*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(*
_output_shapes	
:�
�
save/Assign_21Assign"layer_combine_fc_cnn1d/bias/Adam_1save/RestoreV2:21*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(*
_output_shapes	
:�
�
save/Assign_22Assignlayer_combine_fc_cnn1d/kernelsave/RestoreV2:22*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel
�
save/Assign_23Assign"layer_combine_fc_cnn1d/kernel/Adamsave/RestoreV2:23*
use_locking(*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
validate_shape(* 
_output_shapes
:
��
�
save/Assign_24Assign$layer_combine_fc_cnn1d/kernel/Adam_1save/RestoreV2:24*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel
�
save/Assign_25Assignlayer_combine_fc_x/biassave/RestoreV2:25*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:�
�
save/Assign_26Assignlayer_combine_fc_x/bias/Adamsave/RestoreV2:26*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:�
�
save/Assign_27Assignlayer_combine_fc_x/bias/Adam_1save/RestoreV2:27**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save/Assign_28Assignlayer_combine_fc_x/kernelsave/RestoreV2:28*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
��
�
save/Assign_29Assignlayer_combine_fc_x/kernel/Adamsave/RestoreV2:29*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
save/Assign_30Assign layer_combine_fc_x/kernel/Adam_1save/RestoreV2:30*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel
�
save/Assign_31Assignlayer_combine_fc_y/biassave/RestoreV2:31**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save/Assign_32Assignlayer_combine_fc_y/bias/Adamsave/RestoreV2:32*
_output_shapes
:*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(
�
save/Assign_33Assignlayer_combine_fc_y/bias/Adam_1save/RestoreV2:33*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_34Assignlayer_combine_fc_y/kernelsave/RestoreV2:34*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	�
�
save/Assign_35Assignlayer_combine_fc_y/kernel/Adamsave/RestoreV2:35*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	�
�
save/Assign_36Assign layer_combine_fc_y/kernel/Adam_1save/RestoreV2:36*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0
�
save/Assign_37Assignlayer_conv1/biassave/RestoreV2:37*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save/Assign_38Assignlayer_conv1/bias/Adamsave/RestoreV2:38*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(
�
save/Assign_39Assignlayer_conv1/bias/Adam_1save/RestoreV2:39*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_40Assignlayer_conv1/kernelsave/RestoreV2:40*"
_output_shapes
: *
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(
�
save/Assign_41Assignlayer_conv1/kernel/Adamsave/RestoreV2:41*%
_class
loc:@layer_conv1/kernel*
validate_shape(*"
_output_shapes
: *
use_locking(*
T0
�
save/Assign_42Assignlayer_conv1/kernel/Adam_1save/RestoreV2:42*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*"
_output_shapes
: 
�
save/Assign_43Assignlayer_conv2/biassave/RestoreV2:43*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_44Assignlayer_conv2/bias/Adamsave/RestoreV2:44*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save/Assign_45Assignlayer_conv2/bias/Adam_1save/RestoreV2:45*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_46Assignlayer_conv2/kernelsave/RestoreV2:46*"
_output_shapes
:  *
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(
�
save/Assign_47Assignlayer_conv2/kernel/Adamsave/RestoreV2:47*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*"
_output_shapes
:  
�
save/Assign_48Assignlayer_conv2/kernel/Adam_1save/RestoreV2:48*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*"
_output_shapes
:  
�
save/Assign_49Assignlayer_dnn_1/biassave/RestoreV2:49*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_dnn_1/bias
�
save/Assign_50Assignlayer_dnn_1/kernelsave/RestoreV2:50*
use_locking(*
T0*%
_class
loc:@layer_dnn_1/kernel*
validate_shape(*
_output_shapes

: 
�
save/Assign_51Assignlayer_dnn_2/biassave/RestoreV2:51*#
_class
loc:@layer_dnn_2/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save/Assign_52Assignlayer_dnn_2/kernelsave/RestoreV2:52*
T0*%
_class
loc:@layer_dnn_2/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(
�
save/Assign_53Assignlayer_fc1/biassave/RestoreV2:53*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
save/Assign_54Assignlayer_fc1/bias/Adamsave/RestoreV2:54*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias
�
save/Assign_55Assignlayer_fc1/bias/Adam_1save/RestoreV2:55*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:�
�
save/Assign_56Assignlayer_fc1/kernelsave/RestoreV2:56*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
�@�*
use_locking(
�
save/Assign_57Assignlayer_fc1/kernel/Adamsave/RestoreV2:57*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
�@�*
use_locking(*
T0
�
save/Assign_58Assignlayer_fc1/kernel/Adam_1save/RestoreV2:58*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
�@�
�
save/Assign_59Assignlayer_length_conv1/biassave/RestoreV2:59*
use_locking(*
T0**
_class 
loc:@layer_length_conv1/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_60Assignlayer_length_conv1/kernelsave/RestoreV2:60*
validate_shape(*"
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@layer_length_conv1/kernel
�
save/Assign_61Assignlayer_length_conv2/biassave/RestoreV2:61*
use_locking(*
T0**
_class 
loc:@layer_length_conv2/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_62Assignlayer_length_conv2/kernelsave/RestoreV2:62*"
_output_shapes
:  *
use_locking(*
T0*,
_class"
 loc:@layer_length_conv2/kernel*
validate_shape(
�
save/Assign_63Assignlayer_length_fc1/biassave/RestoreV2:63*
_output_shapes	
:�*
use_locking(*
T0*(
_class
loc:@layer_length_fc1/bias*
validate_shape(
�
save/Assign_64Assignlayer_length_fc1/kernelsave/RestoreV2:64*
use_locking(*
T0**
_class 
loc:@layer_length_fc1/kernel*
validate_shape(* 
_output_shapes
:
��
�
save/Assign_65Assignlayer_rnn_fc_1/biassave/RestoreV2:65*
use_locking(*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(*
_output_shapes	
:�
�
save/Assign_66Assignlayer_rnn_fc_1/kernelsave/RestoreV2:66*
use_locking(*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
validate_shape(*
_output_shapes
:	@�
�
save/Assign_67Assignrnn/basic_rnn_cell/biassave/RestoreV2:67*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(*
_output_shapes
:@
�
save/Assign_68Assignrnn/basic_rnn_cell/kernelsave/RestoreV2:68*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(*
_output_shapes

:`@
�
save/Assign_69Assignword_embeddingssave/RestoreV2:69*
validate_shape(*
_output_shapes
:	� *
use_locking(*
T0*"
_class
loc:@word_embeddings
�	
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard�#
�
�
/tf_data_structured_function_wrapper_52oRgbbAY9U
arg0
tfrecorddataset2DWrapper for passing nested structures to and from tf.data functions.�H
compression_typeConst"/device:CPU:0*
valueB B *
dtype0F
buffer_sizeConst"/device:CPU:0*
valueB		 R��*
dtype0	h
TFRecordDatasetTFRecordDatasetarg0compression_type:output:0buffer_size:output:0"/device:CPU:0"+
tfrecorddatasetTFRecordDataset:handle:0
�
�
/tf_data_structured_function_wrapper_HF2qjsseTGA
arg0)
%parsesingleexample_parsesingleexample	+
'parsesingleexample_parsesingleexample_0	+
'parsesingleexample_parsesingleexample_1	+
'parsesingleexample_parsesingleexample_2+
'parsesingleexample_parsesingleexample_3	2DWrapper for passing nested structures to and from tf.data functions.P
ParseSingleExample/ConstConst"/device:CPU:0*
valueB	 *
dtype0	R
ParseSingleExample/Const_1Const"/device:CPU:0*
valueB	 *
dtype0	R
ParseSingleExample/Const_2Const"/device:CPU:0*
valueB	 *
dtype0	R
ParseSingleExample/Const_3Const"/device:CPU:0*
valueB *
dtype0R
ParseSingleExample/Const_4Const"/device:CPU:0*
valueB	 *
dtype0	�
%ParseSingleExample/ParseSingleExampleParseSingleExamplearg0!ParseSingleExample/Const:output:0#ParseSingleExample/Const_1:output:0#ParseSingleExample/Const_2:output:0#ParseSingleExample/Const_3:output:0#ParseSingleExample/Const_4:output:0"/device:CPU:0*
Tdense	
2				*

num_sparse *R

dense_keysD
BlabelpacketLengthpacketPayloadpacketStatisticrecordTypes*-
dense_shapes
: :@:�::@*
sparse_types
 *
sparse_keys
 "_
'parsesingleexample_parsesingleexample_24ParseSingleExample/ParseSingleExample:dense_values:3"_
'parsesingleexample_parsesingleexample_34ParseSingleExample/ParseSingleExample:dense_values:0"]
%parsesingleexample_parsesingleexample4ParseSingleExample/ParseSingleExample:dense_values:4"_
'parsesingleexample_parsesingleexample_04ParseSingleExample/ParseSingleExample:dense_values:1"_
'parsesingleexample_parsesingleexample_14ParseSingleExample/ParseSingleExample:dense_values:2
�
2
_make_dataset_AsAROsJbEI0
batchdatasetv2�z
TensorSliceDataset/ConstConst"/device:CPU:0*;
value2B0 B*../../data/android_train_complete.tfrecord*
dtype0m
'TensorSliceDataset/flat_filenames/shapeConst"/device:CPU:0*
valueB:
���������*
dtype0�
!TensorSliceDataset/flat_filenamesReshape!TensorSliceDataset/Const:output:00TensorSliceDataset/flat_filenames/shape:output:0"/device:CPU:0*
T0*
Tshape0�
TensorSliceDatasetTensorSliceDataset*TensorSliceDataset/flat_filenames:output:0"/device:CPU:0*
output_shapes
: *
Toutput_types
2�
FlatMapDatasetFlatMapDatasetTensorSliceDataset:handle:0"/device:CPU:0*
output_shapes
: *8
f3R1
/tf_data_structured_function_wrapper_52oRgbbAY9U*
output_types
2*

Targuments
 �

MapDataset
MapDatasetFlatMapDataset:handle:0"/device:CPU:0*

Targuments
 *.
output_shapes
:@:@:�:: *8
f3R1
/tf_data_structured_function_wrapper_HF2qjsseTGA*
output_types	
2				*
use_inter_op_parallelism(T
ShuffleDataset/buffer_sizeConst"/device:CPU:0*
value
B	 R�*
dtype0	L
ShuffleDataset/seedConst"/device:CPU:0*
value	B	 R *
dtype0	M
ShuffleDataset/seed2Const"/device:CPU:0*
value	B	 R *
dtype0	�
ShuffleDatasetShuffleDatasetMapDataset:handle:0#ShuffleDataset/buffer_size:output:0ShuffleDataset/seed:output:0ShuffleDataset/seed2:output:0"/device:CPU:0*
output_types	
2				*.
output_shapes
:@:@:�:: *
reshuffle_each_iteration(U
RepeatDataset/countConst"/device:CPU:0*
valueB	 R
���������*
dtype0	�
RepeatDatasetRepeatDatasetShuffleDataset:handle:0RepeatDataset/count:output:0"/device:CPU:0*
output_types	
2				*.
output_shapes
:@:@:�:: R
BatchDatasetV2/batch_sizeConst"/device:CPU:0*
value	B	 R *
dtype0	V
BatchDatasetV2/drop_remainderConst"/device:CPU:0*
value	B
 Z *
dtype0
�
BatchDatasetV2BatchDatasetV2RepeatDataset:handle:0"BatchDatasetV2/batch_size:output:0&BatchDatasetV2/drop_remainder:output:0"/device:CPU:0*
output_types	
2				*o
output_shapes^
\:���������@:���������@:����������:���������:���������")
batchdatasetv2BatchDatasetV2:handle:0"����1     
��	;�(,� �AJ��
�B�B
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
�
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
s
	AssignAdd
ref"T�

value"T

output_ref"T�" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	
�
)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype�
is_initialized
"
dtypetype�
�
IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0�
C
IteratorToStringHandle
resource_handle
string_handle�
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z
�


LogicalNot
x

y

!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
;
Minimum
x"T
y"T
z"T"
Ttype:

2	�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
�
OneShotIterator

handle"
dataset_factoryfunc"
output_types
list(type)(0" 
output_shapeslist(shape)(0"
	containerstring "
shared_namestring �
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
\
	RefSwitch
data"T�
pred

output_false"T�
output_true"T�"	
Ttype�
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:�
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype�
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype�
9
TensorArraySizeV3

handle
flow_in
size�
�
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring �
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype�
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype*1.12.02v1.12.0-0-ga6d8ffae09��

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 
�
global_step
VariableV2*
_class
loc:@global_step*
	container *
shape: *
dtype0	*
_output_shapes
: *
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
�
!global_step/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
global_step/cond/SwitchSwitch!global_step/IsVariableInitialized!global_step/IsVariableInitialized*
_output_shapes
: : *
T0

a
global_step/cond/switch_tIdentityglobal_step/cond/Switch:1*
_output_shapes
: *
T0

_
global_step/cond/switch_fIdentityglobal_step/cond/Switch*
T0
*
_output_shapes
: 
h
global_step/cond/pred_idIdentity!global_step/IsVariableInitialized*
_output_shapes
: *
T0

b
global_step/cond/readIdentityglobal_step/cond/read/Switch:1*
T0	*
_output_shapes
: 
�
global_step/cond/read/Switch	RefSwitchglobal_stepglobal_step/cond/pred_id*
T0	*
_class
loc:@global_step*
_output_shapes
: : 
�
global_step/cond/Switch_1Switchglobal_step/Initializer/zerosglobal_step/cond/pred_id*
_output_shapes
: : *
T0	*
_class
loc:@global_step
}
global_step/cond/MergeMergeglobal_step/cond/Switch_1global_step/cond/read*
T0	*
N*
_output_shapes
: : 
S
global_step/add/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
b
global_step/addAddglobal_step/cond/Mergeglobal_step/add/y*
T0	*
_output_shapes
: 

ConstConst"/device:CPU:0*;
value2B0 B*../../data/android_train_complete.tfrecord*
dtype0*
_output_shapes
: 
v
flat_filenames/shapeConst"/device:CPU:0*
valueB:
���������*
dtype0*
_output_shapes
:
x
flat_filenamesReshapeConstflat_filenames/shape"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:
]
buffer_sizeConst"/device:CPU:0*
value
B	 R�*
dtype0	*
_output_shapes
: 
U
seedConst"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
V
seed2Const"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
_
countConst"/device:CPU:0*
_output_shapes
: *
valueB	 R
���������*
dtype0	
[

batch_sizeConst"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
_
drop_remainderConst"/device:CPU:0*
value	B
 Z *
dtype0
*
_output_shapes
: 
�
OneShotIteratorOneShotIterator"/device:CPU:0*
shared_name *o
output_shapes^
\:���������@:���������@:����������:���������:���������*
	container *
output_types	
2				*
_output_shapes
: *0
dataset_factoryR
_make_dataset_AsAROsJbEI0
h
IteratorToStringHandleIteratorToStringHandleOneShotIterator"/device:CPU:0*
_output_shapes
: 
�
IteratorGetNextIteratorGetNextOneShotIterator"/device:CPU:0*
output_types	
2				*o
output_shapes^
\:���������@:���������@:����������:���������:���������*p
_output_shapes^
\:���������@:���������@:����������:���������:���������
�
CastCastIteratorGetNext:2"/device:CPU:0*
Truncate( *(
_output_shapes
:����������*

DstT0*

SrcT0	
�
Cast_1CastIteratorGetNext:1"/device:CPU:0*

SrcT0	*
Truncate( *'
_output_shapes
:���������@*

DstT0
�
:batch_normalization/gamma/Initializer/ones/shape_as_tensorConst*,
_class"
 loc:@batch_normalization/gamma*
valueB:�*
dtype0*
_output_shapes
:
�
0batch_normalization/gamma/Initializer/ones/ConstConst*
_output_shapes
: *,
_class"
 loc:@batch_normalization/gamma*
valueB
 *  �?*
dtype0
�
*batch_normalization/gamma/Initializer/onesFill:batch_normalization/gamma/Initializer/ones/shape_as_tensor0batch_normalization/gamma/Initializer/ones/Const*
T0*,
_class"
 loc:@batch_normalization/gamma*

index_type0*
_output_shapes	
:�
�
batch_normalization/gamma
VariableV2*,
_class"
 loc:@batch_normalization/gamma*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes	
:�
�
batch_normalization/gamma/readIdentitybatch_normalization/gamma*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes	
:�
�
:batch_normalization/beta/Initializer/zeros/shape_as_tensorConst*+
_class!
loc:@batch_normalization/beta*
valueB:�*
dtype0*
_output_shapes
:
�
0batch_normalization/beta/Initializer/zeros/ConstConst*
_output_shapes
: *+
_class!
loc:@batch_normalization/beta*
valueB
 *    *
dtype0
�
*batch_normalization/beta/Initializer/zerosFill:batch_normalization/beta/Initializer/zeros/shape_as_tensor0batch_normalization/beta/Initializer/zeros/Const*
_output_shapes	
:�*
T0*+
_class!
loc:@batch_normalization/beta*

index_type0
�
batch_normalization/beta
VariableV2*+
_class!
loc:@batch_normalization/beta*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes	
:�
�
batch_normalization/beta/readIdentitybatch_normalization/beta*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes	
:�
�
Abatch_normalization/moving_mean/Initializer/zeros/shape_as_tensorConst*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB:�*
dtype0*
_output_shapes
:
�
7batch_normalization/moving_mean/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *2
_class(
&$loc:@batch_normalization/moving_mean*
valueB
 *    
�
1batch_normalization/moving_mean/Initializer/zerosFillAbatch_normalization/moving_mean/Initializer/zeros/shape_as_tensor7batch_normalization/moving_mean/Initializer/zeros/Const*
_output_shapes	
:�*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*

index_type0
�
batch_normalization/moving_mean
VariableV2*2
_class(
&$loc:@batch_normalization/moving_mean*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*2
_class(
&$loc:@batch_normalization/moving_mean
�
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes	
:�
�
Dbatch_normalization/moving_variance/Initializer/ones/shape_as_tensorConst*
dtype0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB:�
�
:batch_normalization/moving_variance/Initializer/ones/ConstConst*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
4batch_normalization/moving_variance/Initializer/onesFillDbatch_normalization/moving_variance/Initializer/ones/shape_as_tensor:batch_normalization/moving_variance/Initializer/ones/Const*
_output_shapes	
:�*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*

index_type0
�
#batch_normalization/moving_variance
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *6
_class,
*(loc:@batch_normalization/moving_variance*
	container *
shape:�
�
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes	
:�
h
#batch_normalization/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o�:
�
!batch_normalization/batchnorm/addAdd(batch_normalization/moving_variance/read#batch_normalization/batchnorm/add/y*
T0*
_output_shapes	
:�
u
#batch_normalization/batchnorm/RsqrtRsqrt!batch_normalization/batchnorm/add*
T0*
_output_shapes	
:�
�
!batch_normalization/batchnorm/mulMul#batch_normalization/batchnorm/Rsqrtbatch_normalization/gamma/read*
T0*
_output_shapes	
:�
�
#batch_normalization/batchnorm/mul_1MulCast!batch_normalization/batchnorm/mul*
T0*(
_output_shapes
:����������
�
#batch_normalization/batchnorm/mul_2Mul$batch_normalization/moving_mean/read!batch_normalization/batchnorm/mul*
_output_shapes	
:�*
T0
�
!batch_normalization/batchnorm/subSubbatch_normalization/beta/read#batch_normalization/batchnorm/mul_2*
T0*
_output_shapes	
:�
�
#batch_normalization/batchnorm/add_1Add#batch_normalization/batchnorm/mul_1!batch_normalization/batchnorm/sub*(
_output_shapes
:����������*
T0
b
Reshape/shapeConst*!
valueB"����      *
dtype0*
_output_shapes
:
�
ReshapeReshape#batch_normalization/batchnorm/add_1Reshape/shape*,
_output_shapes
:����������*
T0*
Tshape0
�
3layer_conv1/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_conv1/kernel*!
valueB"          *
dtype0*
_output_shapes
:
�
1layer_conv1/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_conv1/kernel*
valueB
 *d|�*
dtype0*
_output_shapes
: 
�
1layer_conv1/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_conv1/kernel*
valueB
 *d|>*
dtype0*
_output_shapes
: 
�
;layer_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv1/kernel/Initializer/random_uniform/shape*
dtype0*"
_output_shapes
: *

seed *
T0*%
_class
loc:@layer_conv1/kernel*
seed2 
�
1layer_conv1/kernel/Initializer/random_uniform/subSub1layer_conv1/kernel/Initializer/random_uniform/max1layer_conv1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel
�
1layer_conv1/kernel/Initializer/random_uniform/mulMul;layer_conv1/kernel/Initializer/random_uniform/RandomUniform1layer_conv1/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_conv1/kernel*"
_output_shapes
: 
�
-layer_conv1/kernel/Initializer/random_uniformAdd1layer_conv1/kernel/Initializer/random_uniform/mul1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*"
_output_shapes
: 
�
layer_conv1/kernel
VariableV2*
dtype0*"
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: 
�
layer_conv1/kernel/AssignAssignlayer_conv1/kernel-layer_conv1/kernel/Initializer/random_uniform*"
_output_shapes
: *
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(
�
layer_conv1/kernel/readIdentitylayer_conv1/kernel*
T0*%
_class
loc:@layer_conv1/kernel*"
_output_shapes
: 
�
"layer_conv1/bias/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv1/bias
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container 
�
layer_conv1/bias/AssignAssignlayer_conv1/bias"layer_conv1/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
}
layer_conv1/bias/readIdentitylayer_conv1/bias*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 
c
layer_conv1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB:
c
!layer_conv1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
layer_conv1/conv1d/ExpandDims
ExpandDimsReshape!layer_conv1/conv1d/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:����������
e
#layer_conv1/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
layer_conv1/conv1d/ExpandDims_1
ExpandDimslayer_conv1/kernel/read#layer_conv1/conv1d/ExpandDims_1/dim*&
_output_shapes
: *

Tdim0*
T0
�
layer_conv1/conv1d/Conv2DConv2Dlayer_conv1/conv1d/ExpandDimslayer_conv1/conv1d/ExpandDims_1*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:���������� 
�
layer_conv1/conv1d/SqueezeSqueezelayer_conv1/conv1d/Conv2D*
T0*,
_output_shapes
:���������� *
squeeze_dims

�
layer_conv1/BiasAddBiasAddlayer_conv1/conv1d/Squeezelayer_conv1/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:���������� 
d
layer_conv1/ReluRelulayer_conv1/BiasAdd*,
_output_shapes
:���������� *
T0
^
max_pooling1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d/ExpandDims
ExpandDimslayer_conv1/Relumax_pooling1d/ExpandDims/dim*0
_output_shapes
:���������� *

Tdim0*
T0
�
max_pooling1d/MaxPoolMaxPoolmax_pooling1d/ExpandDims*
ksize
*
paddingVALID*0
_output_shapes
:���������� *
T0*
data_formatNHWC*
strides

�
max_pooling1d/SqueezeSqueezemax_pooling1d/MaxPool*,
_output_shapes
:���������� *
squeeze_dims
*
T0
�
3layer_conv2/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_conv2/kernel*!
valueB"           *
dtype0*
_output_shapes
:
�
1layer_conv2/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *�5�*
dtype0*
_output_shapes
: 
�
1layer_conv2/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
;layer_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv2/kernel/Initializer/random_uniform/shape*
dtype0*"
_output_shapes
:  *

seed *
T0*%
_class
loc:@layer_conv2/kernel*
seed2 
�
1layer_conv2/kernel/Initializer/random_uniform/subSub1layer_conv2/kernel/Initializer/random_uniform/max1layer_conv2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*%
_class
loc:@layer_conv2/kernel
�
1layer_conv2/kernel/Initializer/random_uniform/mulMul;layer_conv2/kernel/Initializer/random_uniform/RandomUniform1layer_conv2/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_conv2/kernel*"
_output_shapes
:  
�
-layer_conv2/kernel/Initializer/random_uniformAdd1layer_conv2/kernel/Initializer/random_uniform/mul1layer_conv2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv2/kernel*"
_output_shapes
:  
�
layer_conv2/kernel
VariableV2*
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  *
dtype0*"
_output_shapes
:  
�
layer_conv2/kernel/AssignAssignlayer_conv2/kernel-layer_conv2/kernel/Initializer/random_uniform*%
_class
loc:@layer_conv2/kernel*
validate_shape(*"
_output_shapes
:  *
use_locking(*
T0
�
layer_conv2/kernel/readIdentitylayer_conv2/kernel*
T0*%
_class
loc:@layer_conv2/kernel*"
_output_shapes
:  
�
"layer_conv2/bias/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv2/bias
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv2/bias
�
layer_conv2/bias/AssignAssignlayer_conv2/bias"layer_conv2/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
}
layer_conv2/bias/readIdentitylayer_conv2/bias*
T0*#
_class
loc:@layer_conv2/bias*
_output_shapes
: 
c
layer_conv2/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
c
!layer_conv2/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
layer_conv2/conv1d/ExpandDims
ExpandDimsmax_pooling1d/Squeeze!layer_conv2/conv1d/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:���������� 
e
#layer_conv2/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
layer_conv2/conv1d/ExpandDims_1
ExpandDimslayer_conv2/kernel/read#layer_conv2/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:  *

Tdim0
�
layer_conv2/conv1d/Conv2DConv2Dlayer_conv2/conv1d/ExpandDimslayer_conv2/conv1d/ExpandDims_1*0
_output_shapes
:���������� *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
layer_conv2/conv1d/SqueezeSqueezelayer_conv2/conv1d/Conv2D*,
_output_shapes
:���������� *
squeeze_dims
*
T0
�
layer_conv2/BiasAddBiasAddlayer_conv2/conv1d/Squeezelayer_conv2/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:���������� 
d
layer_conv2/ReluRelulayer_conv2/BiasAdd*
T0*,
_output_shapes
:���������� 
`
max_pooling1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d_1/ExpandDims
ExpandDimslayer_conv2/Relumax_pooling1d_1/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:���������� 
�
max_pooling1d_1/MaxPoolMaxPoolmax_pooling1d_1/ExpandDims*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*0
_output_shapes
:���������� 
�
max_pooling1d_1/SqueezeSqueezemax_pooling1d_1/MaxPool*
T0*,
_output_shapes
:���������� *
squeeze_dims

l
Flatten/flatten/ShapeShapemax_pooling1d_1/Squeeze*
out_type0*
_output_shapes
:*
T0
m
#Flatten/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
Flatten/flatten/strided_sliceStridedSliceFlatten/flatten/Shape#Flatten/flatten/strided_slice/stack%Flatten/flatten/strided_slice/stack_1%Flatten/flatten/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
j
Flatten/flatten/Reshape/shape/1Const*
_output_shapes
: *
valueB :
���������*
dtype0
�
Flatten/flatten/Reshape/shapePackFlatten/flatten/strided_sliceFlatten/flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
�
Flatten/flatten/ReshapeReshapemax_pooling1d_1/SqueezeFlatten/flatten/Reshape/shape*(
_output_shapes
:����������@*
T0*
Tshape0
�
1layer_fc1/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_fc1/kernel*
valueB"    �   *
dtype0*
_output_shapes
:
�
/layer_fc1/kernel/Initializer/random_uniform/minConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *��ۼ*
dtype0*
_output_shapes
: 
�
/layer_fc1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *���<*
dtype0*
_output_shapes
: 
�
9layer_fc1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1layer_fc1/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
�@�*

seed *
T0*#
_class
loc:@layer_fc1/kernel*
seed2 
�
/layer_fc1/kernel/Initializer/random_uniform/subSub/layer_fc1/kernel/Initializer/random_uniform/max/layer_fc1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_fc1/kernel*
_output_shapes
: 
�
/layer_fc1/kernel/Initializer/random_uniform/mulMul9layer_fc1/kernel/Initializer/random_uniform/RandomUniform/layer_fc1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
�@�
�
+layer_fc1/kernel/Initializer/random_uniformAdd/layer_fc1/kernel/Initializer/random_uniform/mul/layer_fc1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
�@�*
T0*#
_class
loc:@layer_fc1/kernel
�
layer_fc1/kernel
VariableV2*
dtype0* 
_output_shapes
:
�@�*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container *
shape:
�@�
�
layer_fc1/kernel/AssignAssignlayer_fc1/kernel+layer_fc1/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
�@�
�
layer_fc1/kernel/readIdentitylayer_fc1/kernel* 
_output_shapes
:
�@�*
T0*#
_class
loc:@layer_fc1/kernel
�
 layer_fc1/bias/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_fc1/bias
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:�
�
layer_fc1/bias/AssignAssignlayer_fc1/bias layer_fc1/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:�
x
layer_fc1/bias/readIdentitylayer_fc1/bias*
T0*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:�
�
layer_fc1/MatMulMatMulFlatten/flatten/Reshapelayer_fc1/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
layer_fc1/BiasAddBiasAddlayer_fc1/MatMullayer_fc1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
\
layer_fc1/ReluRelulayer_fc1/BiasAdd*(
_output_shapes
:����������*
T0
`
Reshape_1/shapeConst*
valueB"����@   *
dtype0*
_output_shapes
:
v
	Reshape_1ReshapeIteratorGetNextReshape_1/shape*
Tshape0*'
_output_shapes
:���������@*
T0	
�
0word_embeddings/Initializer/random_uniform/shapeConst*"
_class
loc:@word_embeddings*
valueB"      *
dtype0*
_output_shapes
:
�
.word_embeddings/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *"
_class
loc:@word_embeddings*
valueB
 *���
�
.word_embeddings/Initializer/random_uniform/maxConst*"
_class
loc:@word_embeddings*
valueB
 *��>*
dtype0*
_output_shapes
: 
�
8word_embeddings/Initializer/random_uniform/RandomUniformRandomUniform0word_embeddings/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes
:	� *

seed *
T0*"
_class
loc:@word_embeddings
�
.word_embeddings/Initializer/random_uniform/subSub.word_embeddings/Initializer/random_uniform/max.word_embeddings/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@word_embeddings
�
.word_embeddings/Initializer/random_uniform/mulMul8word_embeddings/Initializer/random_uniform/RandomUniform.word_embeddings/Initializer/random_uniform/sub*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	� 
�
*word_embeddings/Initializer/random_uniformAdd.word_embeddings/Initializer/random_uniform/mul.word_embeddings/Initializer/random_uniform/min*
T0*"
_class
loc:@word_embeddings*
_output_shapes
:	� 
�
word_embeddings
VariableV2*
dtype0*
_output_shapes
:	� *
shared_name *"
_class
loc:@word_embeddings*
	container *
shape:	� 
�
word_embeddings/AssignAssignword_embeddings*word_embeddings/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	� 

word_embeddings/readIdentityword_embeddings*
_output_shapes
:	� *
T0*"
_class
loc:@word_embeddings
{
embedding_lookup/axisConst*
dtype0*
_output_shapes
: *"
_class
loc:@word_embeddings*
value	B : 
�
embedding_lookupGatherV2word_embeddings/read	Reshape_1embedding_lookup/axis*
Tindices0	*
Tparams0*"
_class
loc:@word_embeddings*+
_output_shapes
:���������@ *
Taxis0
m
embedding_lookup/IdentityIdentityembedding_lookup*
T0*+
_output_shapes
:���������@ 
J
rnn/RankConst*
dtype0*
_output_shapes
: *
value	B :
Q
rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
Q
rnn/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
f
	rnn/rangeRangernn/range/startrnn/Rankrnn/range/delta*

Tidx0*
_output_shapes
:
d
rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
Q
rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�

rnn/concatConcatV2rnn/concat/values_0	rnn/rangernn/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
rnn/transpose	Transposeembedding_lookup/Identity
rnn/concat*
T0*+
_output_shapes
:@��������� *
Tperm0
V
	rnn/ShapeShapernn/transpose*
T0*
out_type0*
_output_shapes
:
a
rnn/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
c
rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
c
rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
rnn/strided_sliceStridedSlice	rnn/Shapernn/strided_slice/stackrnn/strided_slice/stack_1rnn/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
j
(rnn/BasicRNNCellZeroState/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
$rnn/BasicRNNCellZeroState/ExpandDims
ExpandDimsrnn/strided_slice(rnn/BasicRNNCellZeroState/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
i
rnn/BasicRNNCellZeroState/ConstConst*
_output_shapes
:*
valueB:@*
dtype0
g
%rnn/BasicRNNCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
 rnn/BasicRNNCellZeroState/concatConcatV2$rnn/BasicRNNCellZeroState/ExpandDimsrnn/BasicRNNCellZeroState/Const%rnn/BasicRNNCellZeroState/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
j
%rnn/BasicRNNCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
rnn/BasicRNNCellZeroState/zerosFill rnn/BasicRNNCellZeroState/concat%rnn/BasicRNNCellZeroState/zeros/Const*
T0*

index_type0*'
_output_shapes
:���������@
l
*rnn/BasicRNNCellZeroState/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
&rnn/BasicRNNCellZeroState/ExpandDims_1
ExpandDimsrnn/strided_slice*rnn/BasicRNNCellZeroState/ExpandDims_1/dim*
_output_shapes
:*

Tdim0*
T0
k
!rnn/BasicRNNCellZeroState/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
X
rnn/Shape_1Shapernn/transpose*
T0*
out_type0*
_output_shapes
:
c
rnn/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB: 
e
rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
e
rnn/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
rnn/strided_slice_1StridedSlicernn/Shape_1rnn/strided_slice_1/stackrnn/strided_slice_1/stack_1rnn/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
X
rnn/Shape_2Shapernn/transpose*
_output_shapes
:*
T0*
out_type0
c
rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
e
rnn/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
rnn/strided_slice_2StridedSlicernn/Shape_2rnn/strided_slice_2/stackrnn/strided_slice_2/stack_1rnn/strided_slice_2/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
T
rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
v
rnn/ExpandDims
ExpandDimsrnn/strided_slice_2rnn/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
S
	rnn/ConstConst*
dtype0*
_output_shapes
:*
valueB:@
S
rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
rnn/concat_1ConcatV2rnn/ExpandDims	rnn/Constrnn/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
T
rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
t
	rnn/zerosFillrnn/concat_1rnn/zeros/Const*
T0*

index_type0*'
_output_shapes
:���������@
J
rnn/timeConst*
_output_shapes
: *
value	B : *
dtype0
�
rnn/TensorArrayTensorArrayV3rnn/strided_slice_1*/
tensor_array_namernn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *$
element_shape:���������@*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
�
rnn/TensorArray_1TensorArrayV3rnn/strided_slice_1*$
element_shape:��������� *
dynamic_size( *
clear_after_read(*
identical_element_shapes(*.
tensor_array_namernn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: 
i
rnn/TensorArrayUnstack/ShapeShapernn/transpose*
_output_shapes
:*
T0*
out_type0
t
*rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
$rnn/TensorArrayUnstack/strided_sliceStridedSlicernn/TensorArrayUnstack/Shape*rnn/TensorArrayUnstack/strided_slice/stack,rnn/TensorArrayUnstack/strided_slice/stack_1,rnn/TensorArrayUnstack/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
d
"rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
d
"rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
rnn/TensorArrayUnstack/rangeRange"rnn/TensorArrayUnstack/range/start$rnn/TensorArrayUnstack/strided_slice"rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:���������*

Tidx0
�
>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3rnn/TensorArray_1rnn/TensorArrayUnstack/rangernn/transposernn/TensorArray_1:1*
T0* 
_class
loc:@rnn/transpose*
_output_shapes
: 
O
rnn/Maximum/xConst*
_output_shapes
: *
value	B :*
dtype0
[
rnn/MaximumMaximumrnn/Maximum/xrnn/strided_slice_1*
T0*
_output_shapes
: 
Y
rnn/MinimumMinimumrnn/strided_slice_1rnn/Maximum*
_output_shapes
: *
T0
]
rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
�
rnn/while/EnterEnterrnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
�
rnn/while/Enter_1Enterrnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
�
rnn/while/Enter_2Enterrnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
�
rnn/while/Enter_3Enterrnn/BasicRNNCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:���������@*'

frame_namernn/while/while_context
n
rnn/while/MergeMergernn/while/Enterrnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
t
rnn/while/Merge_1Mergernn/while/Enter_1rnn/while/NextIteration_1*
N*
_output_shapes
: : *
T0
t
rnn/while/Merge_2Mergernn/while/Enter_2rnn/while/NextIteration_2*
_output_shapes
: : *
T0*
N
�
rnn/while/Merge_3Mergernn/while/Enter_3rnn/while/NextIteration_3*
T0*
N*)
_output_shapes
:���������@: 
^
rnn/while/LessLessrnn/while/Mergernn/while/Less/Enter*
T0*
_output_shapes
: 
�
rnn/while/Less/EnterEnterrnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
d
rnn/while/Less_1Lessrnn/while/Merge_1rnn/while/Less_1/Enter*
_output_shapes
: *
T0
�
rnn/while/Less_1/EnterEnterrnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context
\
rnn/while/LogicalAnd
LogicalAndrnn/while/Lessrnn/while/Less_1*
_output_shapes
: 
L
rnn/while/LoopCondLoopCondrnn/while/LogicalAnd*
_output_shapes
: 
�
rnn/while/SwitchSwitchrnn/while/Mergernn/while/LoopCond*
_output_shapes
: : *
T0*"
_class
loc:@rnn/while/Merge
�
rnn/while/Switch_1Switchrnn/while/Merge_1rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_1*
_output_shapes
: : 
�
rnn/while/Switch_2Switchrnn/while/Merge_2rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_2*
_output_shapes
: : 
�
rnn/while/Switch_3Switchrnn/while/Merge_3rnn/while/LoopCond*:
_output_shapes(
&:���������@:���������@*
T0*$
_class
loc:@rnn/while/Merge_3
S
rnn/while/IdentityIdentityrnn/while/Switch:1*
T0*
_output_shapes
: 
W
rnn/while/Identity_1Identityrnn/while/Switch_1:1*
T0*
_output_shapes
: 
W
rnn/while/Identity_2Identityrnn/while/Switch_2:1*
T0*
_output_shapes
: 
h
rnn/while/Identity_3Identityrnn/while/Switch_3:1*
T0*'
_output_shapes
:���������@
f
rnn/while/add/yConst^rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Z
rnn/while/addAddrnn/while/Identityrnn/while/add/y*
_output_shapes
: *
T0
�
rnn/while/TensorArrayReadV3TensorArrayReadV3!rnn/while/TensorArrayReadV3/Enterrnn/while/Identity_1#rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:��������� 
�
!rnn/while/TensorArrayReadV3/EnterEnterrnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*'

frame_namernn/while/while_context
�
#rnn/while/TensorArrayReadV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
parallel_iterations *
_output_shapes
: *'

frame_namernn/while/while_context*
T0
�
:rnn/basic_rnn_cell/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB"`   @   *
dtype0*
_output_shapes
:
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *�KF�*
dtype0
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
valueB
 *�KF>*
dtype0*
_output_shapes
: 
�
Brnn/basic_rnn_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniform:rnn/basic_rnn_cell/kernel/Initializer/random_uniform/shape*
_output_shapes

:`@*

seed *
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
seed2 *
dtype0
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/subSub8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/max8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
_output_shapes
: 
�
8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/mulMulBrnn/basic_rnn_cell/kernel/Initializer/random_uniform/RandomUniform8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/sub*
_output_shapes

:`@*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel
�
4rnn/basic_rnn_cell/kernel/Initializer/random_uniformAdd8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/mul8rnn/basic_rnn_cell/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
_output_shapes

:`@
�
rnn/basic_rnn_cell/kernel
VariableV2*
dtype0*
_output_shapes

:`@*
shared_name *,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
	container *
shape
:`@
�
 rnn/basic_rnn_cell/kernel/AssignAssignrnn/basic_rnn_cell/kernel4rnn/basic_rnn_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(*
_output_shapes

:`@
n
rnn/basic_rnn_cell/kernel/readIdentityrnn/basic_rnn_cell/kernel*
T0*
_output_shapes

:`@
�
)rnn/basic_rnn_cell/bias/Initializer/zerosConst**
_class 
loc:@rnn/basic_rnn_cell/bias*
valueB@*    *
dtype0*
_output_shapes
:@
�
rnn/basic_rnn_cell/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name **
_class 
loc:@rnn/basic_rnn_cell/bias*
	container *
shape:@
�
rnn/basic_rnn_cell/bias/AssignAssignrnn/basic_rnn_cell/bias)rnn/basic_rnn_cell/bias/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(*
_output_shapes
:@
f
rnn/basic_rnn_cell/bias/readIdentityrnn/basic_rnn_cell/bias*
T0*
_output_shapes
:@
{
$rnn/while/basic_rnn_cell/concat/axisConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
�
rnn/while/basic_rnn_cell/concatConcatV2rnn/while/TensorArrayReadV3rnn/while/Identity_3$rnn/while/basic_rnn_cell/concat/axis*
T0*
N*'
_output_shapes
:���������`*

Tidx0
�
rnn/while/basic_rnn_cell/MatMulMatMulrnn/while/basic_rnn_cell/concat%rnn/while/basic_rnn_cell/MatMul/Enter*'
_output_shapes
:���������@*
transpose_a( *
transpose_b( *
T0
�
%rnn/while/basic_rnn_cell/MatMul/EnterEnterrnn/basic_rnn_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:`@*'

frame_namernn/while/while_context
�
 rnn/while/basic_rnn_cell/BiasAddBiasAddrnn/while/basic_rnn_cell/MatMul&rnn/while/basic_rnn_cell/BiasAdd/Enter*
T0*
data_formatNHWC*'
_output_shapes
:���������@
�
&rnn/while/basic_rnn_cell/BiasAdd/EnterEnterrnn/basic_rnn_cell/bias/read*
parallel_iterations *
_output_shapes
:@*'

frame_namernn/while/while_context*
T0*
is_constant(
y
rnn/while/basic_rnn_cell/TanhTanh rnn/while/basic_rnn_cell/BiasAdd*
T0*'
_output_shapes
:���������@
�
-rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterrnn/while/Identity_1rnn/while/basic_rnn_cell/Tanhrnn/while/Identity_2*
T0*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
_output_shapes
: 
�
3rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterrnn/TensorArray*
is_constant(*
_output_shapes
:*'

frame_namernn/while/while_context*
T0*0
_class&
$"loc:@rnn/while/basic_rnn_cell/Tanh*
parallel_iterations 
h
rnn/while/add_1/yConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
`
rnn/while/add_1Addrnn/while/Identity_1rnn/while/add_1/y*
T0*
_output_shapes
: 
X
rnn/while/NextIterationNextIterationrnn/while/add*
T0*
_output_shapes
: 
\
rnn/while/NextIteration_1NextIterationrnn/while/add_1*
T0*
_output_shapes
: 
z
rnn/while/NextIteration_2NextIteration-rnn/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
{
rnn/while/NextIteration_3NextIterationrnn/while/basic_rnn_cell/Tanh*
T0*'
_output_shapes
:���������@
I
rnn/while/ExitExitrnn/while/Switch*
T0*
_output_shapes
: 
M
rnn/while/Exit_1Exitrnn/while/Switch_1*
T0*
_output_shapes
: 
M
rnn/while/Exit_2Exitrnn/while/Switch_2*
T0*
_output_shapes
: 
^
rnn/while/Exit_3Exitrnn/while/Switch_3*
T0*'
_output_shapes
:���������@
�
&rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3rnn/TensorArrayrnn/while/Exit_2*
_output_shapes
: *"
_class
loc:@rnn/TensorArray
�
 rnn/TensorArrayStack/range/startConst*"
_class
loc:@rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
�
 rnn/TensorArrayStack/range/deltaConst*"
_class
loc:@rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
�
rnn/TensorArrayStack/rangeRange rnn/TensorArrayStack/range/start&rnn/TensorArrayStack/TensorArraySizeV3 rnn/TensorArrayStack/range/delta*"
_class
loc:@rnn/TensorArray*#
_output_shapes
:���������*

Tidx0
�
(rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3rnn/TensorArrayrnn/TensorArrayStack/rangernn/while/Exit_2*
dtype0*+
_output_shapes
:@���������@*$
element_shape:���������@*"
_class
loc:@rnn/TensorArray
U
rnn/Const_1Const*
_output_shapes
:*
valueB:@*
dtype0
L

rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
S
rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
S
rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
n
rnn/range_1Rangernn/range_1/start
rnn/Rank_1rnn/range_1/delta*
_output_shapes
:*

Tidx0
f
rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
S
rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
rnn/concat_2ConcatV2rnn/concat_2/values_0rnn/range_1rnn/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
rnn/transpose_1	Transpose(rnn/TensorArrayStack/TensorArrayGatherV3rnn/concat_2*+
_output_shapes
:���������@@*
Tperm0*
T0
h
strided_slice/stackConst*!
valueB"    ����    *
dtype0*
_output_shapes
:
j
strided_slice/stack_1Const*
_output_shapes
:*!
valueB"            *
dtype0
j
strided_slice/stack_2Const*
_output_shapes
:*!
valueB"         *
dtype0
�
strided_sliceStridedSlicernn/transpose_1strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*'
_output_shapes
:���������@*
T0*
Index0
�
6layer_rnn_fc_1/kernel/Initializer/random_uniform/shapeConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB"@   �   *
dtype0*
_output_shapes
:
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/minConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *�5�*
dtype0*
_output_shapes
: 
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/maxConst*(
_class
loc:@layer_rnn_fc_1/kernel*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
>layer_rnn_fc_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform6layer_rnn_fc_1/kernel/Initializer/random_uniform/shape*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
seed2 *
dtype0*
_output_shapes
:	@�*

seed 
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/subSub4layer_rnn_fc_1/kernel/Initializer/random_uniform/max4layer_rnn_fc_1/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
: 
�
4layer_rnn_fc_1/kernel/Initializer/random_uniform/mulMul>layer_rnn_fc_1/kernel/Initializer/random_uniform/RandomUniform4layer_rnn_fc_1/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
:	@�
�
0layer_rnn_fc_1/kernel/Initializer/random_uniformAdd4layer_rnn_fc_1/kernel/Initializer/random_uniform/mul4layer_rnn_fc_1/kernel/Initializer/random_uniform/min*
_output_shapes
:	@�*
T0*(
_class
loc:@layer_rnn_fc_1/kernel
�
layer_rnn_fc_1/kernel
VariableV2*
shape:	@�*
dtype0*
_output_shapes
:	@�*
shared_name *(
_class
loc:@layer_rnn_fc_1/kernel*
	container 
�
layer_rnn_fc_1/kernel/AssignAssignlayer_rnn_fc_1/kernel0layer_rnn_fc_1/kernel/Initializer/random_uniform*
use_locking(*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
validate_shape(*
_output_shapes
:	@�
�
layer_rnn_fc_1/kernel/readIdentitylayer_rnn_fc_1/kernel*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
_output_shapes
:	@�
�
%layer_rnn_fc_1/bias/Initializer/zerosConst*
_output_shapes	
:�*&
_class
loc:@layer_rnn_fc_1/bias*
valueB�*    *
dtype0
�
layer_rnn_fc_1/bias
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *&
_class
loc:@layer_rnn_fc_1/bias*
	container *
shape:�
�
layer_rnn_fc_1/bias/AssignAssignlayer_rnn_fc_1/bias%layer_rnn_fc_1/bias/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(*
_output_shapes	
:�
�
layer_rnn_fc_1/bias/readIdentitylayer_rnn_fc_1/bias*&
_class
loc:@layer_rnn_fc_1/bias*
_output_shapes	
:�*
T0
�
layer_rnn_fc_1/MatMulMatMulstrided_slicelayer_rnn_fc_1/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
layer_rnn_fc_1/BiasAddBiasAddlayer_rnn_fc_1/MatMullayer_rnn_fc_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
f
layer_rnn_fc_1/ReluRelulayer_rnn_fc_1/BiasAdd*(
_output_shapes
:����������*
T0
�
,batch_normalization_1/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_1/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
batch_normalization_1/gamma
VariableV2*.
_class$
" loc:@batch_normalization_1/gamma*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma
�
 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:*
T0
�
,batch_normalization_1/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_1/beta*
valueB*    *
dtype0*
_output_shapes
:
�
batch_normalization_1/beta
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *-
_class#
!loc:@batch_normalization_1/beta*
	container 
�
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(
�
batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:
�
3batch_normalization_1/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
!batch_normalization_1/moving_mean
VariableV2*
shared_name *4
_class*
(&loc:@batch_normalization_1/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
:
�
(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
�
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*
_output_shapes
:*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
�
6batch_normalization_1/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
%batch_normalization_1/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shared_name *8
_class.
,*loc:@batch_normalization_1/moving_variance*
	container *
shape:
�
,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:
�
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*
_output_shapes
:*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
j
%batch_normalization_1/batchnorm/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
#batch_normalization_1/batchnorm/addAdd*batch_normalization_1/moving_variance/read%batch_normalization_1/batchnorm/add/y*
T0*
_output_shapes
:
x
%batch_normalization_1/batchnorm/RsqrtRsqrt#batch_normalization_1/batchnorm/add*
T0*
_output_shapes
:
�
#batch_normalization_1/batchnorm/mulMul%batch_normalization_1/batchnorm/Rsqrt batch_normalization_1/gamma/read*
T0*
_output_shapes
:
�
%batch_normalization_1/batchnorm/mul_1MulIteratorGetNext:3#batch_normalization_1/batchnorm/mul*
T0*'
_output_shapes
:���������
�
%batch_normalization_1/batchnorm/mul_2Mul&batch_normalization_1/moving_mean/read#batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:
�
#batch_normalization_1/batchnorm/subSubbatch_normalization_1/beta/read%batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:
�
%batch_normalization_1/batchnorm/add_1Add%batch_normalization_1/batchnorm/mul_1#batch_normalization_1/batchnorm/sub*
T0*'
_output_shapes
:���������
�
3layer_dnn_1/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_dnn_1/kernel*
valueB"       *
dtype0*
_output_shapes
:
�
1layer_dnn_1/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_dnn_1/kernel*
valueB
 *b���*
dtype0*
_output_shapes
: 
�
1layer_dnn_1/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_dnn_1/kernel*
valueB
 *b��>*
dtype0*
_output_shapes
: 
�
;layer_dnn_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_dnn_1/kernel/Initializer/random_uniform/shape*

seed *
T0*%
_class
loc:@layer_dnn_1/kernel*
seed2 *
dtype0*
_output_shapes

: 
�
1layer_dnn_1/kernel/Initializer/random_uniform/subSub1layer_dnn_1/kernel/Initializer/random_uniform/max1layer_dnn_1/kernel/Initializer/random_uniform/min*%
_class
loc:@layer_dnn_1/kernel*
_output_shapes
: *
T0
�
1layer_dnn_1/kernel/Initializer/random_uniform/mulMul;layer_dnn_1/kernel/Initializer/random_uniform/RandomUniform1layer_dnn_1/kernel/Initializer/random_uniform/sub*
_output_shapes

: *
T0*%
_class
loc:@layer_dnn_1/kernel
�
-layer_dnn_1/kernel/Initializer/random_uniformAdd1layer_dnn_1/kernel/Initializer/random_uniform/mul1layer_dnn_1/kernel/Initializer/random_uniform/min*%
_class
loc:@layer_dnn_1/kernel*
_output_shapes

: *
T0
�
layer_dnn_1/kernel
VariableV2*
shared_name *%
_class
loc:@layer_dnn_1/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: 
�
layer_dnn_1/kernel/AssignAssignlayer_dnn_1/kernel-layer_dnn_1/kernel/Initializer/random_uniform*%
_class
loc:@layer_dnn_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
layer_dnn_1/kernel/readIdentitylayer_dnn_1/kernel*
T0*%
_class
loc:@layer_dnn_1/kernel*
_output_shapes

: 
�
"layer_dnn_1/bias/Initializer/zerosConst*#
_class
loc:@layer_dnn_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_dnn_1/bias
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_dnn_1/bias*
	container 
�
layer_dnn_1/bias/AssignAssignlayer_dnn_1/bias"layer_dnn_1/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_dnn_1/bias*
validate_shape(*
_output_shapes
: 
}
layer_dnn_1/bias/readIdentitylayer_dnn_1/bias*
_output_shapes
: *
T0*#
_class
loc:@layer_dnn_1/bias
�
layer_dnn_1/MatMulMatMul%batch_normalization_1/batchnorm/add_1layer_dnn_1/kernel/read*
transpose_b( *
T0*'
_output_shapes
:��������� *
transpose_a( 
�
layer_dnn_1/BiasAddBiasAddlayer_dnn_1/MatMullayer_dnn_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
_
layer_dnn_1/ReluRelulayer_dnn_1/BiasAdd*'
_output_shapes
:��������� *
T0
�
3layer_dnn_2/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_dnn_2/kernel*
valueB"        *
dtype0*
_output_shapes
:
�
1layer_dnn_2/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_dnn_2/kernel*
valueB
 *qĜ�*
dtype0*
_output_shapes
: 
�
1layer_dnn_2/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_dnn_2/kernel*
valueB
 *qĜ>*
dtype0*
_output_shapes
: 
�
;layer_dnn_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_dnn_2/kernel/Initializer/random_uniform/shape*

seed *
T0*%
_class
loc:@layer_dnn_2/kernel*
seed2 *
dtype0*
_output_shapes

:  
�
1layer_dnn_2/kernel/Initializer/random_uniform/subSub1layer_dnn_2/kernel/Initializer/random_uniform/max1layer_dnn_2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_dnn_2/kernel*
_output_shapes
: 
�
1layer_dnn_2/kernel/Initializer/random_uniform/mulMul;layer_dnn_2/kernel/Initializer/random_uniform/RandomUniform1layer_dnn_2/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_dnn_2/kernel*
_output_shapes

:  
�
-layer_dnn_2/kernel/Initializer/random_uniformAdd1layer_dnn_2/kernel/Initializer/random_uniform/mul1layer_dnn_2/kernel/Initializer/random_uniform/min*
_output_shapes

:  *
T0*%
_class
loc:@layer_dnn_2/kernel
�
layer_dnn_2/kernel
VariableV2*
dtype0*
_output_shapes

:  *
shared_name *%
_class
loc:@layer_dnn_2/kernel*
	container *
shape
:  
�
layer_dnn_2/kernel/AssignAssignlayer_dnn_2/kernel-layer_dnn_2/kernel/Initializer/random_uniform*
use_locking(*
T0*%
_class
loc:@layer_dnn_2/kernel*
validate_shape(*
_output_shapes

:  
�
layer_dnn_2/kernel/readIdentitylayer_dnn_2/kernel*%
_class
loc:@layer_dnn_2/kernel*
_output_shapes

:  *
T0
�
"layer_dnn_2/bias/Initializer/zerosConst*#
_class
loc:@layer_dnn_2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_dnn_2/bias
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_dnn_2/bias
�
layer_dnn_2/bias/AssignAssignlayer_dnn_2/bias"layer_dnn_2/bias/Initializer/zeros*#
_class
loc:@layer_dnn_2/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
}
layer_dnn_2/bias/readIdentitylayer_dnn_2/bias*
_output_shapes
: *
T0*#
_class
loc:@layer_dnn_2/bias
�
layer_dnn_2/MatMulMatMullayer_dnn_1/Relulayer_dnn_2/kernel/read*
T0*'
_output_shapes
:��������� *
transpose_a( *
transpose_b( 
�
layer_dnn_2/BiasAddBiasAddlayer_dnn_2/MatMullayer_dnn_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
_
layer_dnn_2/ReluRelulayer_dnn_2/BiasAdd*
T0*'
_output_shapes
:��������� 
�
,batch_normalization_2/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_2/gamma*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
batch_normalization_2/gamma
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_2/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
"batch_normalization_2/gamma/AssignAssignbatch_normalization_2/gamma,batch_normalization_2/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@
�
 batch_normalization_2/gamma/readIdentitybatch_normalization_2/gamma*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
:@
�
,batch_normalization_2/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_2/beta*
valueB@*    *
dtype0*
_output_shapes
:@
�
batch_normalization_2/beta
VariableV2*-
_class#
!loc:@batch_normalization_2/beta*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
�
!batch_normalization_2/beta/AssignAssignbatch_normalization_2/beta,batch_normalization_2/beta/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(
�
batch_normalization_2/beta/readIdentitybatch_normalization_2/beta*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
:@
�
3batch_normalization_2/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:@*4
_class*
(&loc:@batch_normalization_2/moving_mean*
valueB@*    
�
!batch_normalization_2/moving_mean
VariableV2*4
_class*
(&loc:@batch_normalization_2/moving_mean*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
�
(batch_normalization_2/moving_mean/AssignAssign!batch_normalization_2/moving_mean3batch_normalization_2/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:@
�
&batch_normalization_2/moving_mean/readIdentity!batch_normalization_2/moving_mean*
_output_shapes
:@*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean
�
6batch_normalization_2/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_2/moving_variance*
valueB@*  �?*
dtype0*
_output_shapes
:@
�
%batch_normalization_2/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *8
_class.
,*loc:@batch_normalization_2/moving_variance*
	container *
shape:@
�
,batch_normalization_2/moving_variance/AssignAssign%batch_normalization_2/moving_variance6batch_normalization_2/moving_variance/Initializer/ones*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
:@
�
*batch_normalization_2/moving_variance/readIdentity%batch_normalization_2/moving_variance*
_output_shapes
:@*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
j
%batch_normalization_2/batchnorm/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
#batch_normalization_2/batchnorm/addAdd*batch_normalization_2/moving_variance/read%batch_normalization_2/batchnorm/add/y*
_output_shapes
:@*
T0
x
%batch_normalization_2/batchnorm/RsqrtRsqrt#batch_normalization_2/batchnorm/add*
T0*
_output_shapes
:@
�
#batch_normalization_2/batchnorm/mulMul%batch_normalization_2/batchnorm/Rsqrt batch_normalization_2/gamma/read*
_output_shapes
:@*
T0
�
%batch_normalization_2/batchnorm/mul_1MulCast_1#batch_normalization_2/batchnorm/mul*
T0*'
_output_shapes
:���������@
�
%batch_normalization_2/batchnorm/mul_2Mul&batch_normalization_2/moving_mean/read#batch_normalization_2/batchnorm/mul*
T0*
_output_shapes
:@
�
#batch_normalization_2/batchnorm/subSubbatch_normalization_2/beta/read%batch_normalization_2/batchnorm/mul_2*
T0*
_output_shapes
:@
�
%batch_normalization_2/batchnorm/add_1Add%batch_normalization_2/batchnorm/mul_1#batch_normalization_2/batchnorm/sub*
T0*'
_output_shapes
:���������@
d
Reshape_2/shapeConst*!
valueB"����@      *
dtype0*
_output_shapes
:
�
	Reshape_2Reshape%batch_normalization_2/batchnorm/add_1Reshape_2/shape*
T0*
Tshape0*+
_output_shapes
:���������@
�
:layer_length_conv1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*,
_class"
 loc:@layer_length_conv1/kernel*!
valueB"          *
dtype0
�
8layer_length_conv1/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_length_conv1/kernel*
valueB
 *d|�*
dtype0*
_output_shapes
: 
�
8layer_length_conv1/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_length_conv1/kernel*
valueB
 *d|>*
dtype0*
_output_shapes
: 
�
Blayer_length_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_length_conv1/kernel/Initializer/random_uniform/shape*
dtype0*"
_output_shapes
: *

seed *
T0*,
_class"
 loc:@layer_length_conv1/kernel*
seed2 
�
8layer_length_conv1/kernel/Initializer/random_uniform/subSub8layer_length_conv1/kernel/Initializer/random_uniform/max8layer_length_conv1/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_length_conv1/kernel*
_output_shapes
: 
�
8layer_length_conv1/kernel/Initializer/random_uniform/mulMulBlayer_length_conv1/kernel/Initializer/random_uniform/RandomUniform8layer_length_conv1/kernel/Initializer/random_uniform/sub*"
_output_shapes
: *
T0*,
_class"
 loc:@layer_length_conv1/kernel
�
4layer_length_conv1/kernel/Initializer/random_uniformAdd8layer_length_conv1/kernel/Initializer/random_uniform/mul8layer_length_conv1/kernel/Initializer/random_uniform/min*"
_output_shapes
: *
T0*,
_class"
 loc:@layer_length_conv1/kernel
�
layer_length_conv1/kernel
VariableV2*
	container *
shape: *
dtype0*"
_output_shapes
: *
shared_name *,
_class"
 loc:@layer_length_conv1/kernel
�
 layer_length_conv1/kernel/AssignAssignlayer_length_conv1/kernel4layer_length_conv1/kernel/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@layer_length_conv1/kernel*
validate_shape(*"
_output_shapes
: 
�
layer_length_conv1/kernel/readIdentitylayer_length_conv1/kernel*
T0*,
_class"
 loc:@layer_length_conv1/kernel*"
_output_shapes
: 
�
)layer_length_conv1/bias/Initializer/zerosConst**
_class 
loc:@layer_length_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_length_conv1/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name **
_class 
loc:@layer_length_conv1/bias*
	container *
shape: 
�
layer_length_conv1/bias/AssignAssignlayer_length_conv1/bias)layer_length_conv1/bias/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0**
_class 
loc:@layer_length_conv1/bias*
validate_shape(
�
layer_length_conv1/bias/readIdentitylayer_length_conv1/bias*
T0**
_class 
loc:@layer_length_conv1/bias*
_output_shapes
: 
j
 layer_length_conv1/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
j
(layer_length_conv1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
$layer_length_conv1/conv1d/ExpandDims
ExpandDims	Reshape_2(layer_length_conv1/conv1d/ExpandDims/dim*/
_output_shapes
:���������@*

Tdim0*
T0
l
*layer_length_conv1/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
&layer_length_conv1/conv1d/ExpandDims_1
ExpandDimslayer_length_conv1/kernel/read*layer_length_conv1/conv1d/ExpandDims_1/dim*&
_output_shapes
: *

Tdim0*
T0
�
 layer_length_conv1/conv1d/Conv2DConv2D$layer_length_conv1/conv1d/ExpandDims&layer_length_conv1/conv1d/ExpandDims_1*/
_output_shapes
:���������@ *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
!layer_length_conv1/conv1d/SqueezeSqueeze layer_length_conv1/conv1d/Conv2D*
T0*+
_output_shapes
:���������@ *
squeeze_dims

�
layer_length_conv1/BiasAddBiasAdd!layer_length_conv1/conv1d/Squeezelayer_length_conv1/bias/read*
data_formatNHWC*+
_output_shapes
:���������@ *
T0
q
layer_length_conv1/ReluRelulayer_length_conv1/BiasAdd*
T0*+
_output_shapes
:���������@ 
`
max_pooling1d_2/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d_2/ExpandDims
ExpandDimslayer_length_conv1/Relumax_pooling1d_2/ExpandDims/dim*
T0*/
_output_shapes
:���������@ *

Tdim0
�
max_pooling1d_2/MaxPoolMaxPoolmax_pooling1d_2/ExpandDims*/
_output_shapes
:���������  *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
�
max_pooling1d_2/SqueezeSqueezemax_pooling1d_2/MaxPool*
squeeze_dims
*
T0*+
_output_shapes
:���������  
�
:layer_length_conv2/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_length_conv2/kernel*!
valueB"           *
dtype0*
_output_shapes
:
�
8layer_length_conv2/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_length_conv2/kernel*
valueB
 *�5�*
dtype0*
_output_shapes
: 
�
8layer_length_conv2/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_length_conv2/kernel*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
Blayer_length_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_length_conv2/kernel/Initializer/random_uniform/shape*
dtype0*"
_output_shapes
:  *

seed *
T0*,
_class"
 loc:@layer_length_conv2/kernel*
seed2 
�
8layer_length_conv2/kernel/Initializer/random_uniform/subSub8layer_length_conv2/kernel/Initializer/random_uniform/max8layer_length_conv2/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_length_conv2/kernel*
_output_shapes
: 
�
8layer_length_conv2/kernel/Initializer/random_uniform/mulMulBlayer_length_conv2/kernel/Initializer/random_uniform/RandomUniform8layer_length_conv2/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_length_conv2/kernel*"
_output_shapes
:  
�
4layer_length_conv2/kernel/Initializer/random_uniformAdd8layer_length_conv2/kernel/Initializer/random_uniform/mul8layer_length_conv2/kernel/Initializer/random_uniform/min*"
_output_shapes
:  *
T0*,
_class"
 loc:@layer_length_conv2/kernel
�
layer_length_conv2/kernel
VariableV2*
shared_name *,
_class"
 loc:@layer_length_conv2/kernel*
	container *
shape:  *
dtype0*"
_output_shapes
:  
�
 layer_length_conv2/kernel/AssignAssignlayer_length_conv2/kernel4layer_length_conv2/kernel/Initializer/random_uniform*
validate_shape(*"
_output_shapes
:  *
use_locking(*
T0*,
_class"
 loc:@layer_length_conv2/kernel
�
layer_length_conv2/kernel/readIdentitylayer_length_conv2/kernel*
T0*,
_class"
 loc:@layer_length_conv2/kernel*"
_output_shapes
:  
�
)layer_length_conv2/bias/Initializer/zerosConst**
_class 
loc:@layer_length_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_length_conv2/bias
VariableV2**
_class 
loc:@layer_length_conv2/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
layer_length_conv2/bias/AssignAssignlayer_length_conv2/bias)layer_length_conv2/bias/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_length_conv2/bias*
validate_shape(*
_output_shapes
: 
�
layer_length_conv2/bias/readIdentitylayer_length_conv2/bias*
T0**
_class 
loc:@layer_length_conv2/bias*
_output_shapes
: 
j
 layer_length_conv2/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
j
(layer_length_conv2/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
$layer_length_conv2/conv1d/ExpandDims
ExpandDimsmax_pooling1d_2/Squeeze(layer_length_conv2/conv1d/ExpandDims/dim*/
_output_shapes
:���������  *

Tdim0*
T0
l
*layer_length_conv2/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
&layer_length_conv2/conv1d/ExpandDims_1
ExpandDimslayer_length_conv2/kernel/read*layer_length_conv2/conv1d/ExpandDims_1/dim*&
_output_shapes
:  *

Tdim0*
T0
�
 layer_length_conv2/conv1d/Conv2DConv2D$layer_length_conv2/conv1d/ExpandDims&layer_length_conv2/conv1d/ExpandDims_1*
paddingSAME*/
_output_shapes
:���������  *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
�
!layer_length_conv2/conv1d/SqueezeSqueeze layer_length_conv2/conv1d/Conv2D*
T0*+
_output_shapes
:���������  *
squeeze_dims

�
layer_length_conv2/BiasAddBiasAdd!layer_length_conv2/conv1d/Squeezelayer_length_conv2/bias/read*
data_formatNHWC*+
_output_shapes
:���������  *
T0
q
layer_length_conv2/ReluRelulayer_length_conv2/BiasAdd*
T0*+
_output_shapes
:���������  
`
max_pooling1d_3/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
max_pooling1d_3/ExpandDims
ExpandDimslayer_length_conv2/Relumax_pooling1d_3/ExpandDims/dim*

Tdim0*
T0*/
_output_shapes
:���������  
�
max_pooling1d_3/MaxPoolMaxPoolmax_pooling1d_3/ExpandDims*
ksize
*
paddingVALID*/
_output_shapes
:��������� *
T0*
data_formatNHWC*
strides

�
max_pooling1d_3/SqueezeSqueezemax_pooling1d_3/MaxPool*+
_output_shapes
:��������� *
squeeze_dims
*
T0
n
Flatten_1/flatten/ShapeShapemax_pooling1d_3/Squeeze*
T0*
out_type0*
_output_shapes
:
o
%Flatten_1/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
q
'Flatten_1/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
q
'Flatten_1/flatten/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
Flatten_1/flatten/strided_sliceStridedSliceFlatten_1/flatten/Shape%Flatten_1/flatten/strided_slice/stack'Flatten_1/flatten/strided_slice/stack_1'Flatten_1/flatten/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
l
!Flatten_1/flatten/Reshape/shape/1Const*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Flatten_1/flatten/Reshape/shapePackFlatten_1/flatten/strided_slice!Flatten_1/flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
�
Flatten_1/flatten/ReshapeReshapemax_pooling1d_3/SqueezeFlatten_1/flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:����������
�
8layer_length_fc1/kernel/Initializer/random_uniform/shapeConst**
_class 
loc:@layer_length_fc1/kernel*
valueB"   �   *
dtype0*
_output_shapes
:
�
6layer_length_fc1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: **
_class 
loc:@layer_length_fc1/kernel*
valueB
 *�Kƽ*
dtype0
�
6layer_length_fc1/kernel/Initializer/random_uniform/maxConst**
_class 
loc:@layer_length_fc1/kernel*
valueB
 *�K�=*
dtype0*
_output_shapes
: 
�
@layer_length_fc1/kernel/Initializer/random_uniform/RandomUniformRandomUniform8layer_length_fc1/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
��*

seed *
T0**
_class 
loc:@layer_length_fc1/kernel*
seed2 *
dtype0
�
6layer_length_fc1/kernel/Initializer/random_uniform/subSub6layer_length_fc1/kernel/Initializer/random_uniform/max6layer_length_fc1/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@layer_length_fc1/kernel*
_output_shapes
: 
�
6layer_length_fc1/kernel/Initializer/random_uniform/mulMul@layer_length_fc1/kernel/Initializer/random_uniform/RandomUniform6layer_length_fc1/kernel/Initializer/random_uniform/sub**
_class 
loc:@layer_length_fc1/kernel* 
_output_shapes
:
��*
T0
�
2layer_length_fc1/kernel/Initializer/random_uniformAdd6layer_length_fc1/kernel/Initializer/random_uniform/mul6layer_length_fc1/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@layer_length_fc1/kernel* 
_output_shapes
:
��
�
layer_length_fc1/kernel
VariableV2*
shared_name **
_class 
loc:@layer_length_fc1/kernel*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��
�
layer_length_fc1/kernel/AssignAssignlayer_length_fc1/kernel2layer_length_fc1/kernel/Initializer/random_uniform**
_class 
loc:@layer_length_fc1/kernel*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0
�
layer_length_fc1/kernel/readIdentitylayer_length_fc1/kernel**
_class 
loc:@layer_length_fc1/kernel* 
_output_shapes
:
��*
T0
�
'layer_length_fc1/bias/Initializer/zerosConst*(
_class
loc:@layer_length_fc1/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_length_fc1/bias
VariableV2*
shared_name *(
_class
loc:@layer_length_fc1/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
layer_length_fc1/bias/AssignAssignlayer_length_fc1/bias'layer_length_fc1/bias/Initializer/zeros*
T0*(
_class
loc:@layer_length_fc1/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
layer_length_fc1/bias/readIdentitylayer_length_fc1/bias*
T0*(
_class
loc:@layer_length_fc1/bias*
_output_shapes	
:�
�
layer_length_fc1/MatMulMatMulFlatten_1/flatten/Reshapelayer_length_fc1/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
layer_length_fc1/BiasAddBiasAddlayer_length_fc1/MatMullayer_length_fc1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
j
layer_length_fc1/ReluRelulayer_length_fc1/BiasAdd*
T0*(
_output_shapes
:����������
�
>layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/shapeConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/minConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *q��*
dtype0*
_output_shapes
: 
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/maxConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *q�>*
dtype0*
_output_shapes
: 
�
Flayer_combine_fc_cnn1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform>layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/shape*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
seed2 *
dtype0* 
_output_shapes
:
��*

seed 
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/subSub<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/max<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/min*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
_output_shapes
: 
�
<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/mulMulFlayer_combine_fc_cnn1d/kernel/Initializer/random_uniform/RandomUniform<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/sub*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel* 
_output_shapes
:
��
�
8layer_combine_fc_cnn1d/kernel/Initializer/random_uniformAdd<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/mul<layer_combine_fc_cnn1d/kernel/Initializer/random_uniform/min*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel* 
_output_shapes
:
��
�
layer_combine_fc_cnn1d/kernel
VariableV2*
dtype0* 
_output_shapes
:
��*
shared_name *0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
	container *
shape:
��
�
$layer_combine_fc_cnn1d/kernel/AssignAssignlayer_combine_fc_cnn1d/kernel8layer_combine_fc_cnn1d/kernel/Initializer/random_uniform*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
"layer_combine_fc_cnn1d/kernel/readIdentitylayer_combine_fc_cnn1d/kernel*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel* 
_output_shapes
:
��
�
-layer_combine_fc_cnn1d/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:�*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
valueB�*    
�
layer_combine_fc_cnn1d/bias
VariableV2*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
"layer_combine_fc_cnn1d/bias/AssignAssignlayer_combine_fc_cnn1d/bias-layer_combine_fc_cnn1d/bias/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(*
_output_shapes	
:�
�
 layer_combine_fc_cnn1d/bias/readIdentitylayer_combine_fc_cnn1d/bias*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
_output_shapes	
:�
�
layer_combine_fc_cnn1d/MatMulMatMullayer_fc1/Relu"layer_combine_fc_cnn1d/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
layer_combine_fc_cnn1d/BiasAddBiasAddlayer_combine_fc_cnn1d/MatMul layer_combine_fc_cnn1d/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
v
layer_combine_fc_cnn1d/ReluRelulayer_combine_fc_cnn1d/BiasAdd*(
_output_shapes
:����������*
T0
�
:layer_combine_fc_x/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *q��*
dtype0*
_output_shapes
: 
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *q�>*
dtype0*
_output_shapes
: 
�
Blayer_combine_fc_x/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_combine_fc_x/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
��*

seed *
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
seed2 
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/subSub8layer_combine_fc_x/kernel/Initializer/random_uniform/max8layer_combine_fc_x/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
_output_shapes
: 
�
8layer_combine_fc_x/kernel/Initializer/random_uniform/mulMulBlayer_combine_fc_x/kernel/Initializer/random_uniform/RandomUniform8layer_combine_fc_x/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��
�
4layer_combine_fc_x/kernel/Initializer/random_uniformAdd8layer_combine_fc_x/kernel/Initializer/random_uniform/mul8layer_combine_fc_x/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��
�
layer_combine_fc_x/kernel
VariableV2*,
_class"
 loc:@layer_combine_fc_x/kernel*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��*
shared_name 
�
 layer_combine_fc_x/kernel/AssignAssignlayer_combine_fc_x/kernel4layer_combine_fc_x/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel
�
layer_combine_fc_x/kernel/readIdentitylayer_combine_fc_x/kernel*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��
�
)layer_combine_fc_x/bias/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_combine_fc_x/bias
VariableV2**
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
layer_combine_fc_x/bias/AssignAssignlayer_combine_fc_x/bias)layer_combine_fc_x/bias/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:�
�
layer_combine_fc_x/bias/readIdentitylayer_combine_fc_x/bias*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes	
:�
�
layer_combine_fc_x/MatMulMatMullayer_combine_fc_cnn1d/Relulayer_combine_fc_x/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
�
layer_combine_fc_x/BiasAddBiasAddlayer_combine_fc_x/MatMullayer_combine_fc_x/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:����������
n
layer_combine_fc_x/ReluRelulayer_combine_fc_x/BiasAdd*
T0*(
_output_shapes
:����������
�
:layer_combine_fc_y/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"�      *
dtype0*
_output_shapes
:
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *o}R�*
dtype0*
_output_shapes
: 
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *o}R>
�
Blayer_combine_fc_y/kernel/Initializer/random_uniform/RandomUniformRandomUniform:layer_combine_fc_y/kernel/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
seed2 *
dtype0*
_output_shapes
:	�*

seed 
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/subSub8layer_combine_fc_y/kernel/Initializer/random_uniform/max8layer_combine_fc_y/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
: 
�
8layer_combine_fc_y/kernel/Initializer/random_uniform/mulMulBlayer_combine_fc_y/kernel/Initializer/random_uniform/RandomUniform8layer_combine_fc_y/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	�
�
4layer_combine_fc_y/kernel/Initializer/random_uniformAdd8layer_combine_fc_y/kernel/Initializer/random_uniform/mul8layer_combine_fc_y/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	�
�
layer_combine_fc_y/kernel
VariableV2*
	container *
shape:	�*
dtype0*
_output_shapes
:	�*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel
�
 layer_combine_fc_y/kernel/AssignAssignlayer_combine_fc_y/kernel4layer_combine_fc_y/kernel/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	�
�
layer_combine_fc_y/kernel/readIdentitylayer_combine_fc_y/kernel*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	�
�
)layer_combine_fc_y/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    
�
layer_combine_fc_y/bias
VariableV2**
_class 
loc:@layer_combine_fc_y/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
layer_combine_fc_y/bias/AssignAssignlayer_combine_fc_y/bias)layer_combine_fc_y/bias/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
�
layer_combine_fc_y/bias/readIdentitylayer_combine_fc_y/bias*
_output_shapes
:*
T0**
_class 
loc:@layer_combine_fc_y/bias
�
layer_combine_fc_y/MatMulMatMullayer_combine_fc_x/Relulayer_combine_fc_y/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
layer_combine_fc_y/BiasAddBiasAddlayer_combine_fc_y/MatMullayer_combine_fc_y/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
`
SoftmaxSoftmaxlayer_combine_fc_y/BiasAdd*'
_output_shapes
:���������*
T0
R
ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
x
ArgMaxArgMaxSoftmaxArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:���������
z
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeIteratorGetNext:4*
T0	*
out_type0*
_output_shapes
:
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitslayer_combine_fc_y/BiasAddIteratorGetNext:4*
T0*6
_output_shapes$
":���������:���������*
Tlabels0	
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
MeanMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
�
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
�
gradients/Mean_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*
_output_shapes
:*
T0
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:���������*

Tmultiples0*
T0
�
gradients/Mean_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
e
gradients/Mean_grad/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:���������*
T0
�
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:���������*
T0
�
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:���������*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*'
_output_shapes
:���������*

Tdim0
�
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:���������
�
5gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGradBiasAddGradZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*
data_formatNHWC*
_output_shapes
:*
T0
�
:gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_depsNoOp[^gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul6^gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad
�
Bgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependencyIdentityZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul;^gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*m
_classc
a_loc:@gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul
�
Dgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad;^gradients/layer_combine_fc_y/BiasAdd_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_combine_fc_y/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
/gradients/layer_combine_fc_y/MatMul_grad/MatMulMatMulBgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependencylayer_combine_fc_y/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
1gradients/layer_combine_fc_y/MatMul_grad/MatMul_1MatMullayer_combine_fc_x/ReluBgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	�*
transpose_a(*
transpose_b( *
T0
�
9gradients/layer_combine_fc_y/MatMul_grad/tuple/group_depsNoOp0^gradients/layer_combine_fc_y/MatMul_grad/MatMul2^gradients/layer_combine_fc_y/MatMul_grad/MatMul_1
�
Agradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_y/MatMul_grad/MatMul:^gradients/layer_combine_fc_y/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/layer_combine_fc_y/MatMul_grad/MatMul*(
_output_shapes
:����������
�
Cgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependency_1Identity1gradients/layer_combine_fc_y/MatMul_grad/MatMul_1:^gradients/layer_combine_fc_y/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/layer_combine_fc_y/MatMul_grad/MatMul_1*
_output_shapes
:	�
�
/gradients/layer_combine_fc_x/Relu_grad/ReluGradReluGradAgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependencylayer_combine_fc_x/Relu*(
_output_shapes
:����������*
T0
�
5gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/layer_combine_fc_x/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:�*
T0
�
:gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_depsNoOp6^gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad0^gradients/layer_combine_fc_x/Relu_grad/ReluGrad
�
Bgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_x/Relu_grad/ReluGrad;^gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/layer_combine_fc_x/Relu_grad/ReluGrad*(
_output_shapes
:����������
�
Dgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad;^gradients/layer_combine_fc_x/BiasAdd_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_combine_fc_x/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
/gradients/layer_combine_fc_x/MatMul_grad/MatMulMatMulBgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependencylayer_combine_fc_x/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b(*
T0
�
1gradients/layer_combine_fc_x/MatMul_grad/MatMul_1MatMullayer_combine_fc_cnn1d/ReluBgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
�
9gradients/layer_combine_fc_x/MatMul_grad/tuple/group_depsNoOp0^gradients/layer_combine_fc_x/MatMul_grad/MatMul2^gradients/layer_combine_fc_x/MatMul_grad/MatMul_1
�
Agradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependencyIdentity/gradients/layer_combine_fc_x/MatMul_grad/MatMul:^gradients/layer_combine_fc_x/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*B
_class8
64loc:@gradients/layer_combine_fc_x/MatMul_grad/MatMul
�
Cgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency_1Identity1gradients/layer_combine_fc_x/MatMul_grad/MatMul_1:^gradients/layer_combine_fc_x/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/layer_combine_fc_x/MatMul_grad/MatMul_1* 
_output_shapes
:
��
�
3gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGradReluGradAgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependencylayer_combine_fc_cnn1d/Relu*
T0*(
_output_shapes
:����������
�
9gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGradBiasAddGrad3gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:�
�
>gradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/group_depsNoOp:^gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGrad4^gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad
�
Fgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependencyIdentity3gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad?^gradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/group_deps*F
_class<
:8loc:@gradients/layer_combine_fc_cnn1d/Relu_grad/ReluGrad*(
_output_shapes
:����������*
T0
�
Hgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency_1Identity9gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGrad?^gradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/layer_combine_fc_cnn1d/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
3gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMulMatMulFgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency"layer_combine_fc_cnn1d/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b(*
T0
�
5gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1MatMullayer_fc1/ReluFgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
��*
transpose_a(*
transpose_b( *
T0
�
=gradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/group_depsNoOp4^gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul6^gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1
�
Egradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependencyIdentity3gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul>^gradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul*(
_output_shapes
:����������
�
Ggradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependency_1Identity5gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1>^gradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_combine_fc_cnn1d/MatMul_grad/MatMul_1* 
_output_shapes
:
��
�
&gradients/layer_fc1/Relu_grad/ReluGradReluGradEgradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependencylayer_fc1/Relu*(
_output_shapes
:����������*
T0
�
,gradients/layer_fc1/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/layer_fc1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:�*
T0
�
1gradients/layer_fc1/BiasAdd_grad/tuple/group_depsNoOp-^gradients/layer_fc1/BiasAdd_grad/BiasAddGrad'^gradients/layer_fc1/Relu_grad/ReluGrad
�
9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/Relu_grad/ReluGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*9
_class/
-+loc:@gradients/layer_fc1/Relu_grad/ReluGrad
�
;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/layer_fc1/BiasAdd_grad/BiasAddGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/layer_fc1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
&gradients/layer_fc1/MatMul_grad/MatMulMatMul9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencylayer_fc1/kernel/read*(
_output_shapes
:����������@*
transpose_a( *
transpose_b(*
T0
�
(gradients/layer_fc1/MatMul_grad/MatMul_1MatMulFlatten/flatten/Reshape9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
�@�*
transpose_a(*
transpose_b( *
T0
�
0gradients/layer_fc1/MatMul_grad/tuple/group_depsNoOp'^gradients/layer_fc1/MatMul_grad/MatMul)^gradients/layer_fc1/MatMul_grad/MatMul_1
�
8gradients/layer_fc1/MatMul_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/MatMul_grad/MatMul1^gradients/layer_fc1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_fc1/MatMul_grad/MatMul*(
_output_shapes
:����������@
�
:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1Identity(gradients/layer_fc1/MatMul_grad/MatMul_11^gradients/layer_fc1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_fc1/MatMul_grad/MatMul_1* 
_output_shapes
:
�@�
�
,gradients/Flatten/flatten/Reshape_grad/ShapeShapemax_pooling1d_1/Squeeze*
out_type0*
_output_shapes
:*
T0
�
.gradients/Flatten/flatten/Reshape_grad/ReshapeReshape8gradients/layer_fc1/MatMul_grad/tuple/control_dependency,gradients/Flatten/flatten/Reshape_grad/Shape*
T0*
Tshape0*,
_output_shapes
:���������� 
�
,gradients/max_pooling1d_1/Squeeze_grad/ShapeShapemax_pooling1d_1/MaxPool*
T0*
out_type0*
_output_shapes
:
�
.gradients/max_pooling1d_1/Squeeze_grad/ReshapeReshape.gradients/Flatten/flatten/Reshape_grad/Reshape,gradients/max_pooling1d_1/Squeeze_grad/Shape*
T0*
Tshape0*0
_output_shapes
:���������� 
�
2gradients/max_pooling1d_1/MaxPool_grad/MaxPoolGradMaxPoolGradmax_pooling1d_1/ExpandDimsmax_pooling1d_1/MaxPool.gradients/max_pooling1d_1/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*0
_output_shapes
:���������� 

/gradients/max_pooling1d_1/ExpandDims_grad/ShapeShapelayer_conv2/Relu*
_output_shapes
:*
T0*
out_type0
�
1gradients/max_pooling1d_1/ExpandDims_grad/ReshapeReshape2gradients/max_pooling1d_1/MaxPool_grad/MaxPoolGrad/gradients/max_pooling1d_1/ExpandDims_grad/Shape*
T0*
Tshape0*,
_output_shapes
:���������� 
�
(gradients/layer_conv2/Relu_grad/ReluGradReluGrad1gradients/max_pooling1d_1/ExpandDims_grad/Reshapelayer_conv2/Relu*,
_output_shapes
:���������� *
T0
�
.gradients/layer_conv2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
�
3gradients/layer_conv2/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv2/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv2/Relu_grad/ReluGrad
�
;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv2/Relu_grad/ReluGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*,
_output_shapes
:���������� *
T0*;
_class1
/-loc:@gradients/layer_conv2/Relu_grad/ReluGrad
�
=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv2/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*A
_class7
53loc:@gradients/layer_conv2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
/gradients/layer_conv2/conv1d/Squeeze_grad/ShapeShapelayer_conv2/conv1d/Conv2D*
T0*
out_type0*
_output_shapes
:
�
1gradients/layer_conv2/conv1d/Squeeze_grad/ReshapeReshape;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency/gradients/layer_conv2/conv1d/Squeeze_grad/Shape*0
_output_shapes
:���������� *
T0*
Tshape0
�
/gradients/layer_conv2/conv1d/Conv2D_grad/ShapeNShapeNlayer_conv2/conv1d/ExpandDimslayer_conv2/conv1d/ExpandDims_1*
T0*
out_type0*
N* 
_output_shapes
::
�
<gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput/gradients/layer_conv2/conv1d/Conv2D_grad/ShapeNlayer_conv2/conv1d/ExpandDims_11gradients/layer_conv2/conv1d/Squeeze_grad/Reshape*
paddingSAME*0
_output_shapes
:���������� *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
�
=gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterlayer_conv2/conv1d/ExpandDims1gradients/layer_conv2/conv1d/Conv2D_grad/ShapeN:11gradients/layer_conv2/conv1d/Squeeze_grad/Reshape*
paddingSAME*&
_output_shapes
:  *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
�
9gradients/layer_conv2/conv1d/Conv2D_grad/tuple/group_depsNoOp>^gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilter=^gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInput
�
Agradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependencyIdentity<gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInput:^gradients/layer_conv2/conv1d/Conv2D_grad/tuple/group_deps*0
_output_shapes
:���������� *
T0*O
_classE
CAloc:@gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropInput
�
Cgradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependency_1Identity=gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilter:^gradients/layer_conv2/conv1d/Conv2D_grad/tuple/group_deps*&
_output_shapes
:  *
T0*P
_classF
DBloc:@gradients/layer_conv2/conv1d/Conv2D_grad/Conv2DBackpropFilter
�
2gradients/layer_conv2/conv1d/ExpandDims_grad/ShapeShapemax_pooling1d/Squeeze*
T0*
out_type0*
_output_shapes
:
�
4gradients/layer_conv2/conv1d/ExpandDims_grad/ReshapeReshapeAgradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependency2gradients/layer_conv2/conv1d/ExpandDims_grad/Shape*
Tshape0*,
_output_shapes
:���������� *
T0
�
4gradients/layer_conv2/conv1d/ExpandDims_1_grad/ShapeConst*!
valueB"           *
dtype0*
_output_shapes
:
�
6gradients/layer_conv2/conv1d/ExpandDims_1_grad/ReshapeReshapeCgradients/layer_conv2/conv1d/Conv2D_grad/tuple/control_dependency_14gradients/layer_conv2/conv1d/ExpandDims_1_grad/Shape*
T0*
Tshape0*"
_output_shapes
:  

*gradients/max_pooling1d/Squeeze_grad/ShapeShapemax_pooling1d/MaxPool*
T0*
out_type0*
_output_shapes
:
�
,gradients/max_pooling1d/Squeeze_grad/ReshapeReshape4gradients/layer_conv2/conv1d/ExpandDims_grad/Reshape*gradients/max_pooling1d/Squeeze_grad/Shape*
T0*
Tshape0*0
_output_shapes
:���������� 
�
0gradients/max_pooling1d/MaxPool_grad/MaxPoolGradMaxPoolGradmax_pooling1d/ExpandDimsmax_pooling1d/MaxPool,gradients/max_pooling1d/Squeeze_grad/Reshape*
ksize
*
paddingVALID*0
_output_shapes
:���������� *
T0*
data_formatNHWC*
strides

}
-gradients/max_pooling1d/ExpandDims_grad/ShapeShapelayer_conv1/Relu*
T0*
out_type0*
_output_shapes
:
�
/gradients/max_pooling1d/ExpandDims_grad/ReshapeReshape0gradients/max_pooling1d/MaxPool_grad/MaxPoolGrad-gradients/max_pooling1d/ExpandDims_grad/Shape*
T0*
Tshape0*,
_output_shapes
:���������� 
�
(gradients/layer_conv1/Relu_grad/ReluGradReluGrad/gradients/max_pooling1d/ExpandDims_grad/Reshapelayer_conv1/Relu*
T0*,
_output_shapes
:���������� 
�
.gradients/layer_conv1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
�
3gradients/layer_conv1/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv1/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv1/Relu_grad/ReluGrad
�
;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv1/Relu_grad/ReluGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_conv1/Relu_grad/ReluGrad*,
_output_shapes
:���������� 
�
=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv1/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/layer_conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
�
/gradients/layer_conv1/conv1d/Squeeze_grad/ShapeShapelayer_conv1/conv1d/Conv2D*
T0*
out_type0*
_output_shapes
:
�
1gradients/layer_conv1/conv1d/Squeeze_grad/ReshapeReshape;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency/gradients/layer_conv1/conv1d/Squeeze_grad/Shape*
T0*
Tshape0*0
_output_shapes
:���������� 
�
/gradients/layer_conv1/conv1d/Conv2D_grad/ShapeNShapeNlayer_conv1/conv1d/ExpandDimslayer_conv1/conv1d/ExpandDims_1* 
_output_shapes
::*
T0*
out_type0*
N
�
<gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput/gradients/layer_conv1/conv1d/Conv2D_grad/ShapeNlayer_conv1/conv1d/ExpandDims_11gradients/layer_conv1/conv1d/Squeeze_grad/Reshape*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:����������
�
=gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterlayer_conv1/conv1d/ExpandDims1gradients/layer_conv1/conv1d/Conv2D_grad/ShapeN:11gradients/layer_conv1/conv1d/Squeeze_grad/Reshape*&
_output_shapes
: *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
�
9gradients/layer_conv1/conv1d/Conv2D_grad/tuple/group_depsNoOp>^gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilter=^gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInput
�
Agradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependencyIdentity<gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInput:^gradients/layer_conv1/conv1d/Conv2D_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:����������
�
Cgradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependency_1Identity=gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilter:^gradients/layer_conv1/conv1d/Conv2D_grad/tuple/group_deps*&
_output_shapes
: *
T0*P
_classF
DBloc:@gradients/layer_conv1/conv1d/Conv2D_grad/Conv2DBackpropFilter
y
2gradients/layer_conv1/conv1d/ExpandDims_grad/ShapeShapeReshape*
T0*
out_type0*
_output_shapes
:
�
4gradients/layer_conv1/conv1d/ExpandDims_grad/ReshapeReshapeAgradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependency2gradients/layer_conv1/conv1d/ExpandDims_grad/Shape*,
_output_shapes
:����������*
T0*
Tshape0
�
4gradients/layer_conv1/conv1d/ExpandDims_1_grad/ShapeConst*!
valueB"          *
dtype0*
_output_shapes
:
�
6gradients/layer_conv1/conv1d/ExpandDims_1_grad/ReshapeReshapeCgradients/layer_conv1/conv1d/Conv2D_grad/tuple/control_dependency_14gradients/layer_conv1/conv1d/ExpandDims_1_grad/Shape*
T0*
Tshape0*"
_output_shapes
: 

gradients/Reshape_grad/ShapeShape#batch_normalization/batchnorm/add_1*
_output_shapes
:*
T0*
out_type0
�
gradients/Reshape_grad/ReshapeReshape4gradients/layer_conv1/conv1d/ExpandDims_grad/Reshapegradients/Reshape_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
8gradients/batch_normalization/batchnorm/add_1_grad/ShapeShape#batch_normalization/batchnorm/mul_1*
T0*
out_type0*
_output_shapes
:
�
:gradients/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:�*
dtype0*
_output_shapes
:
�
Hgradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization/batchnorm/add_1_grad/Shape:gradients/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization/batchnorm/add_1_grad/SumSumgradients/Reshape_grad/ReshapeHgradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization/batchnorm/add_1_grad/ReshapeReshape6gradients/batch_normalization/batchnorm/add_1_grad/Sum8gradients/batch_normalization/batchnorm/add_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������
�
8gradients/batch_normalization/batchnorm/add_1_grad/Sum_1Sumgradients/Reshape_grad/ReshapeJgradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
<gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1Reshape8gradients/batch_normalization/batchnorm/add_1_grad/Sum_1:gradients/batch_normalization/batchnorm/add_1_grad/Shape_1*
_output_shapes	
:�*
T0*
Tshape0
�
Cgradients/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOp;^gradients/batch_normalization/batchnorm/add_1_grad/Reshape=^gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1
�
Kgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentity:gradients/batch_normalization/batchnorm/add_1_grad/ReshapeD^gradients/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*M
_classC
A?loc:@gradients/batch_normalization/batchnorm/add_1_grad/Reshape
�
Mgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1Identity<gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1D^gradients/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1*
_output_shapes	
:�
|
8gradients/batch_normalization/batchnorm/mul_1_grad/ShapeShapeCast*
T0*
out_type0*
_output_shapes
:
�
:gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
valueB:�*
dtype0*
_output_shapes
:
�
Hgradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization/batchnorm/mul_1_grad/Shape:gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization/batchnorm/mul_1_grad/MulMulKgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency!batch_normalization/batchnorm/mul*
T0*(
_output_shapes
:����������
�
6gradients/batch_normalization/batchnorm/mul_1_grad/SumSum6gradients/batch_normalization/batchnorm/mul_1_grad/MulHgradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
:gradients/batch_normalization/batchnorm/mul_1_grad/ReshapeReshape6gradients/batch_normalization/batchnorm/mul_1_grad/Sum8gradients/batch_normalization/batchnorm/mul_1_grad/Shape*
Tshape0*(
_output_shapes
:����������*
T0
�
8gradients/batch_normalization/batchnorm/mul_1_grad/Mul_1MulCastKgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*(
_output_shapes
:����������*
T0
�
8gradients/batch_normalization/batchnorm/mul_1_grad/Sum_1Sum8gradients/batch_normalization/batchnorm/mul_1_grad/Mul_1Jgradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
<gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1Reshape8gradients/batch_normalization/batchnorm/mul_1_grad/Sum_1:gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:�
�
Cgradients/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOp;^gradients/batch_normalization/batchnorm/mul_1_grad/Reshape=^gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
Kgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentity:gradients/batch_normalization/batchnorm/mul_1_grad/ReshapeD^gradients/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/batch_normalization/batchnorm/mul_1_grad/Reshape*(
_output_shapes
:����������
�
Mgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1Identity<gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1D^gradients/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
_output_shapes	
:�
�
4gradients/batch_normalization/batchnorm/sub_grad/NegNegMgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1*
_output_shapes	
:�*
T0
�
Agradients/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpN^gradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_15^gradients/batch_normalization/batchnorm/sub_grad/Neg
�
Igradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityMgradients/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1B^gradients/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
_output_shapes	
:�*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1
�
Kgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1Identity4gradients/batch_normalization/batchnorm/sub_grad/NegB^gradients/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
_output_shapes	
:�*
T0*G
_class=
;9loc:@gradients/batch_normalization/batchnorm/sub_grad/Neg
�
6gradients/batch_normalization/batchnorm/mul_2_grad/MulMulKgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1!batch_normalization/batchnorm/mul*
_output_shapes	
:�*
T0
�
8gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1MulKgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1$batch_normalization/moving_mean/read*
T0*
_output_shapes	
:�
�
Cgradients/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOp7^gradients/batch_normalization/batchnorm/mul_2_grad/Mul9^gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1
�
Kgradients/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentity6gradients/batch_normalization/batchnorm/mul_2_grad/MulD^gradients/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
_output_shapes	
:�*
T0*I
_class?
=;loc:@gradients/batch_normalization/batchnorm/mul_2_grad/Mul
�
Mgradients/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1Identity8gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1D^gradients/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*K
_classA
?=loc:@gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1*
_output_shapes	
:�*
T0
�
gradients/AddNAddNMgradients/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1Mgradients/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
T0*O
_classE
CAloc:@gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
N*
_output_shapes	
:�
�
4gradients/batch_normalization/batchnorm/mul_grad/MulMulgradients/AddNbatch_normalization/gamma/read*
T0*
_output_shapes	
:�
�
6gradients/batch_normalization/batchnorm/mul_grad/Mul_1Mulgradients/AddN#batch_normalization/batchnorm/Rsqrt*
T0*
_output_shapes	
:�
�
Agradients/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOp5^gradients/batch_normalization/batchnorm/mul_grad/Mul7^gradients/batch_normalization/batchnorm/mul_grad/Mul_1
�
Igradients/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentity4gradients/batch_normalization/batchnorm/mul_grad/MulB^gradients/batch_normalization/batchnorm/mul_grad/tuple/group_deps*G
_class=
;9loc:@gradients/batch_normalization/batchnorm/mul_grad/Mul*
_output_shapes	
:�*
T0
�
Kgradients/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1Identity6gradients/batch_normalization/batchnorm/mul_grad/Mul_1B^gradients/batch_normalization/batchnorm/mul_grad/tuple/group_deps*I
_class?
=;loc:@gradients/batch_normalization/batchnorm/mul_grad/Mul_1*
_output_shapes	
:�*
T0
�
beta1_power/initial_valueConst*+
_class!
loc:@batch_normalization/beta*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape: 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking(
w
beta1_power/readIdentitybeta1_power*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: *
T0
�
beta2_power/initial_valueConst*+
_class!
loc:@batch_normalization/beta*
valueB
 *w�?*
dtype0*
_output_shapes
: 
�
beta2_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape: 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking(
w
beta2_power/readIdentitybeta2_power*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: *
T0
�
@batch_normalization/gamma/Adam/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@batch_normalization/gamma*
valueB:�*
dtype0*
_output_shapes
:
�
6batch_normalization/gamma/Adam/Initializer/zeros/ConstConst*,
_class"
 loc:@batch_normalization/gamma*
valueB
 *    *
dtype0*
_output_shapes
: 
�
0batch_normalization/gamma/Adam/Initializer/zerosFill@batch_normalization/gamma/Adam/Initializer/zeros/shape_as_tensor6batch_normalization/gamma/Adam/Initializer/zeros/Const*
_output_shapes	
:�*
T0*,
_class"
 loc:@batch_normalization/gamma*

index_type0
�
batch_normalization/gamma/Adam
VariableV2*
shared_name *,
_class"
 loc:@batch_normalization/gamma*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
%batch_normalization/gamma/Adam/AssignAssignbatch_normalization/gamma/Adam0batch_normalization/gamma/Adam/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes	
:�
�
#batch_normalization/gamma/Adam/readIdentitybatch_normalization/gamma/Adam*
_output_shapes	
:�*
T0*,
_class"
 loc:@batch_normalization/gamma
�
Bbatch_normalization/gamma/Adam_1/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@batch_normalization/gamma*
valueB:�*
dtype0*
_output_shapes
:
�
8batch_normalization/gamma/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@batch_normalization/gamma*
valueB
 *    
�
2batch_normalization/gamma/Adam_1/Initializer/zerosFillBbatch_normalization/gamma/Adam_1/Initializer/zeros/shape_as_tensor8batch_normalization/gamma/Adam_1/Initializer/zeros/Const*
T0*,
_class"
 loc:@batch_normalization/gamma*

index_type0*
_output_shapes	
:�
�
 batch_normalization/gamma/Adam_1
VariableV2*
shared_name *,
_class"
 loc:@batch_normalization/gamma*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
'batch_normalization/gamma/Adam_1/AssignAssign batch_normalization/gamma/Adam_12batch_normalization/gamma/Adam_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes	
:�
�
%batch_normalization/gamma/Adam_1/readIdentity batch_normalization/gamma/Adam_1*
_output_shapes	
:�*
T0*,
_class"
 loc:@batch_normalization/gamma
�
?batch_normalization/beta/Adam/Initializer/zeros/shape_as_tensorConst*+
_class!
loc:@batch_normalization/beta*
valueB:�*
dtype0*
_output_shapes
:
�
5batch_normalization/beta/Adam/Initializer/zeros/ConstConst*+
_class!
loc:@batch_normalization/beta*
valueB
 *    *
dtype0*
_output_shapes
: 
�
/batch_normalization/beta/Adam/Initializer/zerosFill?batch_normalization/beta/Adam/Initializer/zeros/shape_as_tensor5batch_normalization/beta/Adam/Initializer/zeros/Const*
_output_shapes	
:�*
T0*+
_class!
loc:@batch_normalization/beta*

index_type0
�
batch_normalization/beta/Adam
VariableV2*+
_class!
loc:@batch_normalization/beta*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
$batch_normalization/beta/Adam/AssignAssignbatch_normalization/beta/Adam/batch_normalization/beta/Adam/Initializer/zeros*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
"batch_normalization/beta/Adam/readIdentitybatch_normalization/beta/Adam*+
_class!
loc:@batch_normalization/beta*
_output_shapes	
:�*
T0
�
Abatch_normalization/beta/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*+
_class!
loc:@batch_normalization/beta*
valueB:�*
dtype0
�
7batch_normalization/beta/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *+
_class!
loc:@batch_normalization/beta*
valueB
 *    *
dtype0
�
1batch_normalization/beta/Adam_1/Initializer/zerosFillAbatch_normalization/beta/Adam_1/Initializer/zeros/shape_as_tensor7batch_normalization/beta/Adam_1/Initializer/zeros/Const*
T0*+
_class!
loc:@batch_normalization/beta*

index_type0*
_output_shapes	
:�
�
batch_normalization/beta/Adam_1
VariableV2*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *+
_class!
loc:@batch_normalization/beta
�
&batch_normalization/beta/Adam_1/AssignAssignbatch_normalization/beta/Adam_11batch_normalization/beta/Adam_1/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes	
:�
�
$batch_normalization/beta/Adam_1/readIdentitybatch_normalization/beta/Adam_1*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes	
:�
�
)layer_conv1/kernel/Adam/Initializer/zerosConst*
dtype0*"
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*!
valueB *    
�
layer_conv1/kernel/Adam
VariableV2*
dtype0*"
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: 
�
layer_conv1/kernel/Adam/AssignAssignlayer_conv1/kernel/Adam)layer_conv1/kernel/Adam/Initializer/zeros*"
_output_shapes
: *
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(
�
layer_conv1/kernel/Adam/readIdentitylayer_conv1/kernel/Adam*
T0*%
_class
loc:@layer_conv1/kernel*"
_output_shapes
: 
�
+layer_conv1/kernel/Adam_1/Initializer/zerosConst*%
_class
loc:@layer_conv1/kernel*!
valueB *    *
dtype0*"
_output_shapes
: 
�
layer_conv1/kernel/Adam_1
VariableV2*
dtype0*"
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: 
�
 layer_conv1/kernel/Adam_1/AssignAssignlayer_conv1/kernel/Adam_1+layer_conv1/kernel/Adam_1/Initializer/zeros*
validate_shape(*"
_output_shapes
: *
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel
�
layer_conv1/kernel/Adam_1/readIdentitylayer_conv1/kernel/Adam_1*"
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel
�
'layer_conv1/bias/Adam/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv1/bias/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: 
�
layer_conv1/bias/Adam/AssignAssignlayer_conv1/bias/Adam'layer_conv1/bias/Adam/Initializer/zeros*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
layer_conv1/bias/Adam/readIdentitylayer_conv1/bias/Adam*
_output_shapes
: *
T0*#
_class
loc:@layer_conv1/bias
�
)layer_conv1/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: 
�
layer_conv1/bias/Adam_1/AssignAssignlayer_conv1/bias/Adam_1)layer_conv1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
�
layer_conv1/bias/Adam_1/readIdentitylayer_conv1/bias/Adam_1*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 
�
9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
_class
loc:@layer_conv2/kernel*!
valueB"           
�
/layer_conv2/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0
�
)layer_conv2/kernel/Adam/Initializer/zerosFill9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensor/layer_conv2/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@layer_conv2/kernel*

index_type0*"
_output_shapes
:  
�
layer_conv2/kernel/Adam
VariableV2*%
_class
loc:@layer_conv2/kernel*
	container *
shape:  *
dtype0*"
_output_shapes
:  *
shared_name 
�
layer_conv2/kernel/Adam/AssignAssignlayer_conv2/kernel/Adam)layer_conv2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*"
_output_shapes
:  
�
layer_conv2/kernel/Adam/readIdentitylayer_conv2/kernel/Adam*"
_output_shapes
:  *
T0*%
_class
loc:@layer_conv2/kernel
�
;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@layer_conv2/kernel*!
valueB"           *
dtype0*
_output_shapes
:
�
1layer_conv2/kernel/Adam_1/Initializer/zeros/ConstConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
+layer_conv2/kernel/Adam_1/Initializer/zerosFill;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensor1layer_conv2/kernel/Adam_1/Initializer/zeros/Const*
T0*%
_class
loc:@layer_conv2/kernel*

index_type0*"
_output_shapes
:  
�
layer_conv2/kernel/Adam_1
VariableV2*
dtype0*"
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  
�
 layer_conv2/kernel/Adam_1/AssignAssignlayer_conv2/kernel/Adam_1+layer_conv2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*"
_output_shapes
:  
�
layer_conv2/kernel/Adam_1/readIdentitylayer_conv2/kernel/Adam_1*%
_class
loc:@layer_conv2/kernel*"
_output_shapes
:  *
T0
�
'layer_conv2/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
valueB *    
�
layer_conv2/bias/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: 
�
layer_conv2/bias/Adam/AssignAssignlayer_conv2/bias/Adam'layer_conv2/bias/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
�
layer_conv2/bias/Adam/readIdentitylayer_conv2/bias/Adam*
_output_shapes
: *
T0*#
_class
loc:@layer_conv2/bias
�
)layer_conv2/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
layer_conv2/bias/Adam_1
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv2/bias*
	container 
�
layer_conv2/bias/Adam_1/AssignAssignlayer_conv2/bias/Adam_1)layer_conv2/bias/Adam_1/Initializer/zeros*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
layer_conv2/bias/Adam_1/readIdentitylayer_conv2/bias/Adam_1*
_output_shapes
: *
T0*#
_class
loc:@layer_conv2/bias
�
7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_fc1/kernel*
valueB"    �   *
dtype0*
_output_shapes
:
�
-layer_fc1/kernel/Adam/Initializer/zeros/ConstConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
'layer_fc1/kernel/Adam/Initializer/zerosFill7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensor-layer_fc1/kernel/Adam/Initializer/zeros/Const*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:
�@�
�
layer_fc1/kernel/Adam
VariableV2*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container *
shape:
�@�*
dtype0* 
_output_shapes
:
�@�
�
layer_fc1/kernel/Adam/AssignAssignlayer_fc1/kernel/Adam'layer_fc1/kernel/Adam/Initializer/zeros*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
�@�*
use_locking(*
T0
�
layer_fc1/kernel/Adam/readIdentitylayer_fc1/kernel/Adam* 
_output_shapes
:
�@�*
T0*#
_class
loc:@layer_fc1/kernel
�
9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_fc1/kernel*
valueB"    �   *
dtype0*
_output_shapes
:
�
/layer_fc1/kernel/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)layer_fc1/kernel/Adam_1/Initializer/zerosFill9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/layer_fc1/kernel/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:
�@�
�
layer_fc1/kernel/Adam_1
VariableV2*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container *
shape:
�@�*
dtype0* 
_output_shapes
:
�@�
�
layer_fc1/kernel/Adam_1/AssignAssignlayer_fc1/kernel/Adam_1)layer_fc1/kernel/Adam_1/Initializer/zeros*
validate_shape(* 
_output_shapes
:
�@�*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel
�
layer_fc1/kernel/Adam_1/readIdentitylayer_fc1/kernel/Adam_1*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
�@�
�
%layer_fc1/bias/Adam/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_fc1/bias/Adam
VariableV2*
_output_shapes	
:�*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:�*
dtype0
�
layer_fc1/bias/Adam/AssignAssignlayer_fc1/bias/Adam%layer_fc1/bias/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:�
�
layer_fc1/bias/Adam/readIdentitylayer_fc1/bias/Adam*
_output_shapes	
:�*
T0*!
_class
loc:@layer_fc1/bias
�
'layer_fc1/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_fc1/bias/Adam_1
VariableV2*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name *!
_class
loc:@layer_fc1/bias
�
layer_fc1/bias/Adam_1/AssignAssignlayer_fc1/bias/Adam_1'layer_fc1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:�
�
layer_fc1/bias/Adam_1/readIdentitylayer_fc1/bias/Adam_1*
T0*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:�
�
Dlayer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
:layer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/ConstConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
4layer_combine_fc_cnn1d/kernel/Adam/Initializer/zerosFillDlayer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/shape_as_tensor:layer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros/Const*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*

index_type0* 
_output_shapes
:
��
�
"layer_combine_fc_cnn1d/kernel/Adam
VariableV2*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��*
shared_name 
�
)layer_combine_fc_cnn1d/kernel/Adam/AssignAssign"layer_combine_fc_cnn1d/kernel/Adam4layer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel
�
'layer_combine_fc_cnn1d/kernel/Adam/readIdentity"layer_combine_fc_cnn1d/kernel/Adam* 
_output_shapes
:
��*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel
�
Flayer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB"�   �   *
dtype0*
_output_shapes
:
�
<layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/ConstConst*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
6layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zerosFillFlayer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/shape_as_tensor<layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros/Const*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*

index_type0* 
_output_shapes
:
��*
T0
�
$layer_combine_fc_cnn1d/kernel/Adam_1
VariableV2* 
_output_shapes
:
��*
shared_name *0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
	container *
shape:
��*
dtype0
�
+layer_combine_fc_cnn1d/kernel/Adam_1/AssignAssign$layer_combine_fc_cnn1d/kernel/Adam_16layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
validate_shape(* 
_output_shapes
:
��
�
)layer_combine_fc_cnn1d/kernel/Adam_1/readIdentity$layer_combine_fc_cnn1d/kernel/Adam_1*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel* 
_output_shapes
:
��
�
2layer_combine_fc_cnn1d/bias/Adam/Initializer/zerosConst*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
 layer_combine_fc_cnn1d/bias/Adam
VariableV2*
shared_name *.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
'layer_combine_fc_cnn1d/bias/Adam/AssignAssign layer_combine_fc_cnn1d/bias/Adam2layer_combine_fc_cnn1d/bias/Adam/Initializer/zeros*
_output_shapes	
:�*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(
�
%layer_combine_fc_cnn1d/bias/Adam/readIdentity layer_combine_fc_cnn1d/bias/Adam*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
_output_shapes	
:�
�
4layer_combine_fc_cnn1d/bias/Adam_1/Initializer/zerosConst*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
"layer_combine_fc_cnn1d/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
	container *
shape:�
�
)layer_combine_fc_cnn1d/bias/Adam_1/AssignAssign"layer_combine_fc_cnn1d/bias/Adam_14layer_combine_fc_cnn1d/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias
�
'layer_combine_fc_cnn1d/bias/Adam_1/readIdentity"layer_combine_fc_cnn1d/bias/Adam_1*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
_output_shapes	
:�*
T0
�
@layer_combine_fc_x/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"�   �   *
dtype0
�
6layer_combine_fc_x/kernel/Adam/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
0layer_combine_fc_x/kernel/Adam/Initializer/zerosFill@layer_combine_fc_x/kernel/Adam/Initializer/zeros/shape_as_tensor6layer_combine_fc_x/kernel/Adam/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*

index_type0* 
_output_shapes
:
��
�
layer_combine_fc_x/kernel/Adam
VariableV2*
shape:
��*
dtype0* 
_output_shapes
:
��*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel*
	container 
�
%layer_combine_fc_x/kernel/Adam/AssignAssignlayer_combine_fc_x/kernel/Adam0layer_combine_fc_x/kernel/Adam/Initializer/zeros*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0
�
#layer_combine_fc_x/kernel/Adam/readIdentitylayer_combine_fc_x/kernel/Adam*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��
�
Blayer_combine_fc_x/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB"�   �   
�
8layer_combine_fc_x/kernel/Adam_1/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_x/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
2layer_combine_fc_x/kernel/Adam_1/Initializer/zerosFillBlayer_combine_fc_x/kernel/Adam_1/Initializer/zeros/shape_as_tensor8layer_combine_fc_x/kernel/Adam_1/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*

index_type0* 
_output_shapes
:
��
�
 layer_combine_fc_x/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
��*
shared_name *,
_class"
 loc:@layer_combine_fc_x/kernel*
	container *
shape:
��
�
'layer_combine_fc_x/kernel/Adam_1/AssignAssign layer_combine_fc_x/kernel/Adam_12layer_combine_fc_x/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
��
�
%layer_combine_fc_x/kernel/Adam_1/readIdentity layer_combine_fc_x/kernel/Adam_1*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel* 
_output_shapes
:
��
�
.layer_combine_fc_x/bias/Adam/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_combine_fc_x/bias/Adam
VariableV2*
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
#layer_combine_fc_x/bias/Adam/AssignAssignlayer_combine_fc_x/bias/Adam.layer_combine_fc_x/bias/Adam/Initializer/zeros*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
!layer_combine_fc_x/bias/Adam/readIdentitylayer_combine_fc_x/bias/Adam*
_output_shapes	
:�*
T0**
_class 
loc:@layer_combine_fc_x/bias
�
0layer_combine_fc_x/bias/Adam_1/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_x/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
layer_combine_fc_x/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name **
_class 
loc:@layer_combine_fc_x/bias*
	container *
shape:�
�
%layer_combine_fc_x/bias/Adam_1/AssignAssignlayer_combine_fc_x/bias/Adam_10layer_combine_fc_x/bias/Adam_1/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:�
�
#layer_combine_fc_x/bias/Adam_1/readIdentitylayer_combine_fc_x/bias/Adam_1*
T0**
_class 
loc:@layer_combine_fc_x/bias*
_output_shapes	
:�
�
@layer_combine_fc_y/kernel/Adam/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"�      *
dtype0*
_output_shapes
:
�
6layer_combine_fc_y/kernel/Adam/Initializer/zeros/ConstConst*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
0layer_combine_fc_y/kernel/Adam/Initializer/zerosFill@layer_combine_fc_y/kernel/Adam/Initializer/zeros/shape_as_tensor6layer_combine_fc_y/kernel/Adam/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*

index_type0*
_output_shapes
:	�
�
layer_combine_fc_y/kernel/Adam
VariableV2*
shape:	�*
dtype0*
_output_shapes
:	�*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel*
	container 
�
%layer_combine_fc_y/kernel/Adam/AssignAssignlayer_combine_fc_y/kernel/Adam0layer_combine_fc_y/kernel/Adam/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	�
�
#layer_combine_fc_y/kernel/Adam/readIdentitylayer_combine_fc_y/kernel/Adam*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	�
�
Blayer_combine_fc_y/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB"�      
�
8layer_combine_fc_y/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_y/kernel*
valueB
 *    *
dtype0
�
2layer_combine_fc_y/kernel/Adam_1/Initializer/zerosFillBlayer_combine_fc_y/kernel/Adam_1/Initializer/zeros/shape_as_tensor8layer_combine_fc_y/kernel/Adam_1/Initializer/zeros/Const*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*

index_type0*
_output_shapes
:	�
�
 layer_combine_fc_y/kernel/Adam_1
VariableV2*
_output_shapes
:	�*
shared_name *,
_class"
 loc:@layer_combine_fc_y/kernel*
	container *
shape:	�*
dtype0
�
'layer_combine_fc_y/kernel/Adam_1/AssignAssign layer_combine_fc_y/kernel/Adam_12layer_combine_fc_y/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	�
�
%layer_combine_fc_y/kernel/Adam_1/readIdentity layer_combine_fc_y/kernel/Adam_1*,
_class"
 loc:@layer_combine_fc_y/kernel*
_output_shapes
:	�*
T0
�
.layer_combine_fc_y/bias/Adam/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    *
dtype0*
_output_shapes
:
�
layer_combine_fc_y/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name **
_class 
loc:@layer_combine_fc_y/bias*
	container *
shape:
�
#layer_combine_fc_y/bias/Adam/AssignAssignlayer_combine_fc_y/bias/Adam.layer_combine_fc_y/bias/Adam/Initializer/zeros**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
!layer_combine_fc_y/bias/Adam/readIdentitylayer_combine_fc_y/bias/Adam**
_class 
loc:@layer_combine_fc_y/bias*
_output_shapes
:*
T0
�
0layer_combine_fc_y/bias/Adam_1/Initializer/zerosConst**
_class 
loc:@layer_combine_fc_y/bias*
valueB*    *
dtype0*
_output_shapes
:
�
layer_combine_fc_y/bias/Adam_1
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name **
_class 
loc:@layer_combine_fc_y/bias*
	container 
�
%layer_combine_fc_y/bias/Adam_1/AssignAssignlayer_combine_fc_y/bias/Adam_10layer_combine_fc_y/bias/Adam_1/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
�
#layer_combine_fc_y/bias/Adam_1/readIdentitylayer_combine_fc_y/bias/Adam_1*
_output_shapes
:*
T0**
_class 
loc:@layer_combine_fc_y/bias
W
Adam/learning_rateConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
dtype0*
_output_shapes
: *
valueB
 *w�?
Q
Adam/epsilonConst*
_output_shapes
: *
valueB
 *w�+2*
dtype0
�
/Adam/update_batch_normalization/gamma/ApplyAdam	ApplyAdambatch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonKgradients/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*
_output_shapes	
:�*
use_locking( *
T0*,
_class"
 loc:@batch_normalization/gamma*
use_nesterov( 
�
.Adam/update_batch_normalization/beta/ApplyAdam	ApplyAdambatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonIgradients/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta*
use_nesterov( *
_output_shapes	
:�
�
(Adam/update_layer_conv1/kernel/ApplyAdam	ApplyAdamlayer_conv1/kernellayer_conv1/kernel/Adamlayer_conv1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/layer_conv1/conv1d/ExpandDims_1_grad/Reshape*
T0*%
_class
loc:@layer_conv1/kernel*
use_nesterov( *"
_output_shapes
: *
use_locking( 
�
&Adam/update_layer_conv1/bias/ApplyAdam	ApplyAdamlayer_conv1/biaslayer_conv1/bias/Adamlayer_conv1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1*#
_class
loc:@layer_conv1/bias*
use_nesterov( *
_output_shapes
: *
use_locking( *
T0
�
(Adam/update_layer_conv2/kernel/ApplyAdam	ApplyAdamlayer_conv2/kernellayer_conv2/kernel/Adamlayer_conv2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/layer_conv2/conv1d/ExpandDims_1_grad/Reshape*
use_locking( *
T0*%
_class
loc:@layer_conv2/kernel*
use_nesterov( *"
_output_shapes
:  
�
&Adam/update_layer_conv2/bias/ApplyAdam	ApplyAdamlayer_conv2/biaslayer_conv2/bias/Adamlayer_conv2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes
: *
use_locking( *
T0*#
_class
loc:@layer_conv2/bias*
use_nesterov( 
�
&Adam/update_layer_fc1/kernel/ApplyAdam	ApplyAdamlayer_fc1/kernellayer_fc1/kernel/Adamlayer_fc1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1*
use_nesterov( * 
_output_shapes
:
�@�*
use_locking( *
T0*#
_class
loc:@layer_fc1/kernel
�
$Adam/update_layer_fc1/bias/ApplyAdam	ApplyAdamlayer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes	
:�*
use_locking( *
T0*!
_class
loc:@layer_fc1/bias*
use_nesterov( 
�
3Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_cnn1d/kernel"layer_combine_fc_cnn1d/kernel/Adam$layer_combine_fc_cnn1d/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonGgradients/layer_combine_fc_cnn1d/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
use_nesterov( * 
_output_shapes
:
��
�
1Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam	ApplyAdamlayer_combine_fc_cnn1d/bias layer_combine_fc_cnn1d/bias/Adam"layer_combine_fc_cnn1d/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonHgradients/layer_combine_fc_cnn1d/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
use_nesterov( *
_output_shapes	
:�
�
/Adam/update_layer_combine_fc_x/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_x/kernellayer_combine_fc_x/kernel/Adam layer_combine_fc_x/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonCgradients/layer_combine_fc_x/MatMul_grad/tuple/control_dependency_1*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
use_nesterov( * 
_output_shapes
:
��*
use_locking( 
�
-Adam/update_layer_combine_fc_x/bias/ApplyAdam	ApplyAdamlayer_combine_fc_x/biaslayer_combine_fc_x/bias/Adamlayer_combine_fc_x/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/layer_combine_fc_x/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0**
_class 
loc:@layer_combine_fc_x/bias*
use_nesterov( *
_output_shapes	
:�
�
/Adam/update_layer_combine_fc_y/kernel/ApplyAdam	ApplyAdamlayer_combine_fc_y/kernellayer_combine_fc_y/kernel/Adam layer_combine_fc_y/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonCgradients/layer_combine_fc_y/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
use_nesterov( *
_output_shapes
:	�
�
-Adam/update_layer_combine_fc_y/bias/ApplyAdam	ApplyAdamlayer_combine_fc_y/biaslayer_combine_fc_y/bias/Adamlayer_combine_fc_y/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/layer_combine_fc_y/BiasAdd_grad/tuple/control_dependency_1*
T0**
_class 
loc:@layer_combine_fc_y/bias*
use_nesterov( *
_output_shapes
:*
use_locking( 
�
Adam/mulMulbeta1_power/read
Adam/beta1/^Adam/update_batch_normalization/beta/ApplyAdam0^Adam/update_batch_normalization/gamma/ApplyAdam2^Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam4^Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2/^Adam/update_batch_normalization/beta/ApplyAdam0^Adam/update_batch_normalization/gamma/ApplyAdam2^Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam4^Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
�
Adam/updateNoOp^Adam/Assign^Adam/Assign_1/^Adam/update_batch_normalization/beta/ApplyAdam0^Adam/update_batch_normalization/gamma/ApplyAdam2^Adam/update_layer_combine_fc_cnn1d/bias/ApplyAdam4^Adam/update_layer_combine_fc_cnn1d/kernel/ApplyAdam.^Adam/update_layer_combine_fc_x/bias/ApplyAdam0^Adam/update_layer_combine_fc_x/kernel/ApplyAdam.^Adam/update_layer_combine_fc_y/bias/ApplyAdam0^Adam/update_layer_combine_fc_y/kernel/ApplyAdam'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam
z

Adam/valueConst^Adam/update*
_class
loc:@global_step*
value	B	 R*
dtype0	*
_output_shapes
: 
~
Adam	AssignAddglobal_step
Adam/value*
T0	*
_class
loc:@global_step*
_output_shapes
: *
use_locking( 
W
EqualEqualArgMaxIteratorGetNext:4*
T0	*#
_output_shapes
:���������
c
ToFloatCastEqual*

SrcT0
*
Truncate( *#
_output_shapes
:���������*

DstT0
�
 accuracy/total/Initializer/zerosConst*!
_class
loc:@accuracy/total*
valueB
 *    *
dtype0*
_output_shapes
: 
�
accuracy/total
VariableV2*!
_class
loc:@accuracy/total*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
accuracy/total/AssignAssignaccuracy/total accuracy/total/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@accuracy/total*
validate_shape(*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 
�
 accuracy/count/Initializer/zerosConst*
_output_shapes
: *!
_class
loc:@accuracy/count*
valueB
 *    *
dtype0
�
accuracy/count
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *!
_class
loc:@accuracy/count
�
accuracy/count/AssignAssignaccuracy/count accuracy/count/Initializer/zeros*!
_class
loc:@accuracy/count*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
s
accuracy/count/readIdentityaccuracy/count*
_output_shapes
: *
T0*!
_class
loc:@accuracy/count
O
accuracy/SizeSizeToFloat*
_output_shapes
: *
T0*
out_type0
g
accuracy/ToFloatCastaccuracy/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
X
accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
j
accuracy/SumSumToFloataccuracy/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
use_locking( *
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat^ToFloat*
T0*!
_class
loc:@accuracy/count*
_output_shapes
: *
use_locking( 
f
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read*
T0*
_output_shapes
: 
X
accuracy/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
accuracy/GreaterGreateraccuracy/count/readaccuracy/zeros_like*
_output_shapes
: *
T0
r
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/zeros_like*
_output_shapes
: *
T0
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
T0*
_output_shapes
: 
Z
accuracy/zeros_like_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
k
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/zeros_like_1*
T0*
_output_shapes
: 
|
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/zeros_like_1*
T0*
_output_shapes
: 
Z
accuracy_1/tagsConst*
valueB B
accuracy_1*
dtype0*
_output_shapes
: 
a

accuracy_1ScalarSummaryaccuracy_1/tagsaccuracy/update_op*
T0*
_output_shapes
: 
N
	loss/tagsConst*
valueB
 Bloss*
dtype0*
_output_shapes
: 
G
lossScalarSummary	loss/tagsMean*
T0*
_output_shapes
: 
�
initNoOp%^batch_normalization/beta/Adam/Assign'^batch_normalization/beta/Adam_1/Assign ^batch_normalization/beta/Assign&^batch_normalization/gamma/Adam/Assign(^batch_normalization/gamma/Adam_1/Assign!^batch_normalization/gamma/Assign'^batch_normalization/moving_mean/Assign+^batch_normalization/moving_variance/Assign"^batch_normalization_1/beta/Assign#^batch_normalization_1/gamma/Assign)^batch_normalization_1/moving_mean/Assign-^batch_normalization_1/moving_variance/Assign"^batch_normalization_2/beta/Assign#^batch_normalization_2/gamma/Assign)^batch_normalization_2/moving_mean/Assign-^batch_normalization_2/moving_variance/Assign^beta1_power/Assign^beta2_power/Assign^global_step/Assign(^layer_combine_fc_cnn1d/bias/Adam/Assign*^layer_combine_fc_cnn1d/bias/Adam_1/Assign#^layer_combine_fc_cnn1d/bias/Assign*^layer_combine_fc_cnn1d/kernel/Adam/Assign,^layer_combine_fc_cnn1d/kernel/Adam_1/Assign%^layer_combine_fc_cnn1d/kernel/Assign$^layer_combine_fc_x/bias/Adam/Assign&^layer_combine_fc_x/bias/Adam_1/Assign^layer_combine_fc_x/bias/Assign&^layer_combine_fc_x/kernel/Adam/Assign(^layer_combine_fc_x/kernel/Adam_1/Assign!^layer_combine_fc_x/kernel/Assign$^layer_combine_fc_y/bias/Adam/Assign&^layer_combine_fc_y/bias/Adam_1/Assign^layer_combine_fc_y/bias/Assign&^layer_combine_fc_y/kernel/Adam/Assign(^layer_combine_fc_y/kernel/Adam_1/Assign!^layer_combine_fc_y/kernel/Assign^layer_conv1/bias/Adam/Assign^layer_conv1/bias/Adam_1/Assign^layer_conv1/bias/Assign^layer_conv1/kernel/Adam/Assign!^layer_conv1/kernel/Adam_1/Assign^layer_conv1/kernel/Assign^layer_conv2/bias/Adam/Assign^layer_conv2/bias/Adam_1/Assign^layer_conv2/bias/Assign^layer_conv2/kernel/Adam/Assign!^layer_conv2/kernel/Adam_1/Assign^layer_conv2/kernel/Assign^layer_dnn_1/bias/Assign^layer_dnn_1/kernel/Assign^layer_dnn_2/bias/Assign^layer_dnn_2/kernel/Assign^layer_fc1/bias/Adam/Assign^layer_fc1/bias/Adam_1/Assign^layer_fc1/bias/Assign^layer_fc1/kernel/Adam/Assign^layer_fc1/kernel/Adam_1/Assign^layer_fc1/kernel/Assign^layer_length_conv1/bias/Assign!^layer_length_conv1/kernel/Assign^layer_length_conv2/bias/Assign!^layer_length_conv2/kernel/Assign^layer_length_fc1/bias/Assign^layer_length_fc1/kernel/Assign^layer_rnn_fc_1/bias/Assign^layer_rnn_fc_1/kernel/Assign^rnn/basic_rnn_cell/bias/Assign!^rnn/basic_rnn_cell/kernel/Assign^word_embeddings/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
�
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedbatch_normalization/gamma*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedbatch_normalization/beta*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedbatch_normalization/moving_mean*
dtype0*
_output_shapes
: *2
_class(
&$loc:@batch_normalization/moving_mean
�
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitialized#batch_normalization/moving_variance*
_output_shapes
: *6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0
�
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedlayer_conv1/kernel*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializedlayer_conv1/bias*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
dtype0
�
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializedlayer_conv2/kernel*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
�
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedlayer_conv2/bias*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
dtype0
�
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializedlayer_fc1/kernel*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitializedlayer_fc1/bias*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitializedword_embeddings*
dtype0*
_output_shapes
: *"
_class
loc:@word_embeddings
�
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitializedrnn/basic_rnn_cell/kernel*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializedrnn/basic_rnn_cell/bias*
_output_shapes
: **
_class 
loc:@rnn/basic_rnn_cell/bias*
dtype0
�
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializedlayer_rnn_fc_1/kernel*
_output_shapes
: *(
_class
loc:@layer_rnn_fc_1/kernel*
dtype0
�
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializedlayer_rnn_fc_1/bias*&
_class
loc:@layer_rnn_fc_1/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializedbatch_normalization_1/gamma*.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_17IsVariableInitializedbatch_normalization_1/beta*-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_18IsVariableInitialized!batch_normalization_1/moving_mean*4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_19IsVariableInitialized%batch_normalization_1/moving_variance*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_20IsVariableInitializedlayer_dnn_1/kernel*%
_class
loc:@layer_dnn_1/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_21IsVariableInitializedlayer_dnn_1/bias*#
_class
loc:@layer_dnn_1/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_22IsVariableInitializedlayer_dnn_2/kernel*%
_class
loc:@layer_dnn_2/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_23IsVariableInitializedlayer_dnn_2/bias*
dtype0*
_output_shapes
: *#
_class
loc:@layer_dnn_2/bias
�
7report_uninitialized_variables/IsVariableInitialized_24IsVariableInitializedbatch_normalization_2/gamma*
dtype0*
_output_shapes
: *.
_class$
" loc:@batch_normalization_2/gamma
�
7report_uninitialized_variables/IsVariableInitialized_25IsVariableInitializedbatch_normalization_2/beta*
dtype0*
_output_shapes
: *-
_class#
!loc:@batch_normalization_2/beta
�
7report_uninitialized_variables/IsVariableInitialized_26IsVariableInitialized!batch_normalization_2/moving_mean*4
_class*
(&loc:@batch_normalization_2/moving_mean*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_27IsVariableInitialized%batch_normalization_2/moving_variance*
dtype0*
_output_shapes
: *8
_class.
,*loc:@batch_normalization_2/moving_variance
�
7report_uninitialized_variables/IsVariableInitialized_28IsVariableInitializedlayer_length_conv1/kernel*,
_class"
 loc:@layer_length_conv1/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_29IsVariableInitializedlayer_length_conv1/bias**
_class 
loc:@layer_length_conv1/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_30IsVariableInitializedlayer_length_conv2/kernel*,
_class"
 loc:@layer_length_conv2/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_31IsVariableInitializedlayer_length_conv2/bias**
_class 
loc:@layer_length_conv2/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_32IsVariableInitializedlayer_length_fc1/kernel*
_output_shapes
: **
_class 
loc:@layer_length_fc1/kernel*
dtype0
�
7report_uninitialized_variables/IsVariableInitialized_33IsVariableInitializedlayer_length_fc1/bias*(
_class
loc:@layer_length_fc1/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_34IsVariableInitializedlayer_combine_fc_cnn1d/kernel*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_35IsVariableInitializedlayer_combine_fc_cnn1d/bias*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_36IsVariableInitializedlayer_combine_fc_x/kernel*,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_37IsVariableInitializedlayer_combine_fc_x/bias**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_38IsVariableInitializedlayer_combine_fc_y/kernel*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_39IsVariableInitializedlayer_combine_fc_y/bias**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_40IsVariableInitializedbeta1_power*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_41IsVariableInitializedbeta2_power*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_42IsVariableInitializedbatch_normalization/gamma/Adam*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_43IsVariableInitialized batch_normalization/gamma/Adam_1*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_44IsVariableInitializedbatch_normalization/beta/Adam*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_45IsVariableInitializedbatch_normalization/beta/Adam_1*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_46IsVariableInitializedlayer_conv1/kernel/Adam*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel
�
7report_uninitialized_variables/IsVariableInitialized_47IsVariableInitializedlayer_conv1/kernel/Adam_1*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_48IsVariableInitializedlayer_conv1/bias/Adam*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
dtype0
�
7report_uninitialized_variables/IsVariableInitialized_49IsVariableInitializedlayer_conv1/bias/Adam_1*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_50IsVariableInitializedlayer_conv2/kernel/Adam*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_51IsVariableInitializedlayer_conv2/kernel/Adam_1*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_52IsVariableInitializedlayer_conv2/bias/Adam*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_53IsVariableInitializedlayer_conv2/bias/Adam_1*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_54IsVariableInitializedlayer_fc1/kernel/Adam*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_55IsVariableInitializedlayer_fc1/kernel/Adam_1*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_56IsVariableInitializedlayer_fc1/bias/Adam*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_57IsVariableInitializedlayer_fc1/bias/Adam_1*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_58IsVariableInitialized"layer_combine_fc_cnn1d/kernel/Adam*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_59IsVariableInitialized$layer_combine_fc_cnn1d/kernel/Adam_1*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_60IsVariableInitialized layer_combine_fc_cnn1d/bias/Adam*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_61IsVariableInitialized"layer_combine_fc_cnn1d/bias/Adam_1*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_62IsVariableInitializedlayer_combine_fc_x/kernel/Adam*,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_63IsVariableInitialized layer_combine_fc_x/kernel/Adam_1*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0
�
7report_uninitialized_variables/IsVariableInitialized_64IsVariableInitializedlayer_combine_fc_x/bias/Adam**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_65IsVariableInitializedlayer_combine_fc_x/bias/Adam_1*
dtype0*
_output_shapes
: **
_class 
loc:@layer_combine_fc_x/bias
�
7report_uninitialized_variables/IsVariableInitialized_66IsVariableInitializedlayer_combine_fc_y/kernel/Adam*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_67IsVariableInitialized layer_combine_fc_y/kernel/Adam_1*,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_68IsVariableInitializedlayer_combine_fc_y/bias/Adam**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_69IsVariableInitializedlayer_combine_fc_y/bias/Adam_1*
dtype0*
_output_shapes
: **
_class 
loc:@layer_combine_fc_y/bias
�
7report_uninitialized_variables/IsVariableInitialized_70IsVariableInitializedaccuracy/total*!
_class
loc:@accuracy/total*
dtype0*
_output_shapes
: 
�
7report_uninitialized_variables/IsVariableInitialized_71IsVariableInitializedaccuracy/count*
_output_shapes
: *!
_class
loc:@accuracy/count*
dtype0
� 
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_117report_uninitialized_variables/IsVariableInitialized_127report_uninitialized_variables/IsVariableInitialized_137report_uninitialized_variables/IsVariableInitialized_147report_uninitialized_variables/IsVariableInitialized_157report_uninitialized_variables/IsVariableInitialized_167report_uninitialized_variables/IsVariableInitialized_177report_uninitialized_variables/IsVariableInitialized_187report_uninitialized_variables/IsVariableInitialized_197report_uninitialized_variables/IsVariableInitialized_207report_uninitialized_variables/IsVariableInitialized_217report_uninitialized_variables/IsVariableInitialized_227report_uninitialized_variables/IsVariableInitialized_237report_uninitialized_variables/IsVariableInitialized_247report_uninitialized_variables/IsVariableInitialized_257report_uninitialized_variables/IsVariableInitialized_267report_uninitialized_variables/IsVariableInitialized_277report_uninitialized_variables/IsVariableInitialized_287report_uninitialized_variables/IsVariableInitialized_297report_uninitialized_variables/IsVariableInitialized_307report_uninitialized_variables/IsVariableInitialized_317report_uninitialized_variables/IsVariableInitialized_327report_uninitialized_variables/IsVariableInitialized_337report_uninitialized_variables/IsVariableInitialized_347report_uninitialized_variables/IsVariableInitialized_357report_uninitialized_variables/IsVariableInitialized_367report_uninitialized_variables/IsVariableInitialized_377report_uninitialized_variables/IsVariableInitialized_387report_uninitialized_variables/IsVariableInitialized_397report_uninitialized_variables/IsVariableInitialized_407report_uninitialized_variables/IsVariableInitialized_417report_uninitialized_variables/IsVariableInitialized_427report_uninitialized_variables/IsVariableInitialized_437report_uninitialized_variables/IsVariableInitialized_447report_uninitialized_variables/IsVariableInitialized_457report_uninitialized_variables/IsVariableInitialized_467report_uninitialized_variables/IsVariableInitialized_477report_uninitialized_variables/IsVariableInitialized_487report_uninitialized_variables/IsVariableInitialized_497report_uninitialized_variables/IsVariableInitialized_507report_uninitialized_variables/IsVariableInitialized_517report_uninitialized_variables/IsVariableInitialized_527report_uninitialized_variables/IsVariableInitialized_537report_uninitialized_variables/IsVariableInitialized_547report_uninitialized_variables/IsVariableInitialized_557report_uninitialized_variables/IsVariableInitialized_567report_uninitialized_variables/IsVariableInitialized_577report_uninitialized_variables/IsVariableInitialized_587report_uninitialized_variables/IsVariableInitialized_597report_uninitialized_variables/IsVariableInitialized_607report_uninitialized_variables/IsVariableInitialized_617report_uninitialized_variables/IsVariableInitialized_627report_uninitialized_variables/IsVariableInitialized_637report_uninitialized_variables/IsVariableInitialized_647report_uninitialized_variables/IsVariableInitialized_657report_uninitialized_variables/IsVariableInitialized_667report_uninitialized_variables/IsVariableInitialized_677report_uninitialized_variables/IsVariableInitialized_687report_uninitialized_variables/IsVariableInitialized_697report_uninitialized_variables/IsVariableInitialized_707report_uninitialized_variables/IsVariableInitialized_71"/device:CPU:0*
T0
*

axis *
NH*
_output_shapes
:H
�
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack"/device:CPU:0*
_output_shapes
:H
�
$report_uninitialized_variables/ConstConst"/device:CPU:0*�
value�B�HBglobal_stepBbatch_normalization/gammaBbatch_normalization/betaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBlayer_conv1/kernelBlayer_conv1/biasBlayer_conv2/kernelBlayer_conv2/biasBlayer_fc1/kernelBlayer_fc1/biasBword_embeddingsBrnn/basic_rnn_cell/kernelBrnn/basic_rnn_cell/biasBlayer_rnn_fc_1/kernelBlayer_rnn_fc_1/biasBbatch_normalization_1/gammaBbatch_normalization_1/betaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBlayer_dnn_1/kernelBlayer_dnn_1/biasBlayer_dnn_2/kernelBlayer_dnn_2/biasBbatch_normalization_2/gammaBbatch_normalization_2/betaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBlayer_length_conv1/kernelBlayer_length_conv1/biasBlayer_length_conv2/kernelBlayer_length_conv2/biasBlayer_length_fc1/kernelBlayer_length_fc1/biasBlayer_combine_fc_cnn1d/kernelBlayer_combine_fc_cnn1d/biasBlayer_combine_fc_x/kernelBlayer_combine_fc_x/biasBlayer_combine_fc_y/kernelBlayer_combine_fc_y/biasBbeta1_powerBbeta2_powerBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Blayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1B"layer_combine_fc_cnn1d/kernel/AdamB$layer_combine_fc_cnn1d/kernel/Adam_1B layer_combine_fc_cnn1d/bias/AdamB"layer_combine_fc_cnn1d/bias/Adam_1Blayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1Baccuracy/totalBaccuracy/count*
dtype0*
_output_shapes
:H
�
1report_uninitialized_variables/boolean_mask/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB:H*
dtype0
�
?report_uninitialized_variables/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2"/device:CPU:0*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
�
Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices"/device:CPU:0*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
3report_uninitialized_variables/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:H*
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
�
3report_uninitialized_variables/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:H*
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
;report_uninitialized_variables/boolean_mask/strided_slice_2StridedSlice3report_uninitialized_variables/boolean_mask/Shape_2Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackCreport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask 
�
;report_uninitialized_variables/boolean_mask/concat/values_1Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/strided_slice_1;report_uninitialized_variables/boolean_mask/concat/values_1;report_uninitialized_variables/boolean_mask/strided_slice_27report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*
N*
_output_shapes
:*

Tidx0*
T0
�
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
_output_shapes
:H*
T0*
Tshape0
�
;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
���������*
dtype0*
_output_shapes
:
�
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
Tshape0*
_output_shapes
:H*
T0

�
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:���������*
T0

�
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:���������
�
9report_uninitialized_variables/boolean_mask/GatherV2/axisConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
�
4report_uninitialized_variables/boolean_mask/GatherV2GatherV23report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze9report_uninitialized_variables/boolean_mask/GatherV2/axis"/device:CPU:0*#
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0
v
$report_uninitialized_resources/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
concatConcatV24report_uninitialized_variables/boolean_mask/GatherV2$report_uninitialized_resources/Constconcat/axis*
N*#
_output_shapes
:���������*

Tidx0*
T0
�
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedbatch_normalization/gamma*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedbatch_normalization/beta*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedbatch_normalization/moving_mean*2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitialized#batch_normalization/moving_variance*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedlayer_conv1/kernel*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializedlayer_conv1/bias*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv1/bias
�
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializedlayer_conv2/kernel*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedlayer_conv2/bias*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
�
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializedlayer_fc1/kernel*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitializedlayer_fc1/bias*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitializedword_embeddings*"
_class
loc:@word_embeddings*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitializedrnn/basic_rnn_cell/kernel*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializedrnn/basic_rnn_cell/bias*
_output_shapes
: **
_class 
loc:@rnn/basic_rnn_cell/bias*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializedlayer_rnn_fc_1/kernel*
_output_shapes
: *(
_class
loc:@layer_rnn_fc_1/kernel*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_15IsVariableInitializedlayer_rnn_fc_1/bias*
dtype0*
_output_shapes
: *&
_class
loc:@layer_rnn_fc_1/bias
�
9report_uninitialized_variables_1/IsVariableInitialized_16IsVariableInitializedbatch_normalization_1/gamma*.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_17IsVariableInitializedbatch_normalization_1/beta*-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_18IsVariableInitialized!batch_normalization_1/moving_mean*4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_19IsVariableInitialized%batch_normalization_1/moving_variance*
_output_shapes
: *8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_20IsVariableInitializedlayer_dnn_1/kernel*%
_class
loc:@layer_dnn_1/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_21IsVariableInitializedlayer_dnn_1/bias*
_output_shapes
: *#
_class
loc:@layer_dnn_1/bias*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_22IsVariableInitializedlayer_dnn_2/kernel*%
_class
loc:@layer_dnn_2/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_23IsVariableInitializedlayer_dnn_2/bias*
dtype0*
_output_shapes
: *#
_class
loc:@layer_dnn_2/bias
�
9report_uninitialized_variables_1/IsVariableInitialized_24IsVariableInitializedbatch_normalization_2/gamma*
dtype0*
_output_shapes
: *.
_class$
" loc:@batch_normalization_2/gamma
�
9report_uninitialized_variables_1/IsVariableInitialized_25IsVariableInitializedbatch_normalization_2/beta*-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_26IsVariableInitialized!batch_normalization_2/moving_mean*4
_class*
(&loc:@batch_normalization_2/moving_mean*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_27IsVariableInitialized%batch_normalization_2/moving_variance*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_28IsVariableInitializedlayer_length_conv1/kernel*,
_class"
 loc:@layer_length_conv1/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_29IsVariableInitializedlayer_length_conv1/bias**
_class 
loc:@layer_length_conv1/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_30IsVariableInitializedlayer_length_conv2/kernel*,
_class"
 loc:@layer_length_conv2/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_31IsVariableInitializedlayer_length_conv2/bias**
_class 
loc:@layer_length_conv2/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_32IsVariableInitializedlayer_length_fc1/kernel**
_class 
loc:@layer_length_fc1/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_33IsVariableInitializedlayer_length_fc1/bias*
_output_shapes
: *(
_class
loc:@layer_length_fc1/bias*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_34IsVariableInitializedlayer_combine_fc_cnn1d/kernel*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_35IsVariableInitializedlayer_combine_fc_cnn1d/bias*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_36IsVariableInitializedlayer_combine_fc_x/kernel*,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_37IsVariableInitializedlayer_combine_fc_x/bias**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_38IsVariableInitializedlayer_combine_fc_y/kernel*
dtype0*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_y/kernel
�
9report_uninitialized_variables_1/IsVariableInitialized_39IsVariableInitializedlayer_combine_fc_y/bias**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_40IsVariableInitializedbeta1_power*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_41IsVariableInitializedbeta2_power*
_output_shapes
: *+
_class!
loc:@batch_normalization/beta*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_42IsVariableInitializedbatch_normalization/gamma/Adam*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_43IsVariableInitialized batch_normalization/gamma/Adam_1*,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_44IsVariableInitializedbatch_normalization/beta/Adam*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_45IsVariableInitializedbatch_normalization/beta/Adam_1*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_46IsVariableInitializedlayer_conv1/kernel/Adam*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_47IsVariableInitializedlayer_conv1/kernel/Adam_1*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_48IsVariableInitializedlayer_conv1/bias/Adam*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_49IsVariableInitializedlayer_conv1/bias/Adam_1*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_50IsVariableInitializedlayer_conv2/kernel/Adam*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_51IsVariableInitializedlayer_conv2/kernel/Adam_1*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_52IsVariableInitializedlayer_conv2/bias/Adam*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv2/bias
�
9report_uninitialized_variables_1/IsVariableInitialized_53IsVariableInitializedlayer_conv2/bias/Adam_1*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_54IsVariableInitializedlayer_fc1/kernel/Adam*
dtype0*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel
�
9report_uninitialized_variables_1/IsVariableInitialized_55IsVariableInitializedlayer_fc1/kernel/Adam_1*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_56IsVariableInitializedlayer_fc1/bias/Adam*
_output_shapes
: *!
_class
loc:@layer_fc1/bias*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_57IsVariableInitializedlayer_fc1/bias/Adam_1*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_58IsVariableInitialized"layer_combine_fc_cnn1d/kernel/Adam*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_59IsVariableInitialized$layer_combine_fc_cnn1d/kernel/Adam_1*
_output_shapes
: *0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_60IsVariableInitialized layer_combine_fc_cnn1d/bias/Adam*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_61IsVariableInitialized"layer_combine_fc_cnn1d/bias/Adam_1*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_62IsVariableInitializedlayer_combine_fc_x/kernel/Adam*,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_63IsVariableInitialized layer_combine_fc_x/kernel/Adam_1*,
_class"
 loc:@layer_combine_fc_x/kernel*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_64IsVariableInitializedlayer_combine_fc_x/bias/Adam**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_65IsVariableInitializedlayer_combine_fc_x/bias/Adam_1**
_class 
loc:@layer_combine_fc_x/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_66IsVariableInitializedlayer_combine_fc_y/kernel/Adam*
dtype0*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_y/kernel
�
9report_uninitialized_variables_1/IsVariableInitialized_67IsVariableInitialized layer_combine_fc_y/kernel/Adam_1*
_output_shapes
: *,
_class"
 loc:@layer_combine_fc_y/kernel*
dtype0
�
9report_uninitialized_variables_1/IsVariableInitialized_68IsVariableInitializedlayer_combine_fc_y/bias/Adam**
_class 
loc:@layer_combine_fc_y/bias*
dtype0*
_output_shapes
: 
�
9report_uninitialized_variables_1/IsVariableInitialized_69IsVariableInitializedlayer_combine_fc_y/bias/Adam_1*
dtype0*
_output_shapes
: **
_class 
loc:@layer_combine_fc_y/bias
�!
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_88report_uninitialized_variables_1/IsVariableInitialized_99report_uninitialized_variables_1/IsVariableInitialized_109report_uninitialized_variables_1/IsVariableInitialized_119report_uninitialized_variables_1/IsVariableInitialized_129report_uninitialized_variables_1/IsVariableInitialized_139report_uninitialized_variables_1/IsVariableInitialized_149report_uninitialized_variables_1/IsVariableInitialized_159report_uninitialized_variables_1/IsVariableInitialized_169report_uninitialized_variables_1/IsVariableInitialized_179report_uninitialized_variables_1/IsVariableInitialized_189report_uninitialized_variables_1/IsVariableInitialized_199report_uninitialized_variables_1/IsVariableInitialized_209report_uninitialized_variables_1/IsVariableInitialized_219report_uninitialized_variables_1/IsVariableInitialized_229report_uninitialized_variables_1/IsVariableInitialized_239report_uninitialized_variables_1/IsVariableInitialized_249report_uninitialized_variables_1/IsVariableInitialized_259report_uninitialized_variables_1/IsVariableInitialized_269report_uninitialized_variables_1/IsVariableInitialized_279report_uninitialized_variables_1/IsVariableInitialized_289report_uninitialized_variables_1/IsVariableInitialized_299report_uninitialized_variables_1/IsVariableInitialized_309report_uninitialized_variables_1/IsVariableInitialized_319report_uninitialized_variables_1/IsVariableInitialized_329report_uninitialized_variables_1/IsVariableInitialized_339report_uninitialized_variables_1/IsVariableInitialized_349report_uninitialized_variables_1/IsVariableInitialized_359report_uninitialized_variables_1/IsVariableInitialized_369report_uninitialized_variables_1/IsVariableInitialized_379report_uninitialized_variables_1/IsVariableInitialized_389report_uninitialized_variables_1/IsVariableInitialized_399report_uninitialized_variables_1/IsVariableInitialized_409report_uninitialized_variables_1/IsVariableInitialized_419report_uninitialized_variables_1/IsVariableInitialized_429report_uninitialized_variables_1/IsVariableInitialized_439report_uninitialized_variables_1/IsVariableInitialized_449report_uninitialized_variables_1/IsVariableInitialized_459report_uninitialized_variables_1/IsVariableInitialized_469report_uninitialized_variables_1/IsVariableInitialized_479report_uninitialized_variables_1/IsVariableInitialized_489report_uninitialized_variables_1/IsVariableInitialized_499report_uninitialized_variables_1/IsVariableInitialized_509report_uninitialized_variables_1/IsVariableInitialized_519report_uninitialized_variables_1/IsVariableInitialized_529report_uninitialized_variables_1/IsVariableInitialized_539report_uninitialized_variables_1/IsVariableInitialized_549report_uninitialized_variables_1/IsVariableInitialized_559report_uninitialized_variables_1/IsVariableInitialized_569report_uninitialized_variables_1/IsVariableInitialized_579report_uninitialized_variables_1/IsVariableInitialized_589report_uninitialized_variables_1/IsVariableInitialized_599report_uninitialized_variables_1/IsVariableInitialized_609report_uninitialized_variables_1/IsVariableInitialized_619report_uninitialized_variables_1/IsVariableInitialized_629report_uninitialized_variables_1/IsVariableInitialized_639report_uninitialized_variables_1/IsVariableInitialized_649report_uninitialized_variables_1/IsVariableInitialized_659report_uninitialized_variables_1/IsVariableInitialized_669report_uninitialized_variables_1/IsVariableInitialized_679report_uninitialized_variables_1/IsVariableInitialized_689report_uninitialized_variables_1/IsVariableInitialized_69"/device:CPU:0*
T0
*

axis *
NF*
_output_shapes
:F
�
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack"/device:CPU:0*
_output_shapes
:F
�
&report_uninitialized_variables_1/ConstConst"/device:CPU:0*�
value�B�FBglobal_stepBbatch_normalization/gammaBbatch_normalization/betaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBlayer_conv1/kernelBlayer_conv1/biasBlayer_conv2/kernelBlayer_conv2/biasBlayer_fc1/kernelBlayer_fc1/biasBword_embeddingsBrnn/basic_rnn_cell/kernelBrnn/basic_rnn_cell/biasBlayer_rnn_fc_1/kernelBlayer_rnn_fc_1/biasBbatch_normalization_1/gammaBbatch_normalization_1/betaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBlayer_dnn_1/kernelBlayer_dnn_1/biasBlayer_dnn_2/kernelBlayer_dnn_2/biasBbatch_normalization_2/gammaBbatch_normalization_2/betaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBlayer_length_conv1/kernelBlayer_length_conv1/biasBlayer_length_conv2/kernelBlayer_length_conv2/biasBlayer_length_fc1/kernelBlayer_length_fc1/biasBlayer_combine_fc_cnn1d/kernelBlayer_combine_fc_cnn1d/biasBlayer_combine_fc_x/kernelBlayer_combine_fc_x/biasBlayer_combine_fc_y/kernelBlayer_combine_fc_y/biasBbeta1_powerBbeta2_powerBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Blayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1B"layer_combine_fc_cnn1d/kernel/AdamB$layer_combine_fc_cnn1d/kernel/Adam_1B layer_combine_fc_cnn1d/bias/AdamB"layer_combine_fc_cnn1d/bias/Adam_1Blayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1*
dtype0*
_output_shapes
:F
�
3report_uninitialized_variables_1/boolean_mask/ShapeConst"/device:CPU:0*
valueB:F*
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2"/device:CPU:0*
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
�
Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices"/device:CPU:0*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
5report_uninitialized_variables_1/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:F*
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask 
�
5report_uninitialized_variables_1/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:F*
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
�
=report_uninitialized_variables_1/boolean_mask/strided_slice_2StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_2Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
end_mask*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
�
=report_uninitialized_variables_1/boolean_mask/concat/values_1Pack2report_uninitialized_variables_1/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
9report_uninitialized_variables_1/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/strided_slice_1=report_uninitialized_variables_1/boolean_mask/concat/values_1=report_uninitialized_variables_1/boolean_mask/strided_slice_29report_uninitialized_variables_1/boolean_mask/concat/axis"/device:CPU:0*

Tidx0*
T0*
N*
_output_shapes
:
�
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:F
�
=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
���������*
dtype0*
_output_shapes
:
�
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:F
�
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:���������*
T0

�
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:���������
�
;report_uninitialized_variables_1/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
6report_uninitialized_variables_1/boolean_mask/GatherV2GatherV25report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze;report_uninitialized_variables_1/boolean_mask/GatherV2/axis"/device:CPU:0*
Tindices0	*
Tparams0*#
_output_shapes
:���������*
Taxis0
>
init_2NoOp^accuracy/count/Assign^accuracy/total/Assign

init_all_tablesNoOp

init_3NoOp
8
group_deps_1NoOp^init_2^init_3^init_all_tables
U
Merge/MergeSummaryMergeSummary
accuracy_1loss*
N*
_output_shapes
: 
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_609c58c562334f21b56246ff42f47182/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�FBbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbeta1_powerBbeta2_powerBglobal_stepBlayer_combine_fc_cnn1d/biasB layer_combine_fc_cnn1d/bias/AdamB"layer_combine_fc_cnn1d/bias/Adam_1Blayer_combine_fc_cnn1d/kernelB"layer_combine_fc_cnn1d/kernel/AdamB$layer_combine_fc_cnn1d/kernel/Adam_1Blayer_combine_fc_x/biasBlayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_x/kernelBlayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_y/biasBlayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1Blayer_combine_fc_y/kernelBlayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_dnn_1/biasBlayer_dnn_1/kernelBlayer_dnn_2/biasBlayer_dnn_2/kernelBlayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_length_conv1/biasBlayer_length_conv1/kernelBlayer_length_conv2/biasBlayer_length_conv2/kernelBlayer_length_fc1/biasBlayer_length_fc1/kernelBlayer_rnn_fc_1/biasBlayer_rnn_fc_1/kernelBrnn/basic_rnn_cell/biasBrnn/basic_rnn_cell/kernelBword_embeddings*
dtype0*
_output_shapes
:F
�
save/SaveV2/shape_and_slicesConst"/device:CPU:0*�
value�B�FB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:F
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1batch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1batch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/betabatch_normalization_1/gamma!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancebatch_normalization_2/betabatch_normalization_2/gamma!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancebeta1_powerbeta2_powerglobal_steplayer_combine_fc_cnn1d/bias layer_combine_fc_cnn1d/bias/Adam"layer_combine_fc_cnn1d/bias/Adam_1layer_combine_fc_cnn1d/kernel"layer_combine_fc_cnn1d/kernel/Adam$layer_combine_fc_cnn1d/kernel/Adam_1layer_combine_fc_x/biaslayer_combine_fc_x/bias/Adamlayer_combine_fc_x/bias/Adam_1layer_combine_fc_x/kernellayer_combine_fc_x/kernel/Adam layer_combine_fc_x/kernel/Adam_1layer_combine_fc_y/biaslayer_combine_fc_y/bias/Adamlayer_combine_fc_y/bias/Adam_1layer_combine_fc_y/kernellayer_combine_fc_y/kernel/Adam layer_combine_fc_y/kernel/Adam_1layer_conv1/biaslayer_conv1/bias/Adamlayer_conv1/bias/Adam_1layer_conv1/kernellayer_conv1/kernel/Adamlayer_conv1/kernel/Adam_1layer_conv2/biaslayer_conv2/bias/Adamlayer_conv2/bias/Adam_1layer_conv2/kernellayer_conv2/kernel/Adamlayer_conv2/kernel/Adam_1layer_dnn_1/biaslayer_dnn_1/kernellayer_dnn_2/biaslayer_dnn_2/kernellayer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1layer_fc1/kernellayer_fc1/kernel/Adamlayer_fc1/kernel/Adam_1layer_length_conv1/biaslayer_length_conv1/kernellayer_length_conv2/biaslayer_length_conv2/kernellayer_length_fc1/biaslayer_length_fc1/kernellayer_rnn_fc_1/biaslayer_rnn_fc_1/kernelrnn/basic_rnn_cell/biasrnn/basic_rnn_cell/kernelword_embeddings"/device:CPU:0*T
dtypesJ
H2F	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
�
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�FBbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbeta1_powerBbeta2_powerBglobal_stepBlayer_combine_fc_cnn1d/biasB layer_combine_fc_cnn1d/bias/AdamB"layer_combine_fc_cnn1d/bias/Adam_1Blayer_combine_fc_cnn1d/kernelB"layer_combine_fc_cnn1d/kernel/AdamB$layer_combine_fc_cnn1d/kernel/Adam_1Blayer_combine_fc_x/biasBlayer_combine_fc_x/bias/AdamBlayer_combine_fc_x/bias/Adam_1Blayer_combine_fc_x/kernelBlayer_combine_fc_x/kernel/AdamB layer_combine_fc_x/kernel/Adam_1Blayer_combine_fc_y/biasBlayer_combine_fc_y/bias/AdamBlayer_combine_fc_y/bias/Adam_1Blayer_combine_fc_y/kernelBlayer_combine_fc_y/kernel/AdamB layer_combine_fc_y/kernel/Adam_1Blayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_dnn_1/biasBlayer_dnn_1/kernelBlayer_dnn_2/biasBlayer_dnn_2/kernelBlayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_length_conv1/biasBlayer_length_conv1/kernelBlayer_length_conv2/biasBlayer_length_conv2/kernelBlayer_length_fc1/biasBlayer_length_fc1/kernelBlayer_rnn_fc_1/biasBlayer_rnn_fc_1/kernelBrnn/basic_rnn_cell/biasBrnn/basic_rnn_cell/kernelBword_embeddings*
dtype0*
_output_shapes
:F
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*�
value�B�FB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:F
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*T
dtypesJ
H2F	
�
save/AssignAssignbatch_normalization/betasave/RestoreV2*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save/Assign_1Assignbatch_normalization/beta/Adamsave/RestoreV2:1*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save/Assign_2Assignbatch_normalization/beta/Adam_1save/RestoreV2:2*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
�
save/Assign_3Assignbatch_normalization/gammasave/RestoreV2:3*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes	
:�
�
save/Assign_4Assignbatch_normalization/gamma/Adamsave/RestoreV2:4*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes	
:�
�
save/Assign_5Assign batch_normalization/gamma/Adam_1save/RestoreV2:5*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes	
:�
�
save/Assign_6Assignbatch_normalization/moving_meansave/RestoreV2:6*
use_locking(*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:�
�
save/Assign_7Assign#batch_normalization/moving_variancesave/RestoreV2:7*
use_locking(*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:�
�
save/Assign_8Assignbatch_normalization_1/betasave/RestoreV2:8*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta
�
save/Assign_9Assignbatch_normalization_1/gammasave/RestoreV2:9*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:
�
save/Assign_10Assign!batch_normalization_1/moving_meansave/RestoreV2:10*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
�
save/Assign_11Assign%batch_normalization_1/moving_variancesave/RestoreV2:11*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
�
save/Assign_12Assignbatch_normalization_2/betasave/RestoreV2:12*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
�
save/Assign_13Assignbatch_normalization_2/gammasave/RestoreV2:13*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@
�
save/Assign_14Assign!batch_normalization_2/moving_meansave/RestoreV2:14*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
�
save/Assign_15Assign%batch_normalization_2/moving_variancesave/RestoreV2:15*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
:@
�
save/Assign_16Assignbeta1_powersave/RestoreV2:16*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(
�
save/Assign_17Assignbeta2_powersave/RestoreV2:17*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
�
save/Assign_18Assignglobal_stepsave/RestoreV2:18*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_19Assignlayer_combine_fc_cnn1d/biassave/RestoreV2:19*
_output_shapes	
:�*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(
�
save/Assign_20Assign layer_combine_fc_cnn1d/bias/Adamsave/RestoreV2:20*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(*
_output_shapes	
:�
�
save/Assign_21Assign"layer_combine_fc_cnn1d/bias/Adam_1save/RestoreV2:21*
use_locking(*
T0*.
_class$
" loc:@layer_combine_fc_cnn1d/bias*
validate_shape(*
_output_shapes	
:�
�
save/Assign_22Assignlayer_combine_fc_cnn1d/kernelsave/RestoreV2:22* 
_output_shapes
:
��*
use_locking(*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
validate_shape(
�
save/Assign_23Assign"layer_combine_fc_cnn1d/kernel/Adamsave/RestoreV2:23* 
_output_shapes
:
��*
use_locking(*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
validate_shape(
�
save/Assign_24Assign$layer_combine_fc_cnn1d/kernel/Adam_1save/RestoreV2:24*
use_locking(*
T0*0
_class&
$"loc:@layer_combine_fc_cnn1d/kernel*
validate_shape(* 
_output_shapes
:
��
�
save/Assign_25Assignlayer_combine_fc_x/biassave/RestoreV2:25*
_output_shapes	
:�*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(
�
save/Assign_26Assignlayer_combine_fc_x/bias/Adamsave/RestoreV2:26*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias*
validate_shape(*
_output_shapes	
:�
�
save/Assign_27Assignlayer_combine_fc_x/bias/Adam_1save/RestoreV2:27*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_x/bias
�
save/Assign_28Assignlayer_combine_fc_x/kernelsave/RestoreV2:28*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel
�
save/Assign_29Assignlayer_combine_fc_x/kernel/Adamsave/RestoreV2:29* 
_output_shapes
:
��*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(
�
save/Assign_30Assign layer_combine_fc_x/kernel/Adam_1save/RestoreV2:30*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_x/kernel*
validate_shape(* 
_output_shapes
:
��
�
save/Assign_31Assignlayer_combine_fc_y/biassave/RestoreV2:31*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_32Assignlayer_combine_fc_y/bias/Adamsave/RestoreV2:32*
use_locking(*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_33Assignlayer_combine_fc_y/bias/Adam_1save/RestoreV2:33*
T0**
_class 
loc:@layer_combine_fc_y/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_34Assignlayer_combine_fc_y/kernelsave/RestoreV2:34*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(*
_output_shapes
:	�
�
save/Assign_35Assignlayer_combine_fc_y/kernel/Adamsave/RestoreV2:35*
_output_shapes
:	�*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel*
validate_shape(
�
save/Assign_36Assign layer_combine_fc_y/kernel/Adam_1save/RestoreV2:36*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*,
_class"
 loc:@layer_combine_fc_y/kernel
�
save/Assign_37Assignlayer_conv1/biassave/RestoreV2:37*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias
�
save/Assign_38Assignlayer_conv1/bias/Adamsave/RestoreV2:38*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(
�
save/Assign_39Assignlayer_conv1/bias/Adam_1save/RestoreV2:39*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_40Assignlayer_conv1/kernelsave/RestoreV2:40*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*"
_output_shapes
: 
�
save/Assign_41Assignlayer_conv1/kernel/Adamsave/RestoreV2:41*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*"
_output_shapes
: 
�
save/Assign_42Assignlayer_conv1/kernel/Adam_1save/RestoreV2:42*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*"
_output_shapes
: 
�
save/Assign_43Assignlayer_conv2/biassave/RestoreV2:43*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(
�
save/Assign_44Assignlayer_conv2/bias/Adamsave/RestoreV2:44*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_45Assignlayer_conv2/bias/Adam_1save/RestoreV2:45*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(
�
save/Assign_46Assignlayer_conv2/kernelsave/RestoreV2:46*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*"
_output_shapes
:  
�
save/Assign_47Assignlayer_conv2/kernel/Adamsave/RestoreV2:47*
validate_shape(*"
_output_shapes
:  *
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel
�
save/Assign_48Assignlayer_conv2/kernel/Adam_1save/RestoreV2:48*
validate_shape(*"
_output_shapes
:  *
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel
�
save/Assign_49Assignlayer_dnn_1/biassave/RestoreV2:49*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_dnn_1/bias
�
save/Assign_50Assignlayer_dnn_1/kernelsave/RestoreV2:50*
T0*%
_class
loc:@layer_dnn_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save/Assign_51Assignlayer_dnn_2/biassave/RestoreV2:51*
T0*#
_class
loc:@layer_dnn_2/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_52Assignlayer_dnn_2/kernelsave/RestoreV2:52*
T0*%
_class
loc:@layer_dnn_2/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(
�
save/Assign_53Assignlayer_fc1/biassave/RestoreV2:53*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:�
�
save/Assign_54Assignlayer_fc1/bias/Adamsave/RestoreV2:54*
_output_shapes	
:�*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(
�
save/Assign_55Assignlayer_fc1/bias/Adam_1save/RestoreV2:55*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:�
�
save/Assign_56Assignlayer_fc1/kernelsave/RestoreV2:56* 
_output_shapes
:
�@�*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(
�
save/Assign_57Assignlayer_fc1/kernel/Adamsave/RestoreV2:57*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
�@�*
use_locking(*
T0
�
save/Assign_58Assignlayer_fc1/kernel/Adam_1save/RestoreV2:58*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
�@�
�
save/Assign_59Assignlayer_length_conv1/biassave/RestoreV2:59*
use_locking(*
T0**
_class 
loc:@layer_length_conv1/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_60Assignlayer_length_conv1/kernelsave/RestoreV2:60*,
_class"
 loc:@layer_length_conv1/kernel*
validate_shape(*"
_output_shapes
: *
use_locking(*
T0
�
save/Assign_61Assignlayer_length_conv2/biassave/RestoreV2:61*
use_locking(*
T0**
_class 
loc:@layer_length_conv2/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_62Assignlayer_length_conv2/kernelsave/RestoreV2:62*
validate_shape(*"
_output_shapes
:  *
use_locking(*
T0*,
_class"
 loc:@layer_length_conv2/kernel
�
save/Assign_63Assignlayer_length_fc1/biassave/RestoreV2:63*
use_locking(*
T0*(
_class
loc:@layer_length_fc1/bias*
validate_shape(*
_output_shapes	
:�
�
save/Assign_64Assignlayer_length_fc1/kernelsave/RestoreV2:64*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0**
_class 
loc:@layer_length_fc1/kernel
�
save/Assign_65Assignlayer_rnn_fc_1/biassave/RestoreV2:65*
T0*&
_class
loc:@layer_rnn_fc_1/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
save/Assign_66Assignlayer_rnn_fc_1/kernelsave/RestoreV2:66*
use_locking(*
T0*(
_class
loc:@layer_rnn_fc_1/kernel*
validate_shape(*
_output_shapes
:	@�
�
save/Assign_67Assignrnn/basic_rnn_cell/biassave/RestoreV2:67*
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@rnn/basic_rnn_cell/bias*
validate_shape(
�
save/Assign_68Assignrnn/basic_rnn_cell/kernelsave/RestoreV2:68*
_output_shapes

:`@*
use_locking(*
T0*,
_class"
 loc:@rnn/basic_rnn_cell/kernel*
validate_shape(
�
save/Assign_69Assignword_embeddingssave/RestoreV2:69*
use_locking(*
T0*"
_class
loc:@word_embeddings*
validate_shape(*
_output_shapes
:	� 
�	
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard�#
�
�
/tf_data_structured_function_wrapper_52oRgbbAY9U
arg0
tfrecorddataset2DWrapper for passing nested structures to and from tf.data functions.�H
compression_typeConst"/device:CPU:0*
valueB B *
dtype0F
buffer_sizeConst"/device:CPU:0*
valueB		 R��*
dtype0	h
TFRecordDatasetTFRecordDatasetarg0compression_type:output:0buffer_size:output:0"/device:CPU:0"+
tfrecorddatasetTFRecordDataset:handle:0
�
�
/tf_data_structured_function_wrapper_HF2qjsseTGA
arg0)
%parsesingleexample_parsesingleexample	+
'parsesingleexample_parsesingleexample_0	+
'parsesingleexample_parsesingleexample_1	+
'parsesingleexample_parsesingleexample_2+
'parsesingleexample_parsesingleexample_3	2DWrapper for passing nested structures to and from tf.data functions.P
ParseSingleExample/ConstConst"/device:CPU:0*
dtype0	*
valueB	 R
ParseSingleExample/Const_1Const"/device:CPU:0*
valueB	 *
dtype0	R
ParseSingleExample/Const_2Const"/device:CPU:0*
valueB	 *
dtype0	R
ParseSingleExample/Const_3Const"/device:CPU:0*
valueB *
dtype0R
ParseSingleExample/Const_4Const"/device:CPU:0*
valueB	 *
dtype0	�
%ParseSingleExample/ParseSingleExampleParseSingleExamplearg0!ParseSingleExample/Const:output:0#ParseSingleExample/Const_1:output:0#ParseSingleExample/Const_2:output:0#ParseSingleExample/Const_3:output:0#ParseSingleExample/Const_4:output:0"/device:CPU:0*
sparse_keys
 *
Tdense	
2				*

num_sparse *R

dense_keysD
BlabelpacketLengthpacketPayloadpacketStatisticrecordTypes*-
dense_shapes
: :@:�::@*
sparse_types
 "_
'parsesingleexample_parsesingleexample_04ParseSingleExample/ParseSingleExample:dense_values:1"_
'parsesingleexample_parsesingleexample_14ParseSingleExample/ParseSingleExample:dense_values:2"_
'parsesingleexample_parsesingleexample_24ParseSingleExample/ParseSingleExample:dense_values:3"_
'parsesingleexample_parsesingleexample_34ParseSingleExample/ParseSingleExample:dense_values:0"]
%parsesingleexample_parsesingleexample4ParseSingleExample/ParseSingleExample:dense_values:4
�
2
_make_dataset_AsAROsJbEI0
batchdatasetv2�z
TensorSliceDataset/ConstConst"/device:CPU:0*;
value2B0 B*../../data/android_train_complete.tfrecord*
dtype0m
'TensorSliceDataset/flat_filenames/shapeConst"/device:CPU:0*
valueB:
���������*
dtype0�
!TensorSliceDataset/flat_filenamesReshape!TensorSliceDataset/Const:output:00TensorSliceDataset/flat_filenames/shape:output:0"/device:CPU:0*
T0*
Tshape0�
TensorSliceDatasetTensorSliceDataset*TensorSliceDataset/flat_filenames:output:0"/device:CPU:0*
output_shapes
: *
Toutput_types
2�
FlatMapDatasetFlatMapDatasetTensorSliceDataset:handle:0"/device:CPU:0*
output_types
2*

Targuments
 *
output_shapes
: *8
f3R1
/tf_data_structured_function_wrapper_52oRgbbAY9U�

MapDataset
MapDatasetFlatMapDataset:handle:0"/device:CPU:0*
output_types	
2				*
use_inter_op_parallelism(*

Targuments
 *.
output_shapes
:@:@:�:: *8
f3R1
/tf_data_structured_function_wrapper_HF2qjsseTGAT
ShuffleDataset/buffer_sizeConst"/device:CPU:0*
value
B	 R�*
dtype0	L
ShuffleDataset/seedConst"/device:CPU:0*
dtype0	*
value	B	 R M
ShuffleDataset/seed2Const"/device:CPU:0*
value	B	 R *
dtype0	�
ShuffleDatasetShuffleDatasetMapDataset:handle:0#ShuffleDataset/buffer_size:output:0ShuffleDataset/seed:output:0ShuffleDataset/seed2:output:0"/device:CPU:0*
output_types	
2				*.
output_shapes
:@:@:�:: *
reshuffle_each_iteration(U
RepeatDataset/countConst"/device:CPU:0*
dtype0	*
valueB	 R
����������
RepeatDatasetRepeatDatasetShuffleDataset:handle:0RepeatDataset/count:output:0"/device:CPU:0*.
output_shapes
:@:@:�:: *
output_types	
2				R
BatchDatasetV2/batch_sizeConst"/device:CPU:0*
value	B	 R *
dtype0	V
BatchDatasetV2/drop_remainderConst"/device:CPU:0*
value	B
 Z *
dtype0
�
BatchDatasetV2BatchDatasetV2RepeatDataset:handle:0"BatchDatasetV2/batch_size:output:0&BatchDatasetV2/drop_remainder:output:0"/device:CPU:0*
output_types	
2				*o
output_shapes^
\:���������@:���������@:����������:���������:���������")
batchdatasetv2BatchDatasetV2:handle:0"<
save/Const:0save/Identity:0save/restore_all (5 @F8"�$
trainable_variables�#�#
�
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:08
�
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:08

layer_conv1/kernel:0layer_conv1/kernel/Assignlayer_conv1/kernel/read:02/layer_conv1/kernel/Initializer/random_uniform:08
n
layer_conv1/bias:0layer_conv1/bias/Assignlayer_conv1/bias/read:02$layer_conv1/bias/Initializer/zeros:08

layer_conv2/kernel:0layer_conv2/kernel/Assignlayer_conv2/kernel/read:02/layer_conv2/kernel/Initializer/random_uniform:08
n
layer_conv2/bias:0layer_conv2/bias/Assignlayer_conv2/bias/read:02$layer_conv2/bias/Initializer/zeros:08
w
layer_fc1/kernel:0layer_fc1/kernel/Assignlayer_fc1/kernel/read:02-layer_fc1/kernel/Initializer/random_uniform:08
f
layer_fc1/bias:0layer_fc1/bias/Assignlayer_fc1/bias/read:02"layer_fc1/bias/Initializer/zeros:08
s
word_embeddings:0word_embeddings/Assignword_embeddings/read:02,word_embeddings/Initializer/random_uniform:08
�
rnn/basic_rnn_cell/kernel:0 rnn/basic_rnn_cell/kernel/Assign rnn/basic_rnn_cell/kernel/read:026rnn/basic_rnn_cell/kernel/Initializer/random_uniform:08
�
rnn/basic_rnn_cell/bias:0rnn/basic_rnn_cell/bias/Assignrnn/basic_rnn_cell/bias/read:02+rnn/basic_rnn_cell/bias/Initializer/zeros:08
�
layer_rnn_fc_1/kernel:0layer_rnn_fc_1/kernel/Assignlayer_rnn_fc_1/kernel/read:022layer_rnn_fc_1/kernel/Initializer/random_uniform:08
z
layer_rnn_fc_1/bias:0layer_rnn_fc_1/bias/Assignlayer_rnn_fc_1/bias/read:02'layer_rnn_fc_1/bias/Initializer/zeros:08
�
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:08
�
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:08

layer_dnn_1/kernel:0layer_dnn_1/kernel/Assignlayer_dnn_1/kernel/read:02/layer_dnn_1/kernel/Initializer/random_uniform:08
n
layer_dnn_1/bias:0layer_dnn_1/bias/Assignlayer_dnn_1/bias/read:02$layer_dnn_1/bias/Initializer/zeros:08

layer_dnn_2/kernel:0layer_dnn_2/kernel/Assignlayer_dnn_2/kernel/read:02/layer_dnn_2/kernel/Initializer/random_uniform:08
n
layer_dnn_2/bias:0layer_dnn_2/bias/Assignlayer_dnn_2/bias/read:02$layer_dnn_2/bias/Initializer/zeros:08
�
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02.batch_normalization_2/gamma/Initializer/ones:08
�
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02.batch_normalization_2/beta/Initializer/zeros:08
�
layer_length_conv1/kernel:0 layer_length_conv1/kernel/Assign layer_length_conv1/kernel/read:026layer_length_conv1/kernel/Initializer/random_uniform:08
�
layer_length_conv1/bias:0layer_length_conv1/bias/Assignlayer_length_conv1/bias/read:02+layer_length_conv1/bias/Initializer/zeros:08
�
layer_length_conv2/kernel:0 layer_length_conv2/kernel/Assign layer_length_conv2/kernel/read:026layer_length_conv2/kernel/Initializer/random_uniform:08
�
layer_length_conv2/bias:0layer_length_conv2/bias/Assignlayer_length_conv2/bias/read:02+layer_length_conv2/bias/Initializer/zeros:08
�
layer_length_fc1/kernel:0layer_length_fc1/kernel/Assignlayer_length_fc1/kernel/read:024layer_length_fc1/kernel/Initializer/random_uniform:08
�
layer_length_fc1/bias:0layer_length_fc1/bias/Assignlayer_length_fc1/bias/read:02)layer_length_fc1/bias/Initializer/zeros:08
�
layer_combine_fc_cnn1d/kernel:0$layer_combine_fc_cnn1d/kernel/Assign$layer_combine_fc_cnn1d/kernel/read:02:layer_combine_fc_cnn1d/kernel/Initializer/random_uniform:08
�
layer_combine_fc_cnn1d/bias:0"layer_combine_fc_cnn1d/bias/Assign"layer_combine_fc_cnn1d/bias/read:02/layer_combine_fc_cnn1d/bias/Initializer/zeros:08
�
layer_combine_fc_x/kernel:0 layer_combine_fc_x/kernel/Assign layer_combine_fc_x/kernel/read:026layer_combine_fc_x/kernel/Initializer/random_uniform:08
�
layer_combine_fc_x/bias:0layer_combine_fc_x/bias/Assignlayer_combine_fc_x/bias/read:02+layer_combine_fc_x/bias/Initializer/zeros:08
�
layer_combine_fc_y/kernel:0 layer_combine_fc_y/kernel/Assign layer_combine_fc_y/kernel/read:026layer_combine_fc_y/kernel/Initializer/random_uniform:08
�
layer_combine_fc_y/bias:0layer_combine_fc_y/bias/Assignlayer_combine_fc_y/bias/read:02+layer_combine_fc_y/bias/Initializer/zeros:08"%
	summaries

accuracy_1:0
loss:0"�
while_context��
�
rnn/while/while_context *rnn/while/LoopCond:02rnn/while/Merge:0:rnn/while/Identity:0Brnn/while/Exit:0Brnn/while/Exit_1:0Brnn/while/Exit_2:0Brnn/while/Exit_3:0J�
rnn/Minimum:0
rnn/TensorArray:0
@rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
rnn/TensorArray_1:0
rnn/basic_rnn_cell/bias/read:0
 rnn/basic_rnn_cell/kernel/read:0
rnn/strided_slice_1:0
rnn/while/Enter:0
rnn/while/Enter_1:0
rnn/while/Enter_2:0
rnn/while/Enter_3:0
rnn/while/Exit:0
rnn/while/Exit_1:0
rnn/while/Exit_2:0
rnn/while/Exit_3:0
rnn/while/Identity:0
rnn/while/Identity_1:0
rnn/while/Identity_2:0
rnn/while/Identity_3:0
rnn/while/Less/Enter:0
rnn/while/Less:0
rnn/while/Less_1/Enter:0
rnn/while/Less_1:0
rnn/while/LogicalAnd:0
rnn/while/LoopCond:0
rnn/while/Merge:0
rnn/while/Merge:1
rnn/while/Merge_1:0
rnn/while/Merge_1:1
rnn/while/Merge_2:0
rnn/while/Merge_2:1
rnn/while/Merge_3:0
rnn/while/Merge_3:1
rnn/while/NextIteration:0
rnn/while/NextIteration_1:0
rnn/while/NextIteration_2:0
rnn/while/NextIteration_3:0
rnn/while/Switch:0
rnn/while/Switch:1
rnn/while/Switch_1:0
rnn/while/Switch_1:1
rnn/while/Switch_2:0
rnn/while/Switch_2:1
rnn/while/Switch_3:0
rnn/while/Switch_3:1
#rnn/while/TensorArrayReadV3/Enter:0
%rnn/while/TensorArrayReadV3/Enter_1:0
rnn/while/TensorArrayReadV3:0
5rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
rnn/while/add/y:0
rnn/while/add:0
rnn/while/add_1/y:0
rnn/while/add_1:0
(rnn/while/basic_rnn_cell/BiasAdd/Enter:0
"rnn/while/basic_rnn_cell/BiasAdd:0
'rnn/while/basic_rnn_cell/MatMul/Enter:0
!rnn/while/basic_rnn_cell/MatMul:0
rnn/while/basic_rnn_cell/Tanh:0
&rnn/while/basic_rnn_cell/concat/axis:0
!rnn/while/basic_rnn_cell/concat:0)
rnn/Minimum:0rnn/while/Less_1/Enter:0:
rnn/TensorArray_1:0#rnn/while/TensorArrayReadV3/Enter:0/
rnn/strided_slice_1:0rnn/while/Less/Enter:0i
@rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0%rnn/while/TensorArrayReadV3/Enter_1:0K
 rnn/basic_rnn_cell/kernel/read:0'rnn/while/basic_rnn_cell/MatMul/Enter:0J
rnn/TensorArray:05rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0J
rnn/basic_rnn_cell/bias/read:0(rnn/while/basic_rnn_cell/BiasAdd/Enter:0Rrnn/while/Enter:0Rrnn/while/Enter_1:0Rrnn/while/Enter_2:0Rrnn/while/Enter_3:0Zrnn/strided_slice_1:0"W
ready_for_local_init_op<
:
8report_uninitialized_variables_1/boolean_mask/GatherV2:0"
init_op


group_deps"�
cond_context��
�
global_step/cond/cond_textglobal_step/cond/pred_id:0global_step/cond/switch_t:0 *�
global_step/cond/pred_id:0
global_step/cond/read/Switch:1
global_step/cond/read:0
global_step/cond/switch_t:0
global_step:08
global_step/cond/pred_id:0global_step/cond/pred_id:0/
global_step:0global_step/cond/read/Switch:1
�
global_step/cond/cond_text_1global_step/cond/pred_id:0global_step/cond/switch_f:0*�
global_step/Initializer/zeros:0
global_step/cond/Switch_1:0
global_step/cond/Switch_1:1
global_step/cond/pred_id:0
global_step/cond/switch_f:08
global_step/cond/pred_id:0global_step/cond/pred_id:0>
global_step/Initializer/zeros:0global_step/cond/Switch_1:0":
metric_variables&
$
accuracy/total:0
accuracy/count:0"�
local_variables��
d
accuracy/total:0accuracy/total/Assignaccuracy/total/read:02"accuracy/total/Initializer/zeros:0
d
accuracy/count:0accuracy/count/Assignaccuracy/count/read:02"accuracy/count/Initializer/zeros:0"!
local_init_op

group_deps_1"�P
	variables�P�P
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
�
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:08
�
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:08
�
!batch_normalization/moving_mean:0&batch_normalization/moving_mean/Assign&batch_normalization/moving_mean/read:023batch_normalization/moving_mean/Initializer/zeros:0
�
%batch_normalization/moving_variance:0*batch_normalization/moving_variance/Assign*batch_normalization/moving_variance/read:026batch_normalization/moving_variance/Initializer/ones:0

layer_conv1/kernel:0layer_conv1/kernel/Assignlayer_conv1/kernel/read:02/layer_conv1/kernel/Initializer/random_uniform:08
n
layer_conv1/bias:0layer_conv1/bias/Assignlayer_conv1/bias/read:02$layer_conv1/bias/Initializer/zeros:08

layer_conv2/kernel:0layer_conv2/kernel/Assignlayer_conv2/kernel/read:02/layer_conv2/kernel/Initializer/random_uniform:08
n
layer_conv2/bias:0layer_conv2/bias/Assignlayer_conv2/bias/read:02$layer_conv2/bias/Initializer/zeros:08
w
layer_fc1/kernel:0layer_fc1/kernel/Assignlayer_fc1/kernel/read:02-layer_fc1/kernel/Initializer/random_uniform:08
f
layer_fc1/bias:0layer_fc1/bias/Assignlayer_fc1/bias/read:02"layer_fc1/bias/Initializer/zeros:08
s
word_embeddings:0word_embeddings/Assignword_embeddings/read:02,word_embeddings/Initializer/random_uniform:08
�
rnn/basic_rnn_cell/kernel:0 rnn/basic_rnn_cell/kernel/Assign rnn/basic_rnn_cell/kernel/read:026rnn/basic_rnn_cell/kernel/Initializer/random_uniform:08
�
rnn/basic_rnn_cell/bias:0rnn/basic_rnn_cell/bias/Assignrnn/basic_rnn_cell/bias/read:02+rnn/basic_rnn_cell/bias/Initializer/zeros:08
�
layer_rnn_fc_1/kernel:0layer_rnn_fc_1/kernel/Assignlayer_rnn_fc_1/kernel/read:022layer_rnn_fc_1/kernel/Initializer/random_uniform:08
z
layer_rnn_fc_1/bias:0layer_rnn_fc_1/bias/Assignlayer_rnn_fc_1/bias/read:02'layer_rnn_fc_1/bias/Initializer/zeros:08
�
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:08
�
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:08
�
#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign(batch_normalization_1/moving_mean/read:025batch_normalization_1/moving_mean/Initializer/zeros:0
�
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign,batch_normalization_1/moving_variance/read:028batch_normalization_1/moving_variance/Initializer/ones:0

layer_dnn_1/kernel:0layer_dnn_1/kernel/Assignlayer_dnn_1/kernel/read:02/layer_dnn_1/kernel/Initializer/random_uniform:08
n
layer_dnn_1/bias:0layer_dnn_1/bias/Assignlayer_dnn_1/bias/read:02$layer_dnn_1/bias/Initializer/zeros:08

layer_dnn_2/kernel:0layer_dnn_2/kernel/Assignlayer_dnn_2/kernel/read:02/layer_dnn_2/kernel/Initializer/random_uniform:08
n
layer_dnn_2/bias:0layer_dnn_2/bias/Assignlayer_dnn_2/bias/read:02$layer_dnn_2/bias/Initializer/zeros:08
�
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02.batch_normalization_2/gamma/Initializer/ones:08
�
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02.batch_normalization_2/beta/Initializer/zeros:08
�
#batch_normalization_2/moving_mean:0(batch_normalization_2/moving_mean/Assign(batch_normalization_2/moving_mean/read:025batch_normalization_2/moving_mean/Initializer/zeros:0
�
'batch_normalization_2/moving_variance:0,batch_normalization_2/moving_variance/Assign,batch_normalization_2/moving_variance/read:028batch_normalization_2/moving_variance/Initializer/ones:0
�
layer_length_conv1/kernel:0 layer_length_conv1/kernel/Assign layer_length_conv1/kernel/read:026layer_length_conv1/kernel/Initializer/random_uniform:08
�
layer_length_conv1/bias:0layer_length_conv1/bias/Assignlayer_length_conv1/bias/read:02+layer_length_conv1/bias/Initializer/zeros:08
�
layer_length_conv2/kernel:0 layer_length_conv2/kernel/Assign layer_length_conv2/kernel/read:026layer_length_conv2/kernel/Initializer/random_uniform:08
�
layer_length_conv2/bias:0layer_length_conv2/bias/Assignlayer_length_conv2/bias/read:02+layer_length_conv2/bias/Initializer/zeros:08
�
layer_length_fc1/kernel:0layer_length_fc1/kernel/Assignlayer_length_fc1/kernel/read:024layer_length_fc1/kernel/Initializer/random_uniform:08
�
layer_length_fc1/bias:0layer_length_fc1/bias/Assignlayer_length_fc1/bias/read:02)layer_length_fc1/bias/Initializer/zeros:08
�
layer_combine_fc_cnn1d/kernel:0$layer_combine_fc_cnn1d/kernel/Assign$layer_combine_fc_cnn1d/kernel/read:02:layer_combine_fc_cnn1d/kernel/Initializer/random_uniform:08
�
layer_combine_fc_cnn1d/bias:0"layer_combine_fc_cnn1d/bias/Assign"layer_combine_fc_cnn1d/bias/read:02/layer_combine_fc_cnn1d/bias/Initializer/zeros:08
�
layer_combine_fc_x/kernel:0 layer_combine_fc_x/kernel/Assign layer_combine_fc_x/kernel/read:026layer_combine_fc_x/kernel/Initializer/random_uniform:08
�
layer_combine_fc_x/bias:0layer_combine_fc_x/bias/Assignlayer_combine_fc_x/bias/read:02+layer_combine_fc_x/bias/Initializer/zeros:08
�
layer_combine_fc_y/kernel:0 layer_combine_fc_y/kernel/Assign layer_combine_fc_y/kernel/read:026layer_combine_fc_y/kernel/Initializer/random_uniform:08
�
layer_combine_fc_y/bias:0layer_combine_fc_y/bias/Assignlayer_combine_fc_y/bias/read:02+layer_combine_fc_y/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
�
 batch_normalization/gamma/Adam:0%batch_normalization/gamma/Adam/Assign%batch_normalization/gamma/Adam/read:022batch_normalization/gamma/Adam/Initializer/zeros:0
�
"batch_normalization/gamma/Adam_1:0'batch_normalization/gamma/Adam_1/Assign'batch_normalization/gamma/Adam_1/read:024batch_normalization/gamma/Adam_1/Initializer/zeros:0
�
batch_normalization/beta/Adam:0$batch_normalization/beta/Adam/Assign$batch_normalization/beta/Adam/read:021batch_normalization/beta/Adam/Initializer/zeros:0
�
!batch_normalization/beta/Adam_1:0&batch_normalization/beta/Adam_1/Assign&batch_normalization/beta/Adam_1/read:023batch_normalization/beta/Adam_1/Initializer/zeros:0
�
layer_conv1/kernel/Adam:0layer_conv1/kernel/Adam/Assignlayer_conv1/kernel/Adam/read:02+layer_conv1/kernel/Adam/Initializer/zeros:0
�
layer_conv1/kernel/Adam_1:0 layer_conv1/kernel/Adam_1/Assign layer_conv1/kernel/Adam_1/read:02-layer_conv1/kernel/Adam_1/Initializer/zeros:0
�
layer_conv1/bias/Adam:0layer_conv1/bias/Adam/Assignlayer_conv1/bias/Adam/read:02)layer_conv1/bias/Adam/Initializer/zeros:0
�
layer_conv1/bias/Adam_1:0layer_conv1/bias/Adam_1/Assignlayer_conv1/bias/Adam_1/read:02+layer_conv1/bias/Adam_1/Initializer/zeros:0
�
layer_conv2/kernel/Adam:0layer_conv2/kernel/Adam/Assignlayer_conv2/kernel/Adam/read:02+layer_conv2/kernel/Adam/Initializer/zeros:0
�
layer_conv2/kernel/Adam_1:0 layer_conv2/kernel/Adam_1/Assign layer_conv2/kernel/Adam_1/read:02-layer_conv2/kernel/Adam_1/Initializer/zeros:0
�
layer_conv2/bias/Adam:0layer_conv2/bias/Adam/Assignlayer_conv2/bias/Adam/read:02)layer_conv2/bias/Adam/Initializer/zeros:0
�
layer_conv2/bias/Adam_1:0layer_conv2/bias/Adam_1/Assignlayer_conv2/bias/Adam_1/read:02+layer_conv2/bias/Adam_1/Initializer/zeros:0
�
layer_fc1/kernel/Adam:0layer_fc1/kernel/Adam/Assignlayer_fc1/kernel/Adam/read:02)layer_fc1/kernel/Adam/Initializer/zeros:0
�
layer_fc1/kernel/Adam_1:0layer_fc1/kernel/Adam_1/Assignlayer_fc1/kernel/Adam_1/read:02+layer_fc1/kernel/Adam_1/Initializer/zeros:0
x
layer_fc1/bias/Adam:0layer_fc1/bias/Adam/Assignlayer_fc1/bias/Adam/read:02'layer_fc1/bias/Adam/Initializer/zeros:0
�
layer_fc1/bias/Adam_1:0layer_fc1/bias/Adam_1/Assignlayer_fc1/bias/Adam_1/read:02)layer_fc1/bias/Adam_1/Initializer/zeros:0
�
$layer_combine_fc_cnn1d/kernel/Adam:0)layer_combine_fc_cnn1d/kernel/Adam/Assign)layer_combine_fc_cnn1d/kernel/Adam/read:026layer_combine_fc_cnn1d/kernel/Adam/Initializer/zeros:0
�
&layer_combine_fc_cnn1d/kernel/Adam_1:0+layer_combine_fc_cnn1d/kernel/Adam_1/Assign+layer_combine_fc_cnn1d/kernel/Adam_1/read:028layer_combine_fc_cnn1d/kernel/Adam_1/Initializer/zeros:0
�
"layer_combine_fc_cnn1d/bias/Adam:0'layer_combine_fc_cnn1d/bias/Adam/Assign'layer_combine_fc_cnn1d/bias/Adam/read:024layer_combine_fc_cnn1d/bias/Adam/Initializer/zeros:0
�
$layer_combine_fc_cnn1d/bias/Adam_1:0)layer_combine_fc_cnn1d/bias/Adam_1/Assign)layer_combine_fc_cnn1d/bias/Adam_1/read:026layer_combine_fc_cnn1d/bias/Adam_1/Initializer/zeros:0
�
 layer_combine_fc_x/kernel/Adam:0%layer_combine_fc_x/kernel/Adam/Assign%layer_combine_fc_x/kernel/Adam/read:022layer_combine_fc_x/kernel/Adam/Initializer/zeros:0
�
"layer_combine_fc_x/kernel/Adam_1:0'layer_combine_fc_x/kernel/Adam_1/Assign'layer_combine_fc_x/kernel/Adam_1/read:024layer_combine_fc_x/kernel/Adam_1/Initializer/zeros:0
�
layer_combine_fc_x/bias/Adam:0#layer_combine_fc_x/bias/Adam/Assign#layer_combine_fc_x/bias/Adam/read:020layer_combine_fc_x/bias/Adam/Initializer/zeros:0
�
 layer_combine_fc_x/bias/Adam_1:0%layer_combine_fc_x/bias/Adam_1/Assign%layer_combine_fc_x/bias/Adam_1/read:022layer_combine_fc_x/bias/Adam_1/Initializer/zeros:0
�
 layer_combine_fc_y/kernel/Adam:0%layer_combine_fc_y/kernel/Adam/Assign%layer_combine_fc_y/kernel/Adam/read:022layer_combine_fc_y/kernel/Adam/Initializer/zeros:0
�
"layer_combine_fc_y/kernel/Adam_1:0'layer_combine_fc_y/kernel/Adam_1/Assign'layer_combine_fc_y/kernel/Adam_1/read:024layer_combine_fc_y/kernel/Adam_1/Initializer/zeros:0
�
layer_combine_fc_y/bias/Adam:0#layer_combine_fc_y/bias/Adam/Assign#layer_combine_fc_y/bias/Adam/read:020layer_combine_fc_y/bias/Adam/Initializer/zeros:0
�
 layer_combine_fc_y/bias/Adam_1:0%layer_combine_fc_y/bias/Adam_1/Assign%layer_combine_fc_y/bias/Adam_1/read:022layer_combine_fc_y/bias/Adam_1/Initializer/zeros:0"
ready_op


concat:0"J
savers@>
<
save/Const:0save/Identity:0save/restore_all (5 @F8"
losses


Mean:0"2
global_step_read_op_cache

global_step/add:0"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"
train_op

Adam""
	iterators

OneShotIterator:0"&

summary_op

Merge/MergeSummary:0�;�3       � V	�A/,� �A:($./checkpoints_model_cnn1d/model.ckpt�W}       mS+		��;,� �A:ue�-       <A��	��;,� �A* 


accuracy_1  �=

loss�'fA��%       �6�	D�-� �Ae*

global_step/secS�Aa�-       <A��	�-� �Ae* 


accuracy_1�E�>

losst'	@p���&       sO� 	7��-� �A�*

global_step/sec�o�AL��o.       ��W�	��-� �A�* 


accuracy_1z��>

lossԶ@f[�%&       sO� 	�~�.� �A�*

global_step/sec@�A0��4.       ��W�	؆�.� �A�* 


accuracy_1!��>

lossP��?�<��&       sO� 	^�/� �A�*

global_step/sec��A�?�.       ��W�	5��/� �A�* 


accuracy_1���>

lossn��?�d��&       sO� 	H?j0� �A�*

global_step/sec���A����.       ��W�	�Hj0� �A�* 


accuracy_1���>

loss^��?Rց�&       sO� 	��81� �A�*

global_step/secL<�Ak��.       ��W�	ݍ81� �A�* 


accuracy_1Pq?

loss0{�?Ij�j&       sO� 	p2� �A�*

global_step/sec6��AkX�.       ��W�	=$2� �A�* 


accuracy_16?

loss�q�?f($&       sO� 	�gD3� �A�*

global_step/sec�Ar�i�.       ��W�	RqD3� �A�* 


accuracy_19�?

loss�P?Z7�C&       sO� 	�v*4� �A�*

global_step/sec��A�LM	.       ��W�	~*4� �A�* 


accuracy_1|�?

loss�Ne?W��&       sO� 	\|5� �A�*

global_step/sec�m�A|@�.       ��W�	��5� �A�* 


accuracy_1m�?

loss�xa?� Ř&       sO� 	���5� �A�*

global_step/sec�AI�9�.       ��W�	}�5� �A�* 


accuracy_1�W?

lossFmp?_�*�&       sO� 	?3�6� �A�	*

global_step/sec���A$�$I.       ��W�	6<�6� �A�	* 


accuracy_1�?

loss.�.?��k5&       sO� 	��7� �A�
*

global_step/sec
��A�]�.       ��W�	8�7� �A�
* 


accuracy_1�?

loss��-?I�;Y&       sO� 	�T8� �A�
*

global_step/secpS�A�w�1.       ��W�	��T8� �A�
* 


accuracy_1m�?

lossxv?D)h&       sO� 	�P9� �A�*

global_step/sec`�A���.       ��W�	��P9� �A�* 


accuracy_1�"?

loss?�X?'3��&       sO� 	�/:� �A�*

global_step/sec��A.�=�.       ��W�	�5:� �A�* 


accuracy_1�7%?

lossI��>]̀c&       sO� 	T�:� �A�*

global_step/secya�A�*$t.       ��W�	$�:� �A�* 


accuracy_1Hp'?

lossY�2?�p~&       sO� 	�/�;� �A�*

global_step/secA��A�l0�.       ��W�	�8�;� �A�* 


accuracy_10&)?

loss'2"?��QP&       sO� 	�b�<� �A�*

global_step/sec&�A���.       ��W�	�i�<� �A�* 


accuracy_1��*?

loss��?;�&       sO� 	W�^=� �A�*

global_step/sec�r�A�K�.       ��W�	��^=� �A�* 


accuracy_1-u,?

lossP#�>��&       sO� 	� />� �A�*

global_step/sec���A���.       ��W�	!(/>� �A�* 


accuracy_1��-?

loss(jI?P��&       sO� 	u��>� �A�*

global_step/sec�x�A�f_o.       ��W�	���>� �A�* 


accuracy_1��/?

loss&.?���s&       sO� 	�%�?� �A�*

global_step/sec���A��)�.       ��W�	 ,�?� �A�* 


accuracy_1p-1?

loss��d?^4&       sO� 	b�@� �A�*

global_step/sec�A��d�.       ��W�	/j�@� �A�* 


accuracy_1Ը2?

loss F�>t9��&       sO� 	2jmA� �A�*

global_step/sec��A��kw.       ��W�	�omA� �A�* 


accuracy_1f4?

lossJY�?�f"�&       sO� 	76=B� �A�*

global_step/sece�A��(.       ��W�	�>=B� �A�* 


accuracy_10�5?

loss��>|�N&       sO� 	�	C� �A�*

global_step/sec��A\&X.       ��W�	�C� �A�* 


accuracy_1��6?

loss��S?����&       sO� 	S��C� �A�*

global_step/sec��Aӯ�5.       ��W�	���C� �A�* 


accuracy_1  8?

loss.?utK�&       sO� 	e��D� �A�*

global_step/secU��Ae�F�.       ��W�	���D� �A�* 


accuracy_1� 9?

loss��.?���G&       sO� 	��{E� �A�*

global_step/sec���A�e��.       ��W�	�{E� �A�* 


accuracy_1�4:?

loss��>QL��&       sO� 	�cKF� �A�*

global_step/secXM�A��F.       ��W�	�jKF� �A�* 


accuracy_1X;?

lossɞD?��ˮ&       sO� 		�G� �A�*

global_step/sec:��A��H.       ��W�	J�G� �A�* 


accuracy_16�<?

losszC=?@���&       sO� 	1��G� �A�*

global_step/sec�L�A�P�.       ��W�	+��G� �A�* 


accuracy_1��=?

loss��
?�e�&       sO� 	���H� �A�*

global_step/sec��A��l�.       ��W�	ĻH� �A�* 


accuracy_1�y>?

loss�%?���&       sO� 	M��I� �A�*

global_step/sec�m�A���O.       ��W�	S��I� �A�* 


accuracy_1t???

lossn?N&�&       sO� 	�XJ� �A�*

global_step/sec�h�A�0��.       ��W�	u�XJ� �A�* 


accuracy_1�8@?

loss!�^>�" &       sO� 	��'K� �A�*

global_step/sec��AQ�.       ��W�	�'K� �A�* 


accuracy_1sA?

lossG�?��[&       sO� 	AF�K� �A�*

global_step/sec ��A���z.       ��W�	�M�K� �A�* 


accuracy_1�A?

lossХ�>�� \&       sO� 	���L� �A�*

global_step/sec��AԺȔ.       ��W�	Y��L� �A�* 


accuracy_1B?

loss� ?�6�_&       sO� 	��M� �A�*

global_step/secg��A��F�.       ��W�	�	�M� �A�* 


accuracy_1�EC?

loss�>P�(&       sO� 	��hN� �A� *

global_step/secʄ�A��e.       ��W�	��hN� �A� * 


accuracy_1��C?

loss?���&       sO� 	8�9O� �A� *

global_step/secD��A4�~+.       ��W�	T�9O� �A� * 


accuracy_1J�D?

loss��>�[�&       sO� 	��
P� �A�!*

global_step/sec�$�A�j�.       ��W�	n�
P� �A�!* 


accuracy_1�E?

loss��=���&       sO� 	c?�P� �A�"*

global_step/sec�u�A>&��.       ��W�	uE�P� �A�"* 


accuracy_1�pF?

lossV�>��&       sO� 	�j�Q� �A�#*

global_step/sec���A��M.       ��W�	�r�Q� �A�#* 


accuracy_1�3G?

loss��>]*��&       sO� 	vd}R� �A�#*

global_step/sec��A�v��.       ��W�	�k}R� �A�#* 


accuracy_1��G?

lossz?f@&       sO� 	p'NS� �A�$*

global_step/secWA�A���1.       ��W�	�.NS� �A�$* 


accuracy_1�_H?

loss�>��W�&       sO� 	5T� �A�%*

global_step/sec�&�A0�~�.       ��W�	�T� �A�%* 


accuracy_1h�H?

loss�x�>[�&       sO� 	��T� �A�&*

global_step/secп�Ai8ĵ.       ��W�	��T� �A�&* 


accuracy_1A�I?

loss�Y&>��2&       sO� 	R��U� �A�'*

global_step/sec/9�A�y�}.       ��W�	{��U� �A�'* 


accuracy_1>J?

loss\P.?��%&       sO� 	y�V� �A�'*

global_step/sec�{�AG`��.       ��W�	g&�V� �A�'* 


accuracy_1Y�J?

lossL|�>m��&       sO� 	��eW� �A�(*

global_step/sec���A�dJ.       ��W�	�fW� �A�(* 


accuracy_1QK?

lossl�O>Ѥ- &       sO� 	�(7X� �A�)*

global_step/sec���AE.       ��W�	717X� �A�)* 


accuracy_1�L?

losspl%?V�)�&       sO� 	VpY� �A�**

global_step/secC��A�
�A.       ��W�	)vY� �A�** 


accuracy_1��L?

loss�>ͽ��&       sO� 	��Y� �A�**

global_step/sec^��A�pѕ.       ��W�	��Y� �A�** 


accuracy_11M?

loss�֨>Kl&       sO� 	ԛ�Z� �A�+*

global_step/sec�&�A1A'�.       ��W�	���Z� �A�+* 


accuracy_1q�M?

loss��>�x�q&       sO� 	�*~[� �A�,*

global_step/seco�A8�f.       ��W�	34~[� �A�,* 


accuracy_1sN?

loss��j>(噯&       sO� 	y-M\� �A�-*

global_step/sec�T�A�.       ��W�	�4M\� �A�-* 


accuracy_1A|N?

lossH�q>(O F&       sO� 	�]� �A�.*

global_step/sec�[�A��sO.       ��W�	O�]� �A�.* 


accuracy_1s�N?

loss���>��f&       sO� 	�6�]� �A�.*

global_step/sec��A�Ta�.       ��W�	,>�]� �A�.* 


accuracy_1o\O?

loss��g>�B+&       sO� 	�F�^� �A�/*

global_step/secf�AQ�H.       ��W�	�N�^� �A�/* 


accuracy_1!�O?

loss��>,���&       sO� 	��_� �A�0*

global_step/sec���A>?5v.       ��W�	��_� �A�0* 


accuracy_18P?

loss��>���?&       sO� 	��]`� �A�1*

global_step/sec�.�A�eGQ.       ��W�	M�]`� �A�1* 


accuracy_1 �P?

loss��=oD��&       sO� 	w<.a� �A�2*

global_step/secp��A��H�.       ��W�	�B.a� �A�2* 


accuracy_1�5Q?

loss�6�>I@�v&       sO� 	,��a� �A�2*

global_step/sec/��Aj��i.       ��W�	%��a� �A�2* 


accuracy_1��Q?

loss3B>ʪ(*&       sO� 	G��b� �A�3*

global_step/sec���A�+�.       ��W�	*��b� �A�3* 


accuracy_1��Q?

loss<+�>��XI&       sO� 	�ԟc� �A�4*

global_step/sec���AGuS.       ��W�	/ݟc� �A�4* 


accuracy_1T\R?

loss2g�>�@�X&       sO� 	��pd� �A�5*

global_step/sec;�A�4�.       ��W�	�pd� �A�5* 


accuracy_1��R?

loss0��>Ⱦ�&       sO� 	0�Ae� �A�5*

global_step/sec��A����.       ��W�	)�Ae� �A�5* 


accuracy_1)&S?

loss��>�OQ8&       sO� 	�_f� �A�6*

global_step/sec,��A��.       ��W�	�hf� �A�6* 


accuracy_1]�S?

loss6R�=��YA&       sO� 	w��f� �A�7*

global_step/sec���AJ��1.       ��W�	9��f� �A�7* 


accuracy_1��S?

lossq>>arQ*&       sO� 	��g� �A�8*

global_step/secd��A����.       ��W�	��g� �A�8* 


accuracy_1zYT?

lossH�^>A2��&       sO� 	9E�h� �A�9*

global_step/secz��A�@,$.       ��W�	M�h� �A�9* 


accuracy_1��T?

lossV
>x���&       sO� 	��Zi� �A�9*

global_step/sec�N�A�:�,.       ��W�	�Zi� �A�9* 


accuracy_1/U?

lossb�]>�7�&       sO� 	��+j� �A�:*

global_step/sec��AA�\�.       ��W�	��+j� �A�:* 


accuracy_1l^U?

loss?N>��/�&       sO� 	��j� �A�;*

global_step/sec���A@Z{.       ��W�	[�j� �A�;* 


accuracy_1��U?

lossxC�>�`�&       sO� 	�}�k� �A�<*

global_step/sec�h�AP<�.       ��W�	��k� �A�<* 


accuracy_1�U?

loss�E<���&       sO� 	�M�l� �A�<*

global_step/sec'2�A)�b.       ��W�	�T�l� �A�<* 


accuracy_1Y:V?

loss8�P>}�i!&       sO� 	�lom� �A�=*

global_step/sec��As|k�.       ��W�	�som� �A�=* 


accuracy_1��V?

loss�s�>4���&       sO� 	�@n� �A�>*

global_step/secki�A�*�;.       ��W�	@n� �A�>* 


accuracy_1i�V?

loss!��<!�2}&       sO� 	��o� �A�?*

global_step/sec+%�A����.       ��W�	�o� �A�?* 


accuracy_1�W?

lossz.�=�p�&       sO� 	�J�o� �A�@*

global_step/secD��A�B\s.       ��W�	�Q�o� �A�@* 


accuracy_1�{W?

loss 2k>��K&       sO� 	��p� �A�@*

global_step/sec�)�A��'`.       ��W�	B��p� �A�@* 


accuracy_1Q�W?

loss8�a>�k�(&       sO� 	e��q� �A�A*

global_step/sec��Aq֮X.       ��W�	F��q� �A�A* 


accuracy_1"X?

loss�>��&       sO� 	3�Wr� �A�B*

global_step/sec5��A{���.       ��W�	�Wr� �A�B* 


accuracy_1|gX?

loss0z�>��O�&       sO� 	)s� �A�C*

global_step/sec��A�E�.       ��W�	�)s� �A�C* 


accuracy_1��X?

loss��t=�FM\&       sO� 	l@�s� �A�C*

global_step/sec��AT���.       ��W�	]H�s� �A�C* 


accuracy_1�*Y?

loss��`=�]��&       sO� 	�L�t� �A�D*

global_step/sec0��Aca��.       ��W�	�R�t� �A�D* 


accuracy_1=}Y?

loss\�==]Q&       sO� 	�u� �A�E*

global_step/sec#��A6�?.       ��W�	���u� �A�E* 


accuracy_1��Y?

lossU�=�F��&       sO� 	`�kv� �A�F*

global_step/sec@��AKIc�.       ��W�	9lv� �A�F* 


accuracy_1Z?

loss���>s���&       sO� 	o�<w� �A�G*

global_step/secj~�A��c.       ��W�	F�<w� �A�G* 


accuracy_1�AZ?

loss�[�>�d8�&       sO� 	w�x� �A�G*

global_step/sec1�AG̼�.       ��W�	ӌx� �A�G* 


accuracy_1��Z?

loss��y?0�eK&       sO� 	���x� �A�H*

global_step/sec�*�AT�+.       ��W�	#��x� �A�H* 


accuracy_1U�Z?

loss���>��&       sO� 	KW�y� �A�I*

global_step/sec�Z�A�;2h.       ��W�	^_�y� �A�I* 


accuracy_1�[?

loss�[�=٘~&       sO� 	��{z� �A�J*

global_step/secS��A��c�.       ��W�	~�{z� �A�J* 


accuracy_1�C[?

loss��K>�6~&       sO� 	F�K{� �A�K*

global_step/sec��A��f.       ��W�	ݘK{� �A�K* 


accuracy_13�[?

loss� �>#�
�&       sO� 	�@|� �A�K*

global_step/secV��A���.       ��W�	KH|� �A�K* 


accuracy_1o�[?

loss(Q!>P��T&       sO� 	��|� �A�L*

global_step/sec��AD�v.       ��W�	��|� �A�L* 


accuracy_1O\?

loss\ =����&       sO� 	Q��}� �A�M*

global_step/secx��Ae���.       ��W�	߹�}� �A�M* 


accuracy_1;E\?

loss�<�=q�~9&       sO� 	k�~� �A�N*

global_step/sec��A��G.       ��W�	V��~� �A�N* 


accuracy_1I�\?

loss|�<���&       sO� 	��]� �A�N*

global_step/sec&�A�|N.       ��W�	)�]� �A�N* 


accuracy_1��\?

loss�0�=���&       sO� 	d�.�� �A�O*

global_step/sec���A�0�.       ��W�	��.�� �A�O* 


accuracy_1�]?

lossBUG>�^�&       sO� 	g���� �A�P*

global_step/sec���A���.       ��W�	����� �A�P* 


accuracy_1�L]?

lossd��<�(#b&       sO� 	��ρ� �A�Q*

global_step/secwh�A�2��.       ��W�	�ρ� �A�Q* 


accuracy_1|�]?

loss@Y>V��&       sO� 	�ߟ�� �A�R*

global_step/sec5��AYȾ.       ��W�	�柂� �A�R* 


accuracy_1(�]?

loss��>Q�yx&       sO� 	9o�� �A�R*

global_step/sec���A�&�.       ��W�	J@o�� �A�R* 


accuracy_1X^?

loss#V!>oW��&       sO� 	y7?�� �A�S*

global_step/seci)�AN��.       ��W�	!@?�� �A�S* 


accuracy_1'3^?

lossx<3���&       sO� 	��� �A�T*

global_step/sec�2�A�5i�.       ��W�	���� �A�T* 


accuracy_1vl^?

loss���=��:h&       sO� 	��⅍ �A�U*

global_step/sec���A[�s�.       ��W�	�⅍ �A�U* 


accuracy_1��^?

lossbV�>�D��&       sO� 	�-��� �A�U*

global_step/sec���As��<.       ��W�	5��� �A�U* 


accuracy_1�^?

losshB�>;��&       sO� 	�� �A�V*

global_step/seco��AX�l9.       ��W�	���� �A�V* 


accuracy_1%_?

loss�$ >�(�)&       sO� 	a2T�� �A�W*

global_step/sec���AL�.       ��W�	9T�� �A�W* 


accuracy_1,@_?

loss�eP> 91�&       sO� 	ڒ(�� �A�X*

global_step/sec�Aq=�.       ��W�	w�(�� �A�X* 


accuracy_1av_?

loss���<��1&       sO� 	����� �A�Y*

global_step/sec���A���.       ��W�	���� �A�Y* 


accuracy_1ة_?

loss~g,>5�i&       sO� 	Sʊ� �A�Y*

global_step/secs��A��.       ��W�	�ʊ� �A�Y* 


accuracy_1��_?

loss�>y*:9&       sO� 	𕚋� �A�Z*

global_step/sec�|�A;�#�.       ��W�	󛚋� �A�Z* 


accuracy_1�`?

loss?Z�=�]�J&       sO� 	1�k�� �A�[*

global_step/sec}��A�mvl.       ��W�	��k�� �A�[* 


accuracy_14K`?

lossE>,>���,&       sO� 	��<�� �A�\*

global_step/secx��ABx��.       ��W�	x�<�� �A�\* 


accuracy_1cy`?

lossu&>����&       sO� 	���� �A�\*

global_step/sec��AsE��.       ��W�	���� �A�\* 


accuracy_13�`?

loss�1�<,=N�&       sO� 	u>ߎ� �A�]*

global_step/sec*R�A��^.       ��W�	^Fߎ� �A�]* 


accuracy_1��`?

lossr�=I[&       sO� 	�l��� �A�^*

global_step/sec���A0!b�.       ��W�	zs��� �A�^* 


accuracy_1��`?

loss�?>���&       sO� 	�O��� �A�_*

global_step/sec��A��m.       ��W�	IW��� �A�_* 


accuracy_1-"a?

loss�UM=�ƫ�&       sO� 	��R�� �A�`*

global_step/sec@i�AKk�{.       ��W�	��R�� �A�`* 


accuracy_1Za?

loss"��<U�:&       sO� 	Bf$�� �A�`*

global_step/sectp�A���k.       ��W�	{n$�� �A�`* 


accuracy_1k�a?

loss��a;�\��&       sO� 	y���� �A�a*

global_step/sec��Au%�.       ��W�	����� �A�a* 


accuracy_1w�a?

loss,�t>J���&       sO� 	��Ɠ� �A�b*

global_step/sec�6�A�M�E.       ��W�	
�Ɠ� �A�b* 


accuracy_1�a?

loss=v�g&       sO� 	WƖ�� �A�c*

global_step/secx��A?��F.       ��W�	!Ζ�� �A�c* 


accuracy_1vb?

lossX��=��&       sO� 	)jg�� �A�d*

global_step/sec�e�A��%.       ��W�	jqg�� �A�d* 


accuracy_1Z<b?

loss�k�=#Rm�&       sO� 	��7�� �A�d*

global_step/sec���A�v6.       ��W�	�7�� �A�d* 


accuracy_1qb?

loss�]�=����&       sO� 	�n�� �A�e*

global_step/sec{O�A/�.       ��W�	�x�� �A�e* 


accuracy_1��b?

loss�F=4
x&       sO� 	�ٗ� �A�f*

global_step/sec�_�A>��.       ��W�	?�ٗ� �A�f* 


accuracy_1*�b?

loss��=�;�&       sO� 	Rө�� �A�g*

global_step/secB"�AS].       ��W�	�ک�� �A�g* 


accuracy_1��b?

loss�3>�V�&       sO� 	g�y�� �A�g*

global_step/sec.�AG���.       ��W�	g�y�� �A�g* 


accuracy_1Yc?

loss��x<�t��&       sO� 	�WJ�� �A�h*

global_step/secN��A���.       ��W�	�_J�� �A�h* 


accuracy_11c?

loss��<j�@�&       sO� 	�!�� �A�i*

global_step/sec�g�Ao�$u.       ��W�	�)�� �A�i* 


accuracy_1�[c?

loss5XR<�7$�&       sO� 	�雍 �A�j*

global_step/sec�|�A6�.       ��W�	�雍 �A�j* 


accuracy_1��c?

lossX+=t)$C&       sO� 	�ܺ�� �A�k*

global_step/sec���AA��.       ��W�	�㺜� �A�k* 


accuracy_1��c?

lossv�>���&       sO� 	󬉝� �A�k*

global_step/sec���A�_G.       ��W�	����� �A�k* 


accuracy_1I�c?

loss���=�k9�&       sO� 	�gY�� �A�l*

global_step/secly�AT�i.       ��W�	�mY�� �A�l* 


accuracy_1`�c?

loss܍�=�3J&       sO� 	��(�� �A�m*

global_step/sec���A�1.       ��W�	��(�� �A�m* 


accuracy_1�&d?

loss��<�7܁&       sO� 	:���� �A�n*

global_step/sec���A���.       ��W�	T���� �A�n* 


accuracy_14Ld?

loss��=4��&       sO� 	;�Ơ� �A�n*

global_step/sec(�AΪ�h.       ��W�	��Ơ� �A�n* 


accuracy_1�vd?

loss�P�=`^��&       sO� 	z@��� �A�o*

global_step/secC��A��by.       ��W�	�G��� �A�o* 


accuracy_1 �d?

lossK'=�&       sO� 	Ƒh�� �A�p*

global_step/sec�p�A����.       ��W�	�h�� �A�p* 


accuracy_1��d?

lossH�=��&       sO� 	�G8�� �A�q*

global_step/secq�AN�y.       ��W�	�P8�� �A�q* 


accuracy_1��d?

loss%�>bk&       sO� 	[��� �A�r*

global_step/secǮ�A���.       ��W�	��� �A�r* 


accuracy_1��d?

lossH�q>$�C&       sO� 	�}פ� �A�r*

global_step/secݎ�A�W�D.       ��W�	�פ� �A�r* 


accuracy_1v&e?

loss��6<p�4&       sO� 	Y���� �A�s*

global_step/sec�#�A�I��.       ��W�	`���� �A�s* 


accuracy_11Ke?

loss�1<첯
&       sO� 	�y�� �A�t*

global_step/sec5}�A΃S�.       ��W�	h�y�� �A�t* 


accuracy_1ce?

loss���=oagS&       sO� 	O�H�� �A�u*

global_step/secwW�A���.       ��W�	-�H�� �A�u* 


accuracy_1s�e?

losse1`>��J&       sO� 	��� �A�u*

global_step/sec(�A&�w:.       ��W�	��� �A�u* 


accuracy_1�e?

loss��<a#�]&       sO� 	;�稍 �A�v*

global_step/sec�^�A����.       ��W�	�稍 �A�v* 


accuracy_1f�e?

loss��=�m��&       sO� 	�:��� �A�w*

global_step/sec��Au��.       ��W�	C��� �A�w* 


accuracy_19�e?

loss�m}>i޸*&       sO� 	����� �A�x*

global_step/sec��A��.       ��W�	j���� �A�x* 


accuracy_1X�e?

loss��%=W<��&       sO� 	e�V�� �A�y*

global_step/secC��A�z;.       ��W�	��V�� �A�y* 


accuracy_1 "f?

lossm��="�Y�&       sO� 	 �%�� �A�y*

global_step/sec<��ASF6�.       ��W�	�%�� �A�y* 


accuracy_1=Cf?

loss�k�<�q��&       sO� 	�P��� �A�z*

global_step/sec��A7��.       ��W�	�V��� �A�z* 


accuracy_1�bf?

loss�>�=R�H%&       sO� 	��ĭ� �A�{*

global_step/sec���AC��*.       ��W�	�ĭ� �A�{* 


accuracy_1Ef?

loss��o;�ަ&       sO� 	ݓ�� �A�|*

global_step/sec�:�A?.       ��W�	�䓮� �A�|* 


accuracy_1��f?

lossl�$>��K&       sO� 	�b�� �A�}*

global_step/sec��A�k��.       ��W�	��b�� �A�}* 


accuracy_1ιf?

loss�g$=Fxǁ&       sO� 	��1�� �A�}*

global_step/secZx�Aۉ~.       ��W�	!�1�� �A�}* 


accuracy_1��f?

loss
�=��n�&       sO� 	t� �� �A�~*

global_step/secjF�A]�	+.       ��W�	C� �� �A�~* 


accuracy_16�f?

loss��C>s���&       sO� 	bRб� �A�*

global_step/sec�~�Ap��.       ��W�	�Xб� �A�* 


accuracy_1xg?

loss|A�;n�X�'       ��F	*'��� �A��*

global_step/sec{Z�A+!��/       m]P	�.��� �A��* 


accuracy_1�:g?

loss��9;��]'       ��F	,p�� �A��*

global_step/sec�!�AWd��/       m]P	�6p�� �A��* 


accuracy_1LWg?

loss�B�=�?��'       ��F	iC�� �Aف*

global_step/secea�A�А}/       m]P	�pC�� �Aف* 


accuracy_1
lg?

loss�5�=F='       ��F	�0'�� �A��*

global_step/sec��A�&?X/       m]P	�7'�� �A��* 


accuracy_17�g?

loss�&�<�=)�'       ��F	
��� �A��*

global_step/sec�*�AR�/       m]P	���� �A��* 


accuracy_1h�g?

lossVOT<�fv�'       ��F	�7� �A��*

global_step/secR�A�Ϲ'/       m]P	�C� �A��* 


accuracy_1r�g?

loss��"<���V'       ��F	|귍 �A�*

global_step/sec���A.E7�/       m]P	�귍 �A�* 


accuracy_1y�g?

loss�f =���'       ��F	?�ĸ� �Aͅ*

global_step/sec���A7��/       m]P	�ĸ� �Aͅ* 


accuracy_1�g?

loss
@R=~��n'       ��F	`�ù� �A��*

global_step/sec��Arڕ�/       m]P	O�ù� �A��* 


accuracy_1Hh?

lossvV�=r���'       ��F	����� �A��*

global_step/secئ�AG��/       m]P	���� �A��* 


accuracy_1i)h?

lossn�>4Ȫ�'       ��F	�q�� �A��*

global_step/sec���A�$�?/       m]P	��q�� �A��* 


accuracy_1�Hh?

loss~o�<�n��'       ��F	jC�� �A݈*

global_step/sec�!�A&�i/       m]P	�qC�� �A݈* 


accuracy_1kch?

loss�H�=�i��'       ��F	�U�� �A��*

global_step/sec�v�A!��_/       m]P	�\�� �A��* 


accuracy_1zh?

loss>�p=Q���'       ��F	� �A��*

global_step/seco��A4��(/       m]P	� �A��* 


accuracy_1�h?

lossP0�<�l�'       ��F	��ھ� �A��*

global_step/sec��AÓ�/       m]P	 �ھ� �A��* 


accuracy_1�h?

losst)�<��'       ��F	 殿� �A�*

global_step/sec�7�Aɡ�	/       m]P	Z쮿� �A�* 


accuracy_1f�h?

lossq��<cR�'       ��F	E��� �Aь*

global_step/sec.�A�3}/       m]P	K��� �Aь* 


accuracy_1n�h?

loss?�<�^�J'       ��F	ڨ{�� �A��*

global_step/sec҂�A��d/       m]P	ְ{�� �A��* 


accuracy_1�h?

loss:R�<����7       ���Y	|�6 �A��:($./checkpoints_model_cnn1d/model.ckpt-R�q'       ��F	m!\ �A��*

global_step/sec��Ar�/       m]P	�*\ �A��* 


accuracy_1�i?

loss_ݔ<����'       ��F	m;Í �A��*

global_step/sec�J�A���