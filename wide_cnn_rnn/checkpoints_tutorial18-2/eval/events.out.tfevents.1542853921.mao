       ŁK"	  @HýÖAbrain.Event:2AŚQ     şÎš	CczHýÖA"

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 

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
˛
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
m
ConstConst"/device:CPU:0*)
value B B../../data/test.tfrecord*
dtype0*
_output_shapes
: 
v
flat_filenames/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
x
flat_filenamesReshapeConstflat_filenames/shape"/device:CPU:0*
Tshape0*
_output_shapes
:*
T0
V
countConst"/device:CPU:0*
_output_shapes
: *
value	B	 R*
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

OneShotIteratorOneShotIterator"/device:CPU:0*
_output_shapes
: *0
dataset_factoryR
_make_dataset_7CaUSlIqduU*
shared_name *\
output_shapesK
I:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	container *
output_types
2				
h
IteratorToStringHandleIteratorToStringHandleOneShotIterator"/device:CPU:0*
_output_shapes
: 

IteratorGetNextIteratorGetNextOneShotIterator"/device:CPU:0*]
_output_shapesK
I:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
output_types
2				*\
output_shapesK
I:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

CastCastIteratorGetNext:2"/device:CPU:0*
Truncate( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0	
f
Reshape/shapeConst*%
valueB"˙˙˙˙           *
dtype0*
_output_shapes
:
o
ReshapeReshapeCastReshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  
ł
3layer_conv1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*%
_class
loc:@layer_conv1/kernel*%
valueB"             *
dtype0

1layer_conv1/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_conv1/kernel*
valueB
 *ž*
dtype0*
_output_shapes
: 

1layer_conv1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*
valueB
 *>*
dtype0
˙
;layer_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv1/kernel/Initializer/random_uniform/shape*

seed *
T0*%
_class
loc:@layer_conv1/kernel*
seed2 *
dtype0*&
_output_shapes
: 
ć
1layer_conv1/kernel/Initializer/random_uniform/subSub1layer_conv1/kernel/Initializer/random_uniform/max1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*
_output_shapes
: 

1layer_conv1/kernel/Initializer/random_uniform/mulMul;layer_conv1/kernel/Initializer/random_uniform/RandomUniform1layer_conv1/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 
ň
-layer_conv1/kernel/Initializer/random_uniformAdd1layer_conv1/kernel/Initializer/random_uniform/mul1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 
˝
layer_conv1/kernel
VariableV2*
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: 
ç
layer_conv1/kernel/AssignAssignlayer_conv1/kernel-layer_conv1/kernel/Initializer/random_uniform*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(

layer_conv1/kernel/readIdentitylayer_conv1/kernel*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 

"layer_conv1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
valueB *    
Ą
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
Ę
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
j
layer_conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ć
layer_conv1/Conv2DConv2DReshapelayer_conv1/kernel/read*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
	dilations
*
T0*
data_formatNHWC*
strides


layer_conv1/BiasAddBiasAddlayer_conv1/Conv2Dlayer_conv1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   
g
layer_conv1/ReluRelulayer_conv1/BiasAdd*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
T0
ż
max_pooling2d/MaxPoolMaxPoollayer_conv1/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
ł
3layer_conv2/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_conv2/kernel*%
valueB"              *
dtype0*
_output_shapes
:

1layer_conv2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
valueB
 *ěŃ˝*
dtype0

1layer_conv2/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *ěŃ=*
dtype0*
_output_shapes
: 
˙
;layer_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv2/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:  *

seed *
T0*%
_class
loc:@layer_conv2/kernel*
seed2 
ć
1layer_conv2/kernel/Initializer/random_uniform/subSub1layer_conv2/kernel/Initializer/random_uniform/max1layer_conv2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv2/kernel*
_output_shapes
: 

1layer_conv2/kernel/Initializer/random_uniform/mulMul;layer_conv2/kernel/Initializer/random_uniform/RandomUniform1layer_conv2/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  
ň
-layer_conv2/kernel/Initializer/random_uniformAdd1layer_conv2/kernel/Initializer/random_uniform/mul1layer_conv2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  
˝
layer_conv2/kernel
VariableV2*
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  *
dtype0*&
_output_shapes
:  
ç
layer_conv2/kernel/AssignAssignlayer_conv2/kernel-layer_conv2/kernel/Initializer/random_uniform*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  

layer_conv2/kernel/readIdentitylayer_conv2/kernel*&
_output_shapes
:  *
T0*%
_class
loc:@layer_conv2/kernel

"layer_conv2/bias/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ą
layer_conv2/bias
VariableV2*#
_class
loc:@layer_conv2/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Ę
layer_conv2/bias/AssignAssignlayer_conv2/bias"layer_conv2/bias/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(
}
layer_conv2/bias/readIdentitylayer_conv2/bias*#
_class
loc:@layer_conv2/bias*
_output_shapes
: *
T0
j
layer_conv2/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
ô
layer_conv2/Conv2DConv2Dmax_pooling2d/MaxPoollayer_conv2/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

layer_conv2/BiasAddBiasAddlayer_conv2/Conv2Dlayer_conv2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
g
layer_conv2/ReluRelulayer_conv2/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Á
max_pooling2d_1/MaxPoolMaxPoollayer_conv2/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
l
Flatten/flatten/ShapeShapemax_pooling2d_1/MaxPool*
_output_shapes
:*
T0*
out_type0
m
#Flatten/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
o
%Flatten/flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
É
Flatten/flatten/strided_sliceStridedSliceFlatten/flatten/Shape#Flatten/flatten/strided_slice/stack%Flatten/flatten/strided_slice/stack_1%Flatten/flatten/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
j
Flatten/flatten/Reshape/shape/1Const*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0

Flatten/flatten/Reshape/shapePackFlatten/flatten/strided_sliceFlatten/flatten/Reshape/shape/1*

axis *
N*
_output_shapes
:*
T0

Flatten/flatten/ReshapeReshapemax_pooling2d_1/MaxPoolFlatten/flatten/Reshape/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
§
1layer_fc1/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_fc1/kernel*
valueB"      *
dtype0*
_output_shapes
:

/layer_fc1/kernel/Initializer/random_uniform/minConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *AW˝*
dtype0*
_output_shapes
: 

/layer_fc1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel*
valueB
 *AW=
ó
9layer_fc1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1layer_fc1/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*#
_class
loc:@layer_fc1/kernel*
seed2 
Ţ
/layer_fc1/kernel/Initializer/random_uniform/subSub/layer_fc1/kernel/Initializer/random_uniform/max/layer_fc1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_fc1/kernel*
_output_shapes
: 
ň
/layer_fc1/kernel/Initializer/random_uniform/mulMul9layer_fc1/kernel/Initializer/random_uniform/RandomUniform/layer_fc1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:

ä
+layer_fc1/kernel/Initializer/random_uniformAdd/layer_fc1/kernel/Initializer/random_uniform/mul/layer_fc1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:

­
layer_fc1/kernel
VariableV2*#
_class
loc:@layer_fc1/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
Ů
layer_fc1/kernel/AssignAssignlayer_fc1/kernel+layer_fc1/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:


layer_fc1/kernel/readIdentitylayer_fc1/kernel* 
_output_shapes
:
*
T0*#
_class
loc:@layer_fc1/kernel

 layer_fc1/bias/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB*    *
dtype0*
_output_shapes	
:

layer_fc1/bias
VariableV2*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ă
layer_fc1/bias/AssignAssignlayer_fc1/bias layer_fc1/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:
x
layer_fc1/bias/readIdentitylayer_fc1/bias*
T0*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:
Ł
layer_fc1/MatMulMatMulFlatten/flatten/Reshapelayer_fc1/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0

layer_fc1/BiasAddBiasAddlayer_fc1/MatMullayer_fc1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
layer_fc1/ReluRelulayer_fc1/BiasAdd*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Š
2layer_fc_2/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@layer_fc_2/kernel*
valueB"      *
dtype0*
_output_shapes
:

0layer_fc_2/kernel/Initializer/random_uniform/minConst*$
_class
loc:@layer_fc_2/kernel*
valueB
 *o}Rž*
dtype0*
_output_shapes
: 

0layer_fc_2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *$
_class
loc:@layer_fc_2/kernel*
valueB
 *o}R>
ő
:layer_fc_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2layer_fc_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	*

seed *
T0*$
_class
loc:@layer_fc_2/kernel*
seed2 
â
0layer_fc_2/kernel/Initializer/random_uniform/subSub0layer_fc_2/kernel/Initializer/random_uniform/max0layer_fc_2/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@layer_fc_2/kernel*
_output_shapes
: 
ő
0layer_fc_2/kernel/Initializer/random_uniform/mulMul:layer_fc_2/kernel/Initializer/random_uniform/RandomUniform0layer_fc_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*
T0*$
_class
loc:@layer_fc_2/kernel
ç
,layer_fc_2/kernel/Initializer/random_uniformAdd0layer_fc_2/kernel/Initializer/random_uniform/mul0layer_fc_2/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@layer_fc_2/kernel*
_output_shapes
:	
­
layer_fc_2/kernel
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *$
_class
loc:@layer_fc_2/kernel*
	container *
shape:	
Ü
layer_fc_2/kernel/AssignAssignlayer_fc_2/kernel,layer_fc_2/kernel/Initializer/random_uniform*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	

layer_fc_2/kernel/readIdentitylayer_fc_2/kernel*
_output_shapes
:	*
T0*$
_class
loc:@layer_fc_2/kernel

!layer_fc_2/bias/Initializer/zerosConst*"
_class
loc:@layer_fc_2/bias*
valueB*    *
dtype0*
_output_shapes
:

layer_fc_2/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_fc_2/bias
Ć
layer_fc_2/bias/AssignAssignlayer_fc_2/bias!layer_fc_2/bias/Initializer/zeros*
T0*"
_class
loc:@layer_fc_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
z
layer_fc_2/bias/readIdentitylayer_fc_2/bias*
T0*"
_class
loc:@layer_fc_2/bias*
_output_shapes
:

layer_fc_2/MatMulMatMullayer_fc1/Relulayer_fc_2/kernel/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 

layer_fc_2/BiasAddBiasAddlayer_fc_2/MatMullayer_fc_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
SoftmaxSoftmaxlayer_fc_2/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
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
:˙˙˙˙˙˙˙˙˙*

Tidx0
z
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeIteratorGetNext:3*
T0	*
out_type0*
_output_shapes
:
ĺ
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitslayer_fc_2/BiasAddIteratorGetNext:3*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tlabels0	*
T0
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:

MeanMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
_output_shapes
: *
valueB *
dtype0
X
gradients/grad_ys_0Const*
valueB
 *  ?*
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

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
 
gradients/Mean_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
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
gradients/Mean_grad/ConstConst*
_output_shapes
:*
valueB: *
dtype0

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

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0

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

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*´
message¨ĽCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ą
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0
Ţ
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ô
-gradients/layer_fc_2/BiasAdd_grad/BiasAddGradBiasAddGradZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*
data_formatNHWC*
_output_shapes
:*
T0
Ç
2gradients/layer_fc_2/BiasAdd_grad/tuple/group_depsNoOp[^gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul.^gradients/layer_fc_2/BiasAdd_grad/BiasAddGrad
ř
:gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependencyIdentityZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul3^gradients/layer_fc_2/BiasAdd_grad/tuple/group_deps*
T0*m
_classc
a_loc:@gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

<gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/layer_fc_2/BiasAdd_grad/BiasAddGrad3^gradients/layer_fc_2/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/layer_fc_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ţ
'gradients/layer_fc_2/MatMul_grad/MatMulMatMul:gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependencylayer_fc_2/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(
Ď
)gradients/layer_fc_2/MatMul_grad/MatMul_1MatMullayer_fc1/Relu:gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	*
transpose_a(*
transpose_b( 

1gradients/layer_fc_2/MatMul_grad/tuple/group_depsNoOp(^gradients/layer_fc_2/MatMul_grad/MatMul*^gradients/layer_fc_2/MatMul_grad/MatMul_1

9gradients/layer_fc_2/MatMul_grad/tuple/control_dependencyIdentity'gradients/layer_fc_2/MatMul_grad/MatMul2^gradients/layer_fc_2/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/layer_fc_2/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

;gradients/layer_fc_2/MatMul_grad/tuple/control_dependency_1Identity)gradients/layer_fc_2/MatMul_grad/MatMul_12^gradients/layer_fc_2/MatMul_grad/tuple/group_deps*
_output_shapes
:	*
T0*<
_class2
0.loc:@gradients/layer_fc_2/MatMul_grad/MatMul_1
°
&gradients/layer_fc1/Relu_grad/ReluGradReluGrad9gradients/layer_fc_2/MatMul_grad/tuple/control_dependencylayer_fc1/Relu*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
 
,gradients/layer_fc1/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/layer_fc1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

1gradients/layer_fc1/BiasAdd_grad/tuple/group_depsNoOp-^gradients/layer_fc1/BiasAdd_grad/BiasAddGrad'^gradients/layer_fc1/Relu_grad/ReluGrad

9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/Relu_grad/ReluGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_fc1/Relu_grad/ReluGrad*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/layer_fc1/BiasAdd_grad/BiasAddGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*
T0*?
_class5
31loc:@gradients/layer_fc1/BiasAdd_grad/BiasAddGrad
Ű
&gradients/layer_fc1/MatMul_grad/MatMulMatMul9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencylayer_fc1/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(*
T0
×
(gradients/layer_fc1/MatMul_grad/MatMul_1MatMulFlatten/flatten/Reshape9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
*
transpose_a(*
transpose_b( *
T0

0gradients/layer_fc1/MatMul_grad/tuple/group_depsNoOp'^gradients/layer_fc1/MatMul_grad/MatMul)^gradients/layer_fc1/MatMul_grad/MatMul_1

8gradients/layer_fc1/MatMul_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/MatMul_grad/MatMul1^gradients/layer_fc1/MatMul_grad/tuple/group_deps*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*9
_class/
-+loc:@gradients/layer_fc1/MatMul_grad/MatMul

:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1Identity(gradients/layer_fc1/MatMul_grad/MatMul_11^gradients/layer_fc1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_fc1/MatMul_grad/MatMul_1* 
_output_shapes
:


,gradients/Flatten/flatten/Reshape_grad/ShapeShapemax_pooling2d_1/MaxPool*
T0*
out_type0*
_output_shapes
:
é
.gradients/Flatten/flatten/Reshape_grad/ReshapeReshape8gradients/layer_fc1/MatMul_grad/tuple/control_dependency,gradients/Flatten/flatten/Reshape_grad/Shape*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Š
2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradlayer_conv2/Relumax_pooling2d_1/MaxPool.gradients/Flatten/flatten/Reshape_grad/Reshape*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
´
(gradients/layer_conv2/Relu_grad/ReluGradReluGrad2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradlayer_conv2/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ł
.gradients/layer_conv2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 

3gradients/layer_conv2/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv2/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv2/Relu_grad/ReluGrad

;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv2/Relu_grad/ReluGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_conv2/Relu_grad/ReluGrad*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv2/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/layer_conv2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
Ś
(gradients/layer_conv2/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoollayer_conv2/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
ô
5gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/layer_conv2/Conv2D_grad/ShapeNlayer_conv2/kernel/read;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
í
6gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool*gradients/layer_conv2/Conv2D_grad/ShapeN:1;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:  
Ť
2gradients/layer_conv2/Conv2D_grad/tuple/group_depsNoOp7^gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter6^gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput
ś
:gradients/layer_conv2/Conv2D_grad/tuple/control_dependencyIdentity5gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput3^gradients/layer_conv2/Conv2D_grad/tuple/group_deps*H
_class>
<:loc:@gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
ą
<gradients/layer_conv2/Conv2D_grad/tuple/control_dependency_1Identity6gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter3^gradients/layer_conv2/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:  
ą
0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradlayer_conv1/Relumax_pooling2d/MaxPool:gradients/layer_conv2/Conv2D_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
T0
˛
(gradients/layer_conv1/Relu_grad/ReluGradReluGrad0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradlayer_conv1/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
T0
Ł
.gradients/layer_conv1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv1/Relu_grad/ReluGrad*
_output_shapes
: *
T0*
data_formatNHWC

3gradients/layer_conv1/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv1/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv1/Relu_grad/ReluGrad

;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv1/Relu_grad/ReluGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_conv1/Relu_grad/ReluGrad*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   

=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv1/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/layer_conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 

(gradients/layer_conv1/Conv2D_grad/ShapeNShapeNReshapelayer_conv1/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
ô
5gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/layer_conv1/Conv2D_grad/ShapeNlayer_conv1/kernel/read;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
ß
6gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshape*gradients/layer_conv1/Conv2D_grad/ShapeN:1;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ť
2gradients/layer_conv1/Conv2D_grad/tuple/group_depsNoOp7^gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter6^gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput
ś
:gradients/layer_conv1/Conv2D_grad/tuple/control_dependencyIdentity5gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput3^gradients/layer_conv1/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  
ą
<gradients/layer_conv1/Conv2D_grad/tuple/control_dependency_1Identity6gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter3^gradients/layer_conv1/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 

beta1_power/initial_valueConst*#
_class
loc:@layer_conv1/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 

beta1_power
VariableV2*
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
ł
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
o
beta1_power/readIdentitybeta1_power*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 

beta2_power/initial_valueConst*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
valueB
 *wž?*
dtype0

beta2_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias
ł
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
o
beta2_power/readIdentitybeta2_power*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 
ľ
)layer_conv1/kernel/Adam/Initializer/zerosConst*%
_class
loc:@layer_conv1/kernel*%
valueB *    *
dtype0*&
_output_shapes
: 
Â
layer_conv1/kernel/Adam
VariableV2*%
_class
loc:@layer_conv1/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name 
í
layer_conv1/kernel/Adam/AssignAssignlayer_conv1/kernel/Adam)layer_conv1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 

layer_conv1/kernel/Adam/readIdentitylayer_conv1/kernel/Adam*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 
ˇ
+layer_conv1/kernel/Adam_1/Initializer/zerosConst*&
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*%
valueB *    *
dtype0
Ä
layer_conv1/kernel/Adam_1
VariableV2*%
_class
loc:@layer_conv1/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name 
ó
 layer_conv1/kernel/Adam_1/AssignAssignlayer_conv1/kernel/Adam_1+layer_conv1/kernel/Adam_1/Initializer/zeros*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0

layer_conv1/kernel/Adam_1/readIdentitylayer_conv1/kernel/Adam_1*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 

'layer_conv1/bias/Adam/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ś
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
Ů
layer_conv1/bias/Adam/AssignAssignlayer_conv1/bias/Adam'layer_conv1/bias/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 

layer_conv1/bias/Adam/readIdentitylayer_conv1/bias/Adam*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 

)layer_conv1/bias/Adam_1/Initializer/zerosConst*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0
¨
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
ß
layer_conv1/bias/Adam_1/AssignAssignlayer_conv1/bias/Adam_1)layer_conv1/bias/Adam_1/Initializer/zeros*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

layer_conv1/bias/Adam_1/readIdentitylayer_conv1/bias/Adam_1*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 
š
9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@layer_conv2/kernel*%
valueB"              *
dtype0*
_output_shapes
:

/layer_conv2/kernel/Adam/Initializer/zeros/ConstConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

)layer_conv2/kernel/Adam/Initializer/zerosFill9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensor/layer_conv2/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@layer_conv2/kernel*

index_type0*&
_output_shapes
:  
Â
layer_conv2/kernel/Adam
VariableV2*
	container *
shape:  *
dtype0*&
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel
í
layer_conv2/kernel/Adam/AssignAssignlayer_conv2/kernel/Adam)layer_conv2/kernel/Adam/Initializer/zeros*&
_output_shapes
:  *
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(

layer_conv2/kernel/Adam/readIdentitylayer_conv2/kernel/Adam*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  
ť
;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*%
_class
loc:@layer_conv2/kernel*%
valueB"              *
dtype0

1layer_conv2/kernel/Adam_1/Initializer/zeros/ConstConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+layer_conv2/kernel/Adam_1/Initializer/zerosFill;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensor1layer_conv2/kernel/Adam_1/Initializer/zeros/Const*%
_class
loc:@layer_conv2/kernel*

index_type0*&
_output_shapes
:  *
T0
Ä
layer_conv2/kernel/Adam_1
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  
ó
 layer_conv2/kernel/Adam_1/AssignAssignlayer_conv2/kernel/Adam_1+layer_conv2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  

layer_conv2/kernel/Adam_1/readIdentitylayer_conv2/kernel/Adam_1*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  

'layer_conv2/bias/Adam/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ś
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
Ů
layer_conv2/bias/Adam/AssignAssignlayer_conv2/bias/Adam'layer_conv2/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv2/bias

layer_conv2/bias/Adam/readIdentitylayer_conv2/bias/Adam*
_output_shapes
: *
T0*#
_class
loc:@layer_conv2/bias

)layer_conv2/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
¨
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
ß
layer_conv2/bias/Adam_1/AssignAssignlayer_conv2/bias/Adam_1)layer_conv2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 

layer_conv2/bias/Adam_1/readIdentitylayer_conv2/bias/Adam_1*#
_class
loc:@layer_conv2/bias*
_output_shapes
: *
T0
­
7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_fc1/kernel*
valueB"      *
dtype0*
_output_shapes
:

-layer_fc1/kernel/Adam/Initializer/zeros/ConstConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ů
'layer_fc1/kernel/Adam/Initializer/zerosFill7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensor-layer_fc1/kernel/Adam/Initializer/zeros/Const*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:

˛
layer_fc1/kernel/Adam
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container 
ß
layer_fc1/kernel/Adam/AssignAssignlayer_fc1/kernel/Adam'layer_fc1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:


layer_fc1/kernel/Adam/readIdentitylayer_fc1/kernel/Adam*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:

Ż
9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_fc1/kernel*
valueB"      *
dtype0*
_output_shapes
:

/layer_fc1/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0
˙
)layer_fc1/kernel/Adam_1/Initializer/zerosFill9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/layer_fc1/kernel/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0
´
layer_fc1/kernel/Adam_1
VariableV2*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

ĺ
layer_fc1/kernel/Adam_1/AssignAssignlayer_fc1/kernel/Adam_1)layer_fc1/kernel/Adam_1/Initializer/zeros*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(

layer_fc1/kernel/Adam_1/readIdentitylayer_fc1/kernel/Adam_1* 
_output_shapes
:
*
T0*#
_class
loc:@layer_fc1/kernel

%layer_fc1/bias/Adam/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB*    *
dtype0*
_output_shapes	
:
¤
layer_fc1/bias/Adam
VariableV2*!
_class
loc:@layer_fc1/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
Ň
layer_fc1/bias/Adam/AssignAssignlayer_fc1/bias/Adam%layer_fc1/bias/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:

layer_fc1/bias/Adam/readIdentitylayer_fc1/bias/Adam*
_output_shapes	
:*
T0*!
_class
loc:@layer_fc1/bias

'layer_fc1/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:*!
_class
loc:@layer_fc1/bias*
valueB*    
Ś
layer_fc1/bias/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *!
_class
loc:@layer_fc1/bias
Ř
layer_fc1/bias/Adam_1/AssignAssignlayer_fc1/bias/Adam_1'layer_fc1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:

layer_fc1/bias/Adam_1/readIdentitylayer_fc1/bias/Adam_1*
_output_shapes	
:*
T0*!
_class
loc:@layer_fc1/bias
Ż
8layer_fc_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@layer_fc_2/kernel*
valueB"      *
dtype0*
_output_shapes
:

.layer_fc_2/kernel/Adam/Initializer/zeros/ConstConst*$
_class
loc:@layer_fc_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ü
(layer_fc_2/kernel/Adam/Initializer/zerosFill8layer_fc_2/kernel/Adam/Initializer/zeros/shape_as_tensor.layer_fc_2/kernel/Adam/Initializer/zeros/Const*$
_class
loc:@layer_fc_2/kernel*

index_type0*
_output_shapes
:	*
T0
˛
layer_fc_2/kernel/Adam
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *$
_class
loc:@layer_fc_2/kernel*
	container *
shape:	
â
layer_fc_2/kernel/Adam/AssignAssignlayer_fc_2/kernel/Adam(layer_fc_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	

layer_fc_2/kernel/Adam/readIdentitylayer_fc_2/kernel/Adam*
T0*$
_class
loc:@layer_fc_2/kernel*
_output_shapes
:	
ą
:layer_fc_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@layer_fc_2/kernel*
valueB"      *
dtype0*
_output_shapes
:

0layer_fc_2/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *$
_class
loc:@layer_fc_2/kernel*
valueB
 *    

*layer_fc_2/kernel/Adam_1/Initializer/zerosFill:layer_fc_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor0layer_fc_2/kernel/Adam_1/Initializer/zeros/Const*
T0*$
_class
loc:@layer_fc_2/kernel*

index_type0*
_output_shapes
:	
´
layer_fc_2/kernel/Adam_1
VariableV2*
shape:	*
dtype0*
_output_shapes
:	*
shared_name *$
_class
loc:@layer_fc_2/kernel*
	container 
č
layer_fc_2/kernel/Adam_1/AssignAssignlayer_fc_2/kernel/Adam_1*layer_fc_2/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel

layer_fc_2/kernel/Adam_1/readIdentitylayer_fc_2/kernel/Adam_1*
T0*$
_class
loc:@layer_fc_2/kernel*
_output_shapes
:	

&layer_fc_2/bias/Adam/Initializer/zerosConst*"
_class
loc:@layer_fc_2/bias*
valueB*    *
dtype0*
_output_shapes
:
¤
layer_fc_2/bias/Adam
VariableV2*
_output_shapes
:*
shared_name *"
_class
loc:@layer_fc_2/bias*
	container *
shape:*
dtype0
Ő
layer_fc_2/bias/Adam/AssignAssignlayer_fc_2/bias/Adam&layer_fc_2/bias/Adam/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_fc_2/bias*
validate_shape(

layer_fc_2/bias/Adam/readIdentitylayer_fc_2/bias/Adam*"
_class
loc:@layer_fc_2/bias*
_output_shapes
:*
T0

(layer_fc_2/bias/Adam_1/Initializer/zerosConst*"
_class
loc:@layer_fc_2/bias*
valueB*    *
dtype0*
_output_shapes
:
Ś
layer_fc_2/bias/Adam_1
VariableV2*"
_class
loc:@layer_fc_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
Ű
layer_fc_2/bias/Adam_1/AssignAssignlayer_fc_2/bias/Adam_1(layer_fc_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_fc_2/bias*
validate_shape(*
_output_shapes
:

layer_fc_2/bias/Adam_1/readIdentitylayer_fc_2/bias/Adam_1*"
_class
loc:@layer_fc_2/bias*
_output_shapes
:*
T0
W
Adam/learning_rateConst*
valueB
 *ˇŃ8*
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
 *wž?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 

(Adam/update_layer_conv1/kernel/ApplyAdam	ApplyAdamlayer_conv1/kernellayer_conv1/kernel/Adamlayer_conv1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/layer_conv1/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*%
_class
loc:@layer_conv1/kernel*
use_nesterov( *&
_output_shapes
: 

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

(Adam/update_layer_conv2/kernel/ApplyAdam	ApplyAdamlayer_conv2/kernellayer_conv2/kernel/Adamlayer_conv2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/layer_conv2/Conv2D_grad/tuple/control_dependency_1*&
_output_shapes
:  *
use_locking( *
T0*%
_class
loc:@layer_conv2/kernel*
use_nesterov( 

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

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

ř
$Adam/update_layer_fc1/bias/ApplyAdam	ApplyAdamlayer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1*
T0*!
_class
loc:@layer_fc1/bias*
use_nesterov( *
_output_shapes	
:*
use_locking( 

'Adam/update_layer_fc_2/kernel/ApplyAdam	ApplyAdamlayer_fc_2/kernellayer_fc_2/kernel/Adamlayer_fc_2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/layer_fc_2/MatMul_grad/tuple/control_dependency_1*
T0*$
_class
loc:@layer_fc_2/kernel*
use_nesterov( *
_output_shapes
:	*
use_locking( 
ý
%Adam/update_layer_fc_2/bias/ApplyAdam	ApplyAdamlayer_fc_2/biaslayer_fc_2/bias/Adamlayer_fc_2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes
:*
use_locking( *
T0*"
_class
loc:@layer_fc_2/bias*
use_nesterov( 
˝
Adam/mulMulbeta1_power/read
Adam/beta1'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam&^Adam/update_layer_fc_2/bias/ApplyAdam(^Adam/update_layer_fc_2/kernel/ApplyAdam*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 

Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
ż

Adam/mul_1Mulbeta2_power/read
Adam/beta2'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam&^Adam/update_layer_fc_2/bias/ApplyAdam(^Adam/update_layer_fc_2/kernel/ApplyAdam*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
_output_shapes
: *
use_locking( *
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(
ű
Adam/updateNoOp^Adam/Assign^Adam/Assign_1'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam&^Adam/update_layer_fc_2/bias/ApplyAdam(^Adam/update_layer_fc_2/kernel/ApplyAdam
z

Adam/valueConst^Adam/update*
dtype0	*
_output_shapes
: *
_class
loc:@global_step*
value	B	 R
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
EqualEqualArgMaxIteratorGetNext:3*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
ToFloatCastEqual*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0


 accuracy/total/Initializer/zerosConst*!
_class
loc:@accuracy/total*
valueB
 *    *
dtype0*
_output_shapes
: 

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
ž
accuracy/total/AssignAssignaccuracy/total accuracy/total/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0*!
_class
loc:@accuracy/total*
validate_shape(
s
accuracy/total/readIdentityaccuracy/total*
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 

 accuracy/count/Initializer/zerosConst*!
_class
loc:@accuracy/count*
valueB
 *    *
dtype0*
_output_shapes
: 

accuracy/count
VariableV2*
_output_shapes
: *
shared_name *!
_class
loc:@accuracy/count*
	container *
shape: *
dtype0
ž
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
accuracy/SumSumToFloataccuracy/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
use_locking( *
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 
¤
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat^ToFloat*
use_locking( *
T0*!
_class
loc:@accuracy/count*
_output_shapes
: 
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
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/zeros_like_1*
T0*
_output_shapes
: 
|
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/zeros_like_1*
_output_shapes
: *
T0

mean_1/total/Initializer/zerosConst*
_class
loc:@mean_1/total*
valueB
 *    *
dtype0*
_output_shapes
: 

mean_1/total
VariableV2*
_class
loc:@mean_1/total*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
ś
mean_1/total/AssignAssignmean_1/totalmean_1/total/Initializer/zeros*
T0*
_class
loc:@mean_1/total*
validate_shape(*
_output_shapes
: *
use_locking(
m
mean_1/total/readIdentitymean_1/total*
T0*
_class
loc:@mean_1/total*
_output_shapes
: 

mean_1/count/Initializer/zerosConst*
_class
loc:@mean_1/count*
valueB
 *    *
dtype0*
_output_shapes
: 

mean_1/count
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@mean_1/count
ś
mean_1/count/AssignAssignmean_1/countmean_1/count/Initializer/zeros*
use_locking(*
T0*
_class
loc:@mean_1/count*
validate_shape(*
_output_shapes
: 
m
mean_1/count/readIdentitymean_1/count*
_output_shapes
: *
T0*
_class
loc:@mean_1/count
M
mean_1/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
c
mean_1/ToFloatCastmean_1/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
O
mean_1/ConstConst*
valueB *
dtype0*
_output_shapes
: 
c

mean_1/SumSumMeanmean_1/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

mean_1/AssignAdd	AssignAddmean_1/total
mean_1/Sum*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@mean_1/total

mean_1/AssignAdd_1	AssignAddmean_1/countmean_1/ToFloat^Mean*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@mean_1/count
`
mean_1/truedivRealDivmean_1/total/readmean_1/count/read*
T0*
_output_shapes
: 
V
mean_1/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
`
mean_1/GreaterGreatermean_1/count/readmean_1/zeros_like*
T0*
_output_shapes
: 
j
mean_1/valueSelectmean_1/Greatermean_1/truedivmean_1/zeros_like*
T0*
_output_shapes
: 
b
mean_1/truediv_1RealDivmean_1/AssignAddmean_1/AssignAdd_1*
T0*
_output_shapes
: 
X
mean_1/zeros_like_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
e
mean_1/Greater_1Greatermean_1/AssignAdd_1mean_1/zeros_like_1*
_output_shapes
: *
T0
t
mean_1/update_opSelectmean_1/Greater_1mean_1/truediv_1mean_1/zeros_like_1*
T0*
_output_shapes
: 
:

group_depsNoOp^accuracy/update_op^mean_1/update_op
{
eval_step/Initializer/zerosConst*
_class
loc:@eval_step*
value	B	 R *
dtype0	*
_output_shapes
: 

	eval_step
VariableV2*
	container *
shape: *
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@eval_step
Ş
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
T0	*
_class
loc:@eval_step*
validate_shape(*
_output_shapes
: *
use_locking(
d
eval_step/readIdentity	eval_step*
_output_shapes
: *
T0	*
_class
loc:@eval_step
Q
AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 

	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@eval_step
U
readIdentity	eval_step
^AssignAdd^group_deps*
T0	*
_output_shapes
: 
;
IdentityIdentityread*
_output_shapes
: *
T0	
Ą
initNoOp^beta1_power/Assign^beta2_power/Assign^global_step/Assign^layer_conv1/bias/Adam/Assign^layer_conv1/bias/Adam_1/Assign^layer_conv1/bias/Assign^layer_conv1/kernel/Adam/Assign!^layer_conv1/kernel/Adam_1/Assign^layer_conv1/kernel/Assign^layer_conv2/bias/Adam/Assign^layer_conv2/bias/Adam_1/Assign^layer_conv2/bias/Assign^layer_conv2/kernel/Adam/Assign!^layer_conv2/kernel/Adam_1/Assign^layer_conv2/kernel/Assign^layer_fc1/bias/Adam/Assign^layer_fc1/bias/Adam_1/Assign^layer_fc1/bias/Assign^layer_fc1/kernel/Adam/Assign^layer_fc1/kernel/Adam_1/Assign^layer_fc1/kernel/Assign^layer_fc_2/bias/Adam/Assign^layer_fc_2/bias/Adam_1/Assign^layer_fc_2/bias/Assign^layer_fc_2/kernel/Adam/Assign ^layer_fc_2/kernel/Adam_1/Assign^layer_fc_2/kernel/Assign

init_1NoOp
$
group_deps_1NoOp^init^init_1

4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
Ż
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedlayer_conv1/kernel*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel
Ť
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedlayer_conv1/bias*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Ż
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedlayer_conv2/kernel*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
Ť
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedlayer_conv2/bias*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
Ť
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedlayer_fc1/kernel*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
§
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializedlayer_fc1/bias*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
­
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializedlayer_fc_2/kernel*$
_class
loc:@layer_fc_2/kernel*
dtype0*
_output_shapes
: 
Š
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedlayer_fc_2/bias*
_output_shapes
: *"
_class
loc:@layer_fc_2/bias*
dtype0
Ś
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializedbeta1_power*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
§
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitializedbeta2_power*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
ľ
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitializedlayer_conv1/kernel/Adam*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
ˇ
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitializedlayer_conv1/kernel/Adam_1*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*
dtype0
ą
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializedlayer_conv1/bias/Adam*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
ł
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializedlayer_conv1/bias/Adam_1*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
ľ
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializedlayer_conv2/kernel/Adam*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
ˇ
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializedlayer_conv2/kernel/Adam_1*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
ą
7report_uninitialized_variables/IsVariableInitialized_17IsVariableInitializedlayer_conv2/bias/Adam*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv2/bias
ł
7report_uninitialized_variables/IsVariableInitialized_18IsVariableInitializedlayer_conv2/bias/Adam_1*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
ą
7report_uninitialized_variables/IsVariableInitialized_19IsVariableInitializedlayer_fc1/kernel/Adam*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel*
dtype0
ł
7report_uninitialized_variables/IsVariableInitialized_20IsVariableInitializedlayer_fc1/kernel/Adam_1*
dtype0*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel
­
7report_uninitialized_variables/IsVariableInitialized_21IsVariableInitializedlayer_fc1/bias/Adam*
_output_shapes
: *!
_class
loc:@layer_fc1/bias*
dtype0
Ż
7report_uninitialized_variables/IsVariableInitialized_22IsVariableInitializedlayer_fc1/bias/Adam_1*
_output_shapes
: *!
_class
loc:@layer_fc1/bias*
dtype0
ł
7report_uninitialized_variables/IsVariableInitialized_23IsVariableInitializedlayer_fc_2/kernel/Adam*$
_class
loc:@layer_fc_2/kernel*
dtype0*
_output_shapes
: 
ľ
7report_uninitialized_variables/IsVariableInitialized_24IsVariableInitializedlayer_fc_2/kernel/Adam_1*
dtype0*
_output_shapes
: *$
_class
loc:@layer_fc_2/kernel
Ż
7report_uninitialized_variables/IsVariableInitialized_25IsVariableInitializedlayer_fc_2/bias/Adam*
dtype0*
_output_shapes
: *"
_class
loc:@layer_fc_2/bias
ą
7report_uninitialized_variables/IsVariableInitialized_26IsVariableInitializedlayer_fc_2/bias/Adam_1*
dtype0*
_output_shapes
: *"
_class
loc:@layer_fc_2/bias
¨
7report_uninitialized_variables/IsVariableInitialized_27IsVariableInitializedaccuracy/total*
_output_shapes
: *!
_class
loc:@accuracy/total*
dtype0
¨
7report_uninitialized_variables/IsVariableInitialized_28IsVariableInitializedaccuracy/count*!
_class
loc:@accuracy/count*
dtype0*
_output_shapes
: 
¤
7report_uninitialized_variables/IsVariableInitialized_29IsVariableInitializedmean_1/total*
_output_shapes
: *
_class
loc:@mean_1/total*
dtype0
¤
7report_uninitialized_variables/IsVariableInitialized_30IsVariableInitializedmean_1/count*
_class
loc:@mean_1/count*
dtype0*
_output_shapes
: 

7report_uninitialized_variables/IsVariableInitialized_31IsVariableInitialized	eval_step*
_class
loc:@eval_step*
dtype0	*
_output_shapes
: 

$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_117report_uninitialized_variables/IsVariableInitialized_127report_uninitialized_variables/IsVariableInitialized_137report_uninitialized_variables/IsVariableInitialized_147report_uninitialized_variables/IsVariableInitialized_157report_uninitialized_variables/IsVariableInitialized_167report_uninitialized_variables/IsVariableInitialized_177report_uninitialized_variables/IsVariableInitialized_187report_uninitialized_variables/IsVariableInitialized_197report_uninitialized_variables/IsVariableInitialized_207report_uninitialized_variables/IsVariableInitialized_217report_uninitialized_variables/IsVariableInitialized_227report_uninitialized_variables/IsVariableInitialized_237report_uninitialized_variables/IsVariableInitialized_247report_uninitialized_variables/IsVariableInitialized_257report_uninitialized_variables/IsVariableInitialized_267report_uninitialized_variables/IsVariableInitialized_277report_uninitialized_variables/IsVariableInitialized_287report_uninitialized_variables/IsVariableInitialized_297report_uninitialized_variables/IsVariableInitialized_307report_uninitialized_variables/IsVariableInitialized_31"/device:CPU:0*
_output_shapes
: *
T0
*

axis *
N 

)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack"/device:CPU:0*
_output_shapes
: 

$report_uninitialized_variables/ConstConst"/device:CPU:0*
valueB Bglobal_stepBlayer_conv1/kernelBlayer_conv1/biasBlayer_conv2/kernelBlayer_conv2/biasBlayer_fc1/kernelBlayer_fc1/biasBlayer_fc_2/kernelBlayer_fc_2/biasBbeta1_powerBbeta2_powerBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc_2/kernel/AdamBlayer_fc_2/kernel/Adam_1Blayer_fc_2/bias/AdamBlayer_fc_2/bias/Adam_1Baccuracy/totalBaccuracy/countBmean_1/totalBmean_1/countB	eval_step*
dtype0*
_output_shapes
: 

1report_uninitialized_variables/boolean_mask/ShapeConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

?report_uninitialized_variables/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
č
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

Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0

0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices"/device:CPU:0*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

3report_uninitialized_variables/boolean_mask/Shape_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
đ
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
: 

3report_uninitialized_variables/boolean_mask/Shape_2Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0

Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
đ
;report_uninitialized_variables/boolean_mask/strided_slice_2StridedSlice3report_uninitialized_variables/boolean_mask/Shape_2Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackCreport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: 
ž
;report_uninitialized_variables/boolean_mask/concat/values_1Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
÷
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/strided_slice_1;report_uninitialized_variables/boolean_mask/concat/values_1;report_uninitialized_variables/boolean_mask/strided_slice_27report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*
N*
_output_shapes
:*

Tidx0*
T0
Ú
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
: 

;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
ę
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
: 
˛
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*
T0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

9report_uninitialized_variables/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ĺ
4report_uninitialized_variables/boolean_mask/GatherV2GatherV23report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze9report_uninitialized_variables/boolean_mask/GatherV2/axis"/device:CPU:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Taxis0*
Tindices0	*
Tparams0
v
$report_uninitialized_resources/ConstConst"/device:CPU:0*
_output_shapes
: *
valueB *
dtype0
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ž
concatConcatV24report_uninitialized_variables/boolean_mask/GatherV2$report_uninitialized_resources/Constconcat/axis*

Tidx0*
T0*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ą
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
ą
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedlayer_conv1/kernel*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
­
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedlayer_conv1/bias*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
dtype0
ą
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedlayer_conv2/kernel*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel
­
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedlayer_conv2/bias*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
­
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedlayer_fc1/kernel*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Š
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializedlayer_fc1/bias*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Ż
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializedlayer_fc_2/kernel*$
_class
loc:@layer_fc_2/kernel*
dtype0*
_output_shapes
: 
Ť
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedlayer_fc_2/bias*
_output_shapes
: *"
_class
loc:@layer_fc_2/bias*
dtype0
¨
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializedbeta1_power*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Š
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitializedbeta2_power*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
ˇ
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitializedlayer_conv1/kernel/Adam*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel
š
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitializedlayer_conv1/kernel/Adam_1*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
ł
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializedlayer_conv1/bias/Adam*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
ľ
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializedlayer_conv1/bias/Adam_1*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
ˇ
9report_uninitialized_variables_1/IsVariableInitialized_15IsVariableInitializedlayer_conv2/kernel/Adam*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
š
9report_uninitialized_variables_1/IsVariableInitialized_16IsVariableInitializedlayer_conv2/kernel/Adam_1*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
ł
9report_uninitialized_variables_1/IsVariableInitialized_17IsVariableInitializedlayer_conv2/bias/Adam*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
ľ
9report_uninitialized_variables_1/IsVariableInitialized_18IsVariableInitializedlayer_conv2/bias/Adam_1*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
ł
9report_uninitialized_variables_1/IsVariableInitialized_19IsVariableInitializedlayer_fc1/kernel/Adam*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
ľ
9report_uninitialized_variables_1/IsVariableInitialized_20IsVariableInitializedlayer_fc1/kernel/Adam_1*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Ż
9report_uninitialized_variables_1/IsVariableInitialized_21IsVariableInitializedlayer_fc1/bias/Adam*
_output_shapes
: *!
_class
loc:@layer_fc1/bias*
dtype0
ą
9report_uninitialized_variables_1/IsVariableInitialized_22IsVariableInitializedlayer_fc1/bias/Adam_1*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
ľ
9report_uninitialized_variables_1/IsVariableInitialized_23IsVariableInitializedlayer_fc_2/kernel/Adam*$
_class
loc:@layer_fc_2/kernel*
dtype0*
_output_shapes
: 
ˇ
9report_uninitialized_variables_1/IsVariableInitialized_24IsVariableInitializedlayer_fc_2/kernel/Adam_1*$
_class
loc:@layer_fc_2/kernel*
dtype0*
_output_shapes
: 
ą
9report_uninitialized_variables_1/IsVariableInitialized_25IsVariableInitializedlayer_fc_2/bias/Adam*"
_class
loc:@layer_fc_2/bias*
dtype0*
_output_shapes
: 
ł
9report_uninitialized_variables_1/IsVariableInitialized_26IsVariableInitializedlayer_fc_2/bias/Adam_1*"
_class
loc:@layer_fc_2/bias*
dtype0*
_output_shapes
: 
¤
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_88report_uninitialized_variables_1/IsVariableInitialized_99report_uninitialized_variables_1/IsVariableInitialized_109report_uninitialized_variables_1/IsVariableInitialized_119report_uninitialized_variables_1/IsVariableInitialized_129report_uninitialized_variables_1/IsVariableInitialized_139report_uninitialized_variables_1/IsVariableInitialized_149report_uninitialized_variables_1/IsVariableInitialized_159report_uninitialized_variables_1/IsVariableInitialized_169report_uninitialized_variables_1/IsVariableInitialized_179report_uninitialized_variables_1/IsVariableInitialized_189report_uninitialized_variables_1/IsVariableInitialized_199report_uninitialized_variables_1/IsVariableInitialized_209report_uninitialized_variables_1/IsVariableInitialized_219report_uninitialized_variables_1/IsVariableInitialized_229report_uninitialized_variables_1/IsVariableInitialized_239report_uninitialized_variables_1/IsVariableInitialized_249report_uninitialized_variables_1/IsVariableInitialized_259report_uninitialized_variables_1/IsVariableInitialized_26"/device:CPU:0*
T0
*

axis *
N*
_output_shapes
:

+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack"/device:CPU:0*
_output_shapes
:
ź
&report_uninitialized_variables_1/ConstConst"/device:CPU:0*Ň
valueČBĹBglobal_stepBlayer_conv1/kernelBlayer_conv1/biasBlayer_conv2/kernelBlayer_conv2/biasBlayer_fc1/kernelBlayer_fc1/biasBlayer_fc_2/kernelBlayer_fc_2/biasBbeta1_powerBbeta2_powerBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc_2/kernel/AdamBlayer_fc_2/kernel/Adam_1Blayer_fc_2/bias/AdamBlayer_fc_2/bias/Adam_1*
dtype0*
_output_shapes
:

3report_uninitialized_variables_1/boolean_mask/ShapeConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ň
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

Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices"/device:CPU:0*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

5report_uninitialized_variables_1/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ú
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

5report_uninitialized_variables_1/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ú
=report_uninitialized_variables_1/boolean_mask/strided_slice_2StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_2Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
Index0*
T0
Â
=report_uninitialized_variables_1/boolean_mask/concat/values_1Pack2report_uninitialized_variables_1/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

9report_uninitialized_variables_1/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/strided_slice_1=report_uninitialized_variables_1/boolean_mask/concat/values_1=report_uninitialized_variables_1/boolean_mask/strided_slice_29report_uninitialized_variables_1/boolean_mask/concat/axis"/device:CPU:0*

Tidx0*
T0*
N*
_output_shapes
:
ŕ
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:

=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
đ
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:
ś
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*
T0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
É
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
*
T0	

;report_uninitialized_variables_1/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Í
6report_uninitialized_variables_1/boolean_mask/GatherV2GatherV25report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze;report_uninitialized_variables_1/boolean_mask/GatherV2/axis"/device:CPU:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Taxis0*
Tindices0	*
Tparams0
}
init_2NoOp^accuracy/count/Assign^accuracy/total/Assign^eval_step/Assign^mean_1/count/Assign^mean_1/total/Assign

init_all_tablesNoOp

init_3NoOp
8
group_deps_2NoOp^init_2^init_3^init_all_tables
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_5bdc2a1954034de49f0fe1c1058813c0/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
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

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Ž
save/SaveV2/tensor_namesConst"/device:CPU:0*Ň
valueČBĹBbeta1_powerBbeta2_powerBglobal_stepBlayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc_2/biasBlayer_fc_2/bias/AdamBlayer_fc_2/bias/Adam_1Blayer_fc_2/kernelBlayer_fc_2/kernel/AdamBlayer_fc_2/kernel/Adam_1*
dtype0*
_output_shapes
:
¨
save/SaveV2/shape_and_slicesConst"/device:CPU:0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ú
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerglobal_steplayer_conv1/biaslayer_conv1/bias/Adamlayer_conv1/bias/Adam_1layer_conv1/kernellayer_conv1/kernel/Adamlayer_conv1/kernel/Adam_1layer_conv2/biaslayer_conv2/bias/Adamlayer_conv2/bias/Adam_1layer_conv2/kernellayer_conv2/kernel/Adamlayer_conv2/kernel/Adam_1layer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1layer_fc1/kernellayer_fc1/kernel/Adamlayer_fc1/kernel/Adam_1layer_fc_2/biaslayer_fc_2/bias/Adamlayer_fc_2/bias/Adam_1layer_fc_2/kernellayer_fc_2/kernel/Adamlayer_fc_2/kernel/Adam_1"/device:CPU:0*)
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
ą
save/RestoreV2/tensor_namesConst"/device:CPU:0*Ň
valueČBĹBbeta1_powerBbeta2_powerBglobal_stepBlayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc_2/biasBlayer_fc_2/bias/AdamBlayer_fc_2/bias/Adam_1Blayer_fc_2/kernelBlayer_fc_2/kernel/AdamBlayer_fc_2/kernel/Adam_1*
dtype0*
_output_shapes
:
Ť
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
˘
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*)
dtypes
2	*
_output_shapesn
l:::::::::::::::::::::::::::
Ą
save/AssignAssignbeta1_powersave/RestoreV2*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(
Ľ
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
 
save/Assign_2Assignglobal_stepsave/RestoreV2:2*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
Ž
save/Assign_3Assignlayer_conv1/biassave/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
ł
save/Assign_4Assignlayer_conv1/bias/Adamsave/RestoreV2:4*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(
ľ
save/Assign_5Assignlayer_conv1/bias/Adam_1save/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
ž
save/Assign_6Assignlayer_conv1/kernelsave/RestoreV2:6*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
Ă
save/Assign_7Assignlayer_conv1/kernel/Adamsave/RestoreV2:7*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 
Ĺ
save/Assign_8Assignlayer_conv1/kernel/Adam_1save/RestoreV2:8*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 
Ž
save/Assign_9Assignlayer_conv2/biassave/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
ľ
save/Assign_10Assignlayer_conv2/bias/Adamsave/RestoreV2:10*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv2/bias
ˇ
save/Assign_11Assignlayer_conv2/bias/Adam_1save/RestoreV2:11*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Ŕ
save/Assign_12Assignlayer_conv2/kernelsave/RestoreV2:12*&
_output_shapes
:  *
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(
Ĺ
save/Assign_13Assignlayer_conv2/kernel/Adamsave/RestoreV2:13*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  
Ç
save/Assign_14Assignlayer_conv2/kernel/Adam_1save/RestoreV2:14*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  
­
save/Assign_15Assignlayer_fc1/biassave/RestoreV2:15*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:
˛
save/Assign_16Assignlayer_fc1/bias/Adamsave/RestoreV2:16*
_output_shapes	
:*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(
´
save/Assign_17Assignlayer_fc1/bias/Adam_1save/RestoreV2:17*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ś
save/Assign_18Assignlayer_fc1/kernelsave/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:

ť
save/Assign_19Assignlayer_fc1/kernel/Adamsave/RestoreV2:19*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
˝
save/Assign_20Assignlayer_fc1/kernel/Adam_1save/RestoreV2:20*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel
Ž
save/Assign_21Assignlayer_fc_2/biassave/RestoreV2:21*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_fc_2/bias
ł
save/Assign_22Assignlayer_fc_2/bias/Adamsave/RestoreV2:22*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_fc_2/bias
ľ
save/Assign_23Assignlayer_fc_2/bias/Adam_1save/RestoreV2:23*
use_locking(*
T0*"
_class
loc:@layer_fc_2/bias*
validate_shape(*
_output_shapes
:
ˇ
save/Assign_24Assignlayer_fc_2/kernelsave/RestoreV2:24*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel
ź
save/Assign_25Assignlayer_fc_2/kernel/Adamsave/RestoreV2:25*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	
ž
save/Assign_26Assignlayer_fc_2/kernel/Adam_1save/RestoreV2:26*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	
Ů
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shardÔ
Ĺ

/tf_data_structured_function_wrapper_52oRgbbAY9U
arg0
tfrecorddataset2DWrapper for passing nested structures to and from tf.data functions.H
compression_typeConst"/device:CPU:0*
valueB B *
dtype0F
buffer_sizeConst"/device:CPU:0*
dtype0	*
valueB		 Rh
TFRecordDatasetTFRecordDatasetarg0compression_type:output:0buffer_size:output:0"/device:CPU:0"+
tfrecorddatasetTFRecordDataset:handle:0
â
2
_make_dataset_7CaUSlIqduU
batchdatasetv2h
TensorSliceDataset/ConstConst"/device:CPU:0*)
value B B../../data/test.tfrecord*
dtype0m
'TensorSliceDataset/flat_filenames/shapeConst"/device:CPU:0*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0§
!TensorSliceDataset/flat_filenamesReshape!TensorSliceDataset/Const:output:00TensorSliceDataset/flat_filenames/shape:output:0"/device:CPU:0*
T0*
Tshape0
TensorSliceDatasetTensorSliceDataset*TensorSliceDataset/flat_filenames:output:0"/device:CPU:0*
output_shapes
: *
Toutput_types
2Ć
FlatMapDatasetFlatMapDatasetTensorSliceDataset:handle:0"/device:CPU:0*
output_shapes
: *8
f3R1
/tf_data_structured_function_wrapper_52oRgbbAY9U*
output_types
2*

Targuments
 đ

MapDataset
MapDatasetFlatMapDataset:handle:0"/device:CPU:0*(
output_shapes
:@:@:: *8
f3R1
/tf_data_structured_function_wrapper_IJ2bRSPJECE*
output_types
2				*
use_inter_op_parallelism(*

Targuments
 L
RepeatDataset/countConst"/device:CPU:0*
value	B	 R*
dtype0	¤
RepeatDatasetRepeatDatasetMapDataset:handle:0RepeatDataset/count:output:0"/device:CPU:0*(
output_shapes
:@:@:: *
output_types
2				R
BatchDatasetV2/batch_sizeConst"/device:CPU:0*
dtype0	*
value	B	 R V
BatchDatasetV2/drop_remainderConst"/device:CPU:0*
value	B
 Z *
dtype0

BatchDatasetV2BatchDatasetV2RepeatDataset:handle:0"BatchDatasetV2/batch_size:output:0&BatchDatasetV2/drop_remainder:output:0"/device:CPU:0*
output_types
2				*\
output_shapesK
I:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙")
batchdatasetv2BatchDatasetV2:handle:0
¤
ł
/tf_data_structured_function_wrapper_IJ2bRSPJECE
arg0)
%parsesingleexample_parsesingleexample	+
'parsesingleexample_parsesingleexample_0	+
'parsesingleexample_parsesingleexample_1	+
'parsesingleexample_parsesingleexample_2	2DWrapper for passing nested structures to and from tf.data functions.P
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
valueB	 *
dtype0	
%ParseSingleExample/ParseSingleExampleParseSingleExamplearg0!ParseSingleExample/Const:output:0#ParseSingleExample/Const_1:output:0#ParseSingleExample/Const_2:output:0#ParseSingleExample/Const_3:output:0"/device:CPU:0*
Tdense
2				*

num_sparse *A

dense_keys3
1labelpacketLengthpacketPayloadrecordTypes*
sparse_types
 *'
dense_shapes
: :@::@*
sparse_keys
 "]
%parsesingleexample_parsesingleexample4ParseSingleExample/ParseSingleExample:dense_values:3"_
'parsesingleexample_parsesingleexample_04ParseSingleExample/ParseSingleExample:dense_values:1"_
'parsesingleexample_parsesingleexample_14ParseSingleExample/ParseSingleExample:dense_values:2"_
'parsesingleexample_parsesingleexample_24ParseSingleExample/ParseSingleExample:dense_values:0"ęŢZĘjť     ÷	fo|HýÖAJÝö
¤33
:
Add
x"T
y"T
z"T"
Ttype:
2	
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

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
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
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
ě
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

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

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
B
Equal
x"T
y"T
z
"
Ttype:
2	

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

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
ref"dtype
is_initialized
"
dtypetype

IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0
C
IteratorToStringHandle
resource_handle
string_handle


LogicalNot
x

y

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Ô
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
î
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

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
Ż
OneShotIterator

handle"
dataset_factoryfunc"
output_types
list(type)(0" 
output_shapeslist(shape)(0"
	containerstring "
shared_namestring 
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

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
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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

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
ö
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

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
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
Ttype*1.12.02v1.12.0-0-ga6d8ffae09

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 

global_step
VariableV2*
shared_name *
_class
loc:@global_step*
	container *
shape: *
dtype0	*
_output_shapes
: 
˛
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
m
ConstConst"/device:CPU:0*)
value B B../../data/test.tfrecord*
dtype0*
_output_shapes
: 
v
flat_filenames/shapeConst"/device:CPU:0*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
x
flat_filenamesReshapeConstflat_filenames/shape"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:
V
countConst"/device:CPU:0*
value	B	 R*
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
drop_remainderConst"/device:CPU:0*
dtype0
*
_output_shapes
: *
value	B
 Z 

OneShotIteratorOneShotIterator"/device:CPU:0*
_output_shapes
: *0
dataset_factoryR
_make_dataset_7CaUSlIqduU*
shared_name *\
output_shapesK
I:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	container *
output_types
2				
h
IteratorToStringHandleIteratorToStringHandleOneShotIterator"/device:CPU:0*
_output_shapes
: 

IteratorGetNextIteratorGetNextOneShotIterator"/device:CPU:0*
output_types
2				*\
output_shapesK
I:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*]
_output_shapesK
I:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

CastCastIteratorGetNext:2"/device:CPU:0*

SrcT0	*
Truncate( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
f
Reshape/shapeConst*
_output_shapes
:*%
valueB"˙˙˙˙           *
dtype0
o
ReshapeReshapeCastReshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  
ł
3layer_conv1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
_class
loc:@layer_conv1/kernel*%
valueB"             

1layer_conv1/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_conv1/kernel*
valueB
 *ž*
dtype0*
_output_shapes
: 

1layer_conv1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*
valueB
 *>
˙
;layer_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv1/kernel/Initializer/random_uniform/shape*
T0*%
_class
loc:@layer_conv1/kernel*
seed2 *
dtype0*&
_output_shapes
: *

seed 
ć
1layer_conv1/kernel/Initializer/random_uniform/subSub1layer_conv1/kernel/Initializer/random_uniform/max1layer_conv1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel

1layer_conv1/kernel/Initializer/random_uniform/mulMul;layer_conv1/kernel/Initializer/random_uniform/RandomUniform1layer_conv1/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 
ň
-layer_conv1/kernel/Initializer/random_uniformAdd1layer_conv1/kernel/Initializer/random_uniform/mul1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 
˝
layer_conv1/kernel
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: 
ç
layer_conv1/kernel/AssignAssignlayer_conv1/kernel-layer_conv1/kernel/Initializer/random_uniform*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 

layer_conv1/kernel/readIdentitylayer_conv1/kernel*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 

"layer_conv1/bias/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ą
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
Ę
layer_conv1/bias/AssignAssignlayer_conv1/bias"layer_conv1/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
}
layer_conv1/bias/readIdentitylayer_conv1/bias*#
_class
loc:@layer_conv1/bias*
_output_shapes
: *
T0
j
layer_conv1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
ć
layer_conv1/Conv2DConv2DReshapelayer_conv1/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   

layer_conv1/BiasAddBiasAddlayer_conv1/Conv2Dlayer_conv1/bias/read*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
T0
g
layer_conv1/ReluRelulayer_conv1/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   
ż
max_pooling2d/MaxPoolMaxPoollayer_conv1/Relu*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
ł
3layer_conv2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
_class
loc:@layer_conv2/kernel*%
valueB"              

1layer_conv2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
valueB
 *ěŃ˝*
dtype0

1layer_conv2/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *ěŃ=*
dtype0*
_output_shapes
: 
˙
;layer_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv2/kernel/Initializer/random_uniform/shape*
T0*%
_class
loc:@layer_conv2/kernel*
seed2 *
dtype0*&
_output_shapes
:  *

seed 
ć
1layer_conv2/kernel/Initializer/random_uniform/subSub1layer_conv2/kernel/Initializer/random_uniform/max1layer_conv2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv2/kernel*
_output_shapes
: 

1layer_conv2/kernel/Initializer/random_uniform/mulMul;layer_conv2/kernel/Initializer/random_uniform/RandomUniform1layer_conv2/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  
ň
-layer_conv2/kernel/Initializer/random_uniformAdd1layer_conv2/kernel/Initializer/random_uniform/mul1layer_conv2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  
˝
layer_conv2/kernel
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  
ç
layer_conv2/kernel/AssignAssignlayer_conv2/kernel-layer_conv2/kernel/Initializer/random_uniform*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(

layer_conv2/kernel/readIdentitylayer_conv2/kernel*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  

"layer_conv2/bias/Initializer/zerosConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
valueB *    
Ą
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
Ę
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
j
layer_conv2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ô
layer_conv2/Conv2DConv2Dmax_pooling2d/MaxPoollayer_conv2/kernel/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

layer_conv2/BiasAddBiasAddlayer_conv2/Conv2Dlayer_conv2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
g
layer_conv2/ReluRelulayer_conv2/BiasAdd*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Á
max_pooling2d_1/MaxPoolMaxPoollayer_conv2/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
l
Flatten/flatten/ShapeShapemax_pooling2d_1/MaxPool*
_output_shapes
:*
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
%Flatten/flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
É
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
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

Flatten/flatten/Reshape/shapePackFlatten/flatten/strided_sliceFlatten/flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:

Flatten/flatten/ReshapeReshapemax_pooling2d_1/MaxPoolFlatten/flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
1layer_fc1/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_fc1/kernel*
valueB"      *
dtype0*
_output_shapes
:

/layer_fc1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel*
valueB
 *AW˝*
dtype0

/layer_fc1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel*
valueB
 *AW=
ó
9layer_fc1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1layer_fc1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0* 
_output_shapes
:
*

seed *
T0*#
_class
loc:@layer_fc1/kernel
Ţ
/layer_fc1/kernel/Initializer/random_uniform/subSub/layer_fc1/kernel/Initializer/random_uniform/max/layer_fc1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_fc1/kernel*
_output_shapes
: 
ň
/layer_fc1/kernel/Initializer/random_uniform/mulMul9layer_fc1/kernel/Initializer/random_uniform/RandomUniform/layer_fc1/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:

ä
+layer_fc1/kernel/Initializer/random_uniformAdd/layer_fc1/kernel/Initializer/random_uniform/mul/layer_fc1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:

­
layer_fc1/kernel
VariableV2*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ů
layer_fc1/kernel/AssignAssignlayer_fc1/kernel+layer_fc1/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:


layer_fc1/kernel/readIdentitylayer_fc1/kernel*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:


 layer_fc1/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*!
_class
loc:@layer_fc1/bias*
valueB*    

layer_fc1/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:
Ă
layer_fc1/bias/AssignAssignlayer_fc1/bias layer_fc1/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:
x
layer_fc1/bias/readIdentitylayer_fc1/bias*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:*
T0
Ł
layer_fc1/MatMulMatMulFlatten/flatten/Reshapelayer_fc1/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0

layer_fc1/BiasAddBiasAddlayer_fc1/MatMullayer_fc1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
layer_fc1/ReluRelulayer_fc1/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
2layer_fc_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*$
_class
loc:@layer_fc_2/kernel*
valueB"      

0layer_fc_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *$
_class
loc:@layer_fc_2/kernel*
valueB
 *o}Rž

0layer_fc_2/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@layer_fc_2/kernel*
valueB
 *o}R>*
dtype0*
_output_shapes
: 
ő
:layer_fc_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2layer_fc_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	*

seed *
T0*$
_class
loc:@layer_fc_2/kernel*
seed2 
â
0layer_fc_2/kernel/Initializer/random_uniform/subSub0layer_fc_2/kernel/Initializer/random_uniform/max0layer_fc_2/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@layer_fc_2/kernel*
_output_shapes
: 
ő
0layer_fc_2/kernel/Initializer/random_uniform/mulMul:layer_fc_2/kernel/Initializer/random_uniform/RandomUniform0layer_fc_2/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@layer_fc_2/kernel*
_output_shapes
:	
ç
,layer_fc_2/kernel/Initializer/random_uniformAdd0layer_fc_2/kernel/Initializer/random_uniform/mul0layer_fc_2/kernel/Initializer/random_uniform/min*
_output_shapes
:	*
T0*$
_class
loc:@layer_fc_2/kernel
­
layer_fc_2/kernel
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *$
_class
loc:@layer_fc_2/kernel*
	container *
shape:	
Ü
layer_fc_2/kernel/AssignAssignlayer_fc_2/kernel,layer_fc_2/kernel/Initializer/random_uniform*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	*
use_locking(

layer_fc_2/kernel/readIdentitylayer_fc_2/kernel*$
_class
loc:@layer_fc_2/kernel*
_output_shapes
:	*
T0

!layer_fc_2/bias/Initializer/zerosConst*"
_class
loc:@layer_fc_2/bias*
valueB*    *
dtype0*
_output_shapes
:

layer_fc_2/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_fc_2/bias
Ć
layer_fc_2/bias/AssignAssignlayer_fc_2/bias!layer_fc_2/bias/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_fc_2/bias*
validate_shape(*
_output_shapes
:
z
layer_fc_2/bias/readIdentitylayer_fc_2/bias*
T0*"
_class
loc:@layer_fc_2/bias*
_output_shapes
:

layer_fc_2/MatMulMatMullayer_fc1/Relulayer_fc_2/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 

layer_fc_2/BiasAddBiasAddlayer_fc_2/MatMullayer_fc_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
SoftmaxSoftmaxlayer_fc_2/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
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
:˙˙˙˙˙˙˙˙˙*

Tidx0
z
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeIteratorGetNext:3*
out_type0*
_output_shapes
:*
T0	
ĺ
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitslayer_fc_2/BiasAddIteratorGetNext:3*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tlabels0	*
T0
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:

MeanMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
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
 *  ?*
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

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
 
gradients/Mean_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
gradients/Mean_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

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

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

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0

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

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*´
message¨ĽCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
°
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ą
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ô
-gradients/layer_fc_2/BiasAdd_grad/BiasAddGradBiasAddGradZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*
T0*
data_formatNHWC*
_output_shapes
:
Ç
2gradients/layer_fc_2/BiasAdd_grad/tuple/group_depsNoOp[^gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul.^gradients/layer_fc_2/BiasAdd_grad/BiasAddGrad
ř
:gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependencyIdentityZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul3^gradients/layer_fc_2/BiasAdd_grad/tuple/group_deps*
T0*m
_classc
a_loc:@gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

<gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/layer_fc_2/BiasAdd_grad/BiasAddGrad3^gradients/layer_fc_2/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/layer_fc_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ţ
'gradients/layer_fc_2/MatMul_grad/MatMulMatMul:gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependencylayer_fc_2/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(
Ď
)gradients/layer_fc_2/MatMul_grad/MatMul_1MatMullayer_fc1/Relu:gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	*
transpose_a(*
transpose_b( 

1gradients/layer_fc_2/MatMul_grad/tuple/group_depsNoOp(^gradients/layer_fc_2/MatMul_grad/MatMul*^gradients/layer_fc_2/MatMul_grad/MatMul_1

9gradients/layer_fc_2/MatMul_grad/tuple/control_dependencyIdentity'gradients/layer_fc_2/MatMul_grad/MatMul2^gradients/layer_fc_2/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/layer_fc_2/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

;gradients/layer_fc_2/MatMul_grad/tuple/control_dependency_1Identity)gradients/layer_fc_2/MatMul_grad/MatMul_12^gradients/layer_fc_2/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/layer_fc_2/MatMul_grad/MatMul_1*
_output_shapes
:	
°
&gradients/layer_fc1/Relu_grad/ReluGradReluGrad9gradients/layer_fc_2/MatMul_grad/tuple/control_dependencylayer_fc1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
,gradients/layer_fc1/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/layer_fc1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

1gradients/layer_fc1/BiasAdd_grad/tuple/group_depsNoOp-^gradients/layer_fc1/BiasAdd_grad/BiasAddGrad'^gradients/layer_fc1/Relu_grad/ReluGrad

9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/Relu_grad/ReluGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_fc1/Relu_grad/ReluGrad*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/layer_fc1/BiasAdd_grad/BiasAddGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/layer_fc1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Ű
&gradients/layer_fc1/MatMul_grad/MatMulMatMul9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencylayer_fc1/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(
×
(gradients/layer_fc1/MatMul_grad/MatMul_1MatMulFlatten/flatten/Reshape9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
*
transpose_a(*
transpose_b( *
T0

0gradients/layer_fc1/MatMul_grad/tuple/group_depsNoOp'^gradients/layer_fc1/MatMul_grad/MatMul)^gradients/layer_fc1/MatMul_grad/MatMul_1

8gradients/layer_fc1/MatMul_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/MatMul_grad/MatMul1^gradients/layer_fc1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_fc1/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1Identity(gradients/layer_fc1/MatMul_grad/MatMul_11^gradients/layer_fc1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_fc1/MatMul_grad/MatMul_1* 
_output_shapes
:


,gradients/Flatten/flatten/Reshape_grad/ShapeShapemax_pooling2d_1/MaxPool*
out_type0*
_output_shapes
:*
T0
é
.gradients/Flatten/flatten/Reshape_grad/ReshapeReshape8gradients/layer_fc1/MatMul_grad/tuple/control_dependency,gradients/Flatten/flatten/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Š
2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradlayer_conv2/Relumax_pooling2d_1/MaxPool.gradients/Flatten/flatten/Reshape_grad/Reshape*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
´
(gradients/layer_conv2/Relu_grad/ReluGradReluGrad2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradlayer_conv2/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Ł
.gradients/layer_conv2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 

3gradients/layer_conv2/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv2/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv2/Relu_grad/ReluGrad

;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv2/Relu_grad/ReluGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_conv2/Relu_grad/ReluGrad*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv2/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/layer_conv2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
Ś
(gradients/layer_conv2/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoollayer_conv2/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
ô
5gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/layer_conv2/Conv2D_grad/ShapeNlayer_conv2/kernel/read;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
í
6gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool*gradients/layer_conv2/Conv2D_grad/ShapeN:1;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:  *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ť
2gradients/layer_conv2/Conv2D_grad/tuple/group_depsNoOp7^gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter6^gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput
ś
:gradients/layer_conv2/Conv2D_grad/tuple/control_dependencyIdentity5gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput3^gradients/layer_conv2/Conv2D_grad/tuple/group_deps*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*H
_class>
<:loc:@gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput
ą
<gradients/layer_conv2/Conv2D_grad/tuple/control_dependency_1Identity6gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter3^gradients/layer_conv2/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:  
ą
0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradlayer_conv1/Relumax_pooling2d/MaxPool:gradients/layer_conv2/Conv2D_grad/tuple/control_dependency*
ksize
*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
T0*
data_formatNHWC*
strides

˛
(gradients/layer_conv1/Relu_grad/ReluGradReluGrad0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradlayer_conv1/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
T0
Ł
.gradients/layer_conv1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 

3gradients/layer_conv1/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv1/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv1/Relu_grad/ReluGrad

;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv1/Relu_grad/ReluGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_conv1/Relu_grad/ReluGrad*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   

=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv1/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/layer_conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 

(gradients/layer_conv1/Conv2D_grad/ShapeNShapeNReshapelayer_conv1/kernel/read* 
_output_shapes
::*
T0*
out_type0*
N
ô
5gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/layer_conv1/Conv2D_grad/ShapeNlayer_conv1/kernel/read;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  
ß
6gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshape*gradients/layer_conv1/Conv2D_grad/ShapeN:1;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: *
	dilations
*
T0*
strides
*
data_formatNHWC
Ť
2gradients/layer_conv1/Conv2D_grad/tuple/group_depsNoOp7^gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter6^gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput
ś
:gradients/layer_conv1/Conv2D_grad/tuple/control_dependencyIdentity5gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput3^gradients/layer_conv1/Conv2D_grad/tuple/group_deps*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  *
T0*H
_class>
<:loc:@gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput
ą
<gradients/layer_conv1/Conv2D_grad/tuple/control_dependency_1Identity6gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter3^gradients/layer_conv1/Conv2D_grad/tuple/group_deps*&
_output_shapes
: *
T0*I
_class?
=;loc:@gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter

beta1_power/initial_valueConst*#
_class
loc:@layer_conv1/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 

beta1_power
VariableV2*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: *
dtype0
ł
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
o
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*#
_class
loc:@layer_conv1/bias

beta2_power/initial_valueConst*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
valueB
 *wž?*
dtype0

beta2_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias
ł
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
o
beta2_power/readIdentitybeta2_power*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 
ľ
)layer_conv1/kernel/Adam/Initializer/zerosConst*%
_class
loc:@layer_conv1/kernel*%
valueB *    *
dtype0*&
_output_shapes
: 
Â
layer_conv1/kernel/Adam
VariableV2*
shape: *
dtype0*&
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel*
	container 
í
layer_conv1/kernel/Adam/AssignAssignlayer_conv1/kernel/Adam)layer_conv1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 

layer_conv1/kernel/Adam/readIdentitylayer_conv1/kernel/Adam*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 
ˇ
+layer_conv1/kernel/Adam_1/Initializer/zerosConst*%
_class
loc:@layer_conv1/kernel*%
valueB *    *
dtype0*&
_output_shapes
: 
Ä
layer_conv1/kernel/Adam_1
VariableV2*
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: 
ó
 layer_conv1/kernel/Adam_1/AssignAssignlayer_conv1/kernel/Adam_1+layer_conv1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 

layer_conv1/kernel/Adam_1/readIdentitylayer_conv1/kernel/Adam_1*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 

'layer_conv1/bias/Adam/Initializer/zerosConst*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0
Ś
layer_conv1/bias/Adam
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container 
Ů
layer_conv1/bias/Adam/AssignAssignlayer_conv1/bias/Adam'layer_conv1/bias/Adam/Initializer/zeros*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(

layer_conv1/bias/Adam/readIdentitylayer_conv1/bias/Adam*#
_class
loc:@layer_conv1/bias*
_output_shapes
: *
T0

)layer_conv1/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
¨
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
ß
layer_conv1/bias/Adam_1/AssignAssignlayer_conv1/bias/Adam_1)layer_conv1/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias

layer_conv1/bias/Adam_1/readIdentitylayer_conv1/bias/Adam_1*
_output_shapes
: *
T0*#
_class
loc:@layer_conv1/bias
š
9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@layer_conv2/kernel*%
valueB"              *
dtype0*
_output_shapes
:

/layer_conv2/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0

)layer_conv2/kernel/Adam/Initializer/zerosFill9layer_conv2/kernel/Adam/Initializer/zeros/shape_as_tensor/layer_conv2/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@layer_conv2/kernel*

index_type0*&
_output_shapes
:  
Â
layer_conv2/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  
í
layer_conv2/kernel/Adam/AssignAssignlayer_conv2/kernel/Adam)layer_conv2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  

layer_conv2/kernel/Adam/readIdentitylayer_conv2/kernel/Adam*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  
ť
;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@layer_conv2/kernel*%
valueB"              *
dtype0*
_output_shapes
:

1layer_conv2/kernel/Adam_1/Initializer/zeros/ConstConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+layer_conv2/kernel/Adam_1/Initializer/zerosFill;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensor1layer_conv2/kernel/Adam_1/Initializer/zeros/Const*
T0*%
_class
loc:@layer_conv2/kernel*

index_type0*&
_output_shapes
:  
Ä
layer_conv2/kernel/Adam_1
VariableV2*%
_class
loc:@layer_conv2/kernel*
	container *
shape:  *
dtype0*&
_output_shapes
:  *
shared_name 
ó
 layer_conv2/kernel/Adam_1/AssignAssignlayer_conv2/kernel/Adam_1+layer_conv2/kernel/Adam_1/Initializer/zeros*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0

layer_conv2/kernel/Adam_1/readIdentitylayer_conv2/kernel/Adam_1*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  

'layer_conv2/bias/Adam/Initializer/zerosConst*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0
Ś
layer_conv2/bias/Adam
VariableV2*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: *
dtype0
Ů
layer_conv2/bias/Adam/AssignAssignlayer_conv2/bias/Adam'layer_conv2/bias/Adam/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(

layer_conv2/bias/Adam/readIdentitylayer_conv2/bias/Adam*
T0*#
_class
loc:@layer_conv2/bias*
_output_shapes
: 

)layer_conv2/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
¨
layer_conv2/bias/Adam_1
VariableV2*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: *
dtype0
ß
layer_conv2/bias/Adam_1/AssignAssignlayer_conv2/bias/Adam_1)layer_conv2/bias/Adam_1/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(

layer_conv2/bias/Adam_1/readIdentitylayer_conv2/bias/Adam_1*
T0*#
_class
loc:@layer_conv2/bias*
_output_shapes
: 
­
7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_fc1/kernel*
valueB"      *
dtype0*
_output_shapes
:

-layer_fc1/kernel/Adam/Initializer/zeros/ConstConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ů
'layer_fc1/kernel/Adam/Initializer/zerosFill7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensor-layer_fc1/kernel/Adam/Initializer/zeros/Const*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:

˛
layer_fc1/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container *
shape:

ß
layer_fc1/kernel/Adam/AssignAssignlayer_fc1/kernel/Adam'layer_fc1/kernel/Adam/Initializer/zeros*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel

layer_fc1/kernel/Adam/readIdentitylayer_fc1/kernel/Adam*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:

Ż
9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_fc1/kernel*
valueB"      *
dtype0*
_output_shapes
:

/layer_fc1/kernel/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
˙
)layer_fc1/kernel/Adam_1/Initializer/zerosFill9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/layer_fc1/kernel/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:

´
layer_fc1/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *#
_class
loc:@layer_fc1/kernel*
	container *
shape:

ĺ
layer_fc1/kernel/Adam_1/AssignAssignlayer_fc1/kernel/Adam_1)layer_fc1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:


layer_fc1/kernel/Adam_1/readIdentitylayer_fc1/kernel/Adam_1* 
_output_shapes
:
*
T0*#
_class
loc:@layer_fc1/kernel

%layer_fc1/bias/Adam/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB*    *
dtype0*
_output_shapes	
:
¤
layer_fc1/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:
Ň
layer_fc1/bias/Adam/AssignAssignlayer_fc1/bias/Adam%layer_fc1/bias/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:

layer_fc1/bias/Adam/readIdentitylayer_fc1/bias/Adam*
T0*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:

'layer_fc1/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB*    *
dtype0*
_output_shapes	
:
Ś
layer_fc1/bias/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *!
_class
loc:@layer_fc1/bias
Ř
layer_fc1/bias/Adam_1/AssignAssignlayer_fc1/bias/Adam_1'layer_fc1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:

layer_fc1/bias/Adam_1/readIdentitylayer_fc1/bias/Adam_1*
T0*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:
Ż
8layer_fc_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@layer_fc_2/kernel*
valueB"      *
dtype0*
_output_shapes
:

.layer_fc_2/kernel/Adam/Initializer/zeros/ConstConst*$
_class
loc:@layer_fc_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ü
(layer_fc_2/kernel/Adam/Initializer/zerosFill8layer_fc_2/kernel/Adam/Initializer/zeros/shape_as_tensor.layer_fc_2/kernel/Adam/Initializer/zeros/Const*
T0*$
_class
loc:@layer_fc_2/kernel*

index_type0*
_output_shapes
:	
˛
layer_fc_2/kernel/Adam
VariableV2*
shared_name *$
_class
loc:@layer_fc_2/kernel*
	container *
shape:	*
dtype0*
_output_shapes
:	
â
layer_fc_2/kernel/Adam/AssignAssignlayer_fc_2/kernel/Adam(layer_fc_2/kernel/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel

layer_fc_2/kernel/Adam/readIdentitylayer_fc_2/kernel/Adam*$
_class
loc:@layer_fc_2/kernel*
_output_shapes
:	*
T0
ą
:layer_fc_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@layer_fc_2/kernel*
valueB"      *
dtype0*
_output_shapes
:

0layer_fc_2/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *$
_class
loc:@layer_fc_2/kernel*
valueB
 *    *
dtype0

*layer_fc_2/kernel/Adam_1/Initializer/zerosFill:layer_fc_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor0layer_fc_2/kernel/Adam_1/Initializer/zeros/Const*
T0*$
_class
loc:@layer_fc_2/kernel*

index_type0*
_output_shapes
:	
´
layer_fc_2/kernel/Adam_1
VariableV2*
_output_shapes
:	*
shared_name *$
_class
loc:@layer_fc_2/kernel*
	container *
shape:	*
dtype0
č
layer_fc_2/kernel/Adam_1/AssignAssignlayer_fc_2/kernel/Adam_1*layer_fc_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	

layer_fc_2/kernel/Adam_1/readIdentitylayer_fc_2/kernel/Adam_1*
T0*$
_class
loc:@layer_fc_2/kernel*
_output_shapes
:	

&layer_fc_2/bias/Adam/Initializer/zerosConst*"
_class
loc:@layer_fc_2/bias*
valueB*    *
dtype0*
_output_shapes
:
¤
layer_fc_2/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_fc_2/bias*
	container *
shape:
Ő
layer_fc_2/bias/Adam/AssignAssignlayer_fc_2/bias/Adam&layer_fc_2/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_fc_2/bias

layer_fc_2/bias/Adam/readIdentitylayer_fc_2/bias/Adam*
T0*"
_class
loc:@layer_fc_2/bias*
_output_shapes
:

(layer_fc_2/bias/Adam_1/Initializer/zerosConst*"
_class
loc:@layer_fc_2/bias*
valueB*    *
dtype0*
_output_shapes
:
Ś
layer_fc_2/bias/Adam_1
VariableV2*
shared_name *"
_class
loc:@layer_fc_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
Ű
layer_fc_2/bias/Adam_1/AssignAssignlayer_fc_2/bias/Adam_1(layer_fc_2/bias/Adam_1/Initializer/zeros*"
_class
loc:@layer_fc_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

layer_fc_2/bias/Adam_1/readIdentitylayer_fc_2/bias/Adam_1*
T0*"
_class
loc:@layer_fc_2/bias*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *ˇŃ8*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
O

Adam/beta2Const*
valueB
 *wž?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 

(Adam/update_layer_conv1/kernel/ApplyAdam	ApplyAdamlayer_conv1/kernellayer_conv1/kernel/Adamlayer_conv1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/layer_conv1/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*%
_class
loc:@layer_conv1/kernel*
use_nesterov( *&
_output_shapes
: 

&Adam/update_layer_conv1/bias/ApplyAdam	ApplyAdamlayer_conv1/biaslayer_conv1/bias/Adamlayer_conv1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1*
T0*#
_class
loc:@layer_conv1/bias*
use_nesterov( *
_output_shapes
: *
use_locking( 

(Adam/update_layer_conv2/kernel/ApplyAdam	ApplyAdamlayer_conv2/kernellayer_conv2/kernel/Adamlayer_conv2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/layer_conv2/Conv2D_grad/tuple/control_dependency_1*
T0*%
_class
loc:@layer_conv2/kernel*
use_nesterov( *&
_output_shapes
:  *
use_locking( 

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

&Adam/update_layer_fc1/kernel/ApplyAdam	ApplyAdamlayer_fc1/kernellayer_fc1/kernel/Adamlayer_fc1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1*
use_nesterov( * 
_output_shapes
:
*
use_locking( *
T0*#
_class
loc:@layer_fc1/kernel
ř
$Adam/update_layer_fc1/bias/ApplyAdam	ApplyAdamlayer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1*!
_class
loc:@layer_fc1/bias*
use_nesterov( *
_output_shapes	
:*
use_locking( *
T0

'Adam/update_layer_fc_2/kernel/ApplyAdam	ApplyAdamlayer_fc_2/kernellayer_fc_2/kernel/Adamlayer_fc_2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/layer_fc_2/MatMul_grad/tuple/control_dependency_1*$
_class
loc:@layer_fc_2/kernel*
use_nesterov( *
_output_shapes
:	*
use_locking( *
T0
ý
%Adam/update_layer_fc_2/bias/ApplyAdam	ApplyAdamlayer_fc_2/biaslayer_fc_2/bias/Adamlayer_fc_2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@layer_fc_2/bias*
use_nesterov( *
_output_shapes
:
˝
Adam/mulMulbeta1_power/read
Adam/beta1'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam&^Adam/update_layer_fc_2/bias/ApplyAdam(^Adam/update_layer_fc_2/kernel/ApplyAdam*
_output_shapes
: *
T0*#
_class
loc:@layer_conv1/bias

Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*#
_class
loc:@layer_conv1/bias
ż

Adam/mul_1Mulbeta2_power/read
Adam/beta2'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam&^Adam/update_layer_fc_2/bias/ApplyAdam(^Adam/update_layer_fc_2/kernel/ApplyAdam*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
ű
Adam/updateNoOp^Adam/Assign^Adam/Assign_1'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam&^Adam/update_layer_fc_2/bias/ApplyAdam(^Adam/update_layer_fc_2/kernel/ApplyAdam
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
EqualEqualArgMaxIteratorGetNext:3*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
ToFloatCastEqual*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0
*
Truncate( 

 accuracy/total/Initializer/zerosConst*!
_class
loc:@accuracy/total*
valueB
 *    *
dtype0*
_output_shapes
: 

accuracy/total
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *!
_class
loc:@accuracy/total
ž
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

 accuracy/count/Initializer/zerosConst*
_output_shapes
: *!
_class
loc:@accuracy/count*
valueB
 *    *
dtype0

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
ž
accuracy/count/AssignAssignaccuracy/count accuracy/count/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@accuracy/count*
validate_shape(*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*
_output_shapes
: *
T0*!
_class
loc:@accuracy/count
O
accuracy/SizeSizeToFloat*
out_type0*
_output_shapes
: *
T0
g
accuracy/ToFloatCastaccuracy/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
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

accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
use_locking( *
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 
¤
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
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/zeros_like_1*
_output_shapes
: *
T0
|
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/zeros_like_1*
T0*
_output_shapes
: 

mean_1/total/Initializer/zerosConst*
_class
loc:@mean_1/total*
valueB
 *    *
dtype0*
_output_shapes
: 

mean_1/total
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@mean_1/total*
	container 
ś
mean_1/total/AssignAssignmean_1/totalmean_1/total/Initializer/zeros*
use_locking(*
T0*
_class
loc:@mean_1/total*
validate_shape(*
_output_shapes
: 
m
mean_1/total/readIdentitymean_1/total*
T0*
_class
loc:@mean_1/total*
_output_shapes
: 

mean_1/count/Initializer/zerosConst*
_class
loc:@mean_1/count*
valueB
 *    *
dtype0*
_output_shapes
: 

mean_1/count
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@mean_1/count
ś
mean_1/count/AssignAssignmean_1/countmean_1/count/Initializer/zeros*
use_locking(*
T0*
_class
loc:@mean_1/count*
validate_shape(*
_output_shapes
: 
m
mean_1/count/readIdentitymean_1/count*
T0*
_class
loc:@mean_1/count*
_output_shapes
: 
M
mean_1/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
c
mean_1/ToFloatCastmean_1/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
O
mean_1/ConstConst*
_output_shapes
: *
valueB *
dtype0
c

mean_1/SumSumMeanmean_1/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

mean_1/AssignAdd	AssignAddmean_1/total
mean_1/Sum*
use_locking( *
T0*
_class
loc:@mean_1/total*
_output_shapes
: 

mean_1/AssignAdd_1	AssignAddmean_1/countmean_1/ToFloat^Mean*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@mean_1/count
`
mean_1/truedivRealDivmean_1/total/readmean_1/count/read*
T0*
_output_shapes
: 
V
mean_1/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
`
mean_1/GreaterGreatermean_1/count/readmean_1/zeros_like*
_output_shapes
: *
T0
j
mean_1/valueSelectmean_1/Greatermean_1/truedivmean_1/zeros_like*
T0*
_output_shapes
: 
b
mean_1/truediv_1RealDivmean_1/AssignAddmean_1/AssignAdd_1*
_output_shapes
: *
T0
X
mean_1/zeros_like_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
e
mean_1/Greater_1Greatermean_1/AssignAdd_1mean_1/zeros_like_1*
_output_shapes
: *
T0
t
mean_1/update_opSelectmean_1/Greater_1mean_1/truediv_1mean_1/zeros_like_1*
T0*
_output_shapes
: 
:

group_depsNoOp^accuracy/update_op^mean_1/update_op
{
eval_step/Initializer/zerosConst*
_class
loc:@eval_step*
value	B	 R *
dtype0	*
_output_shapes
: 

	eval_step
VariableV2*
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@eval_step*
	container *
shape: 
Ş
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@eval_step
d
eval_step/readIdentity	eval_step*
_output_shapes
: *
T0	*
_class
loc:@eval_step
Q
AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 

	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@eval_step
U
readIdentity	eval_step
^AssignAdd^group_deps*
T0	*
_output_shapes
: 
;
IdentityIdentityread*
_output_shapes
: *
T0	
Ą
initNoOp^beta1_power/Assign^beta2_power/Assign^global_step/Assign^layer_conv1/bias/Adam/Assign^layer_conv1/bias/Adam_1/Assign^layer_conv1/bias/Assign^layer_conv1/kernel/Adam/Assign!^layer_conv1/kernel/Adam_1/Assign^layer_conv1/kernel/Assign^layer_conv2/bias/Adam/Assign^layer_conv2/bias/Adam_1/Assign^layer_conv2/bias/Assign^layer_conv2/kernel/Adam/Assign!^layer_conv2/kernel/Adam_1/Assign^layer_conv2/kernel/Assign^layer_fc1/bias/Adam/Assign^layer_fc1/bias/Adam_1/Assign^layer_fc1/bias/Assign^layer_fc1/kernel/Adam/Assign^layer_fc1/kernel/Adam_1/Assign^layer_fc1/kernel/Assign^layer_fc_2/bias/Adam/Assign^layer_fc_2/bias/Adam_1/Assign^layer_fc_2/bias/Assign^layer_fc_2/kernel/Adam/Assign ^layer_fc_2/kernel/Adam_1/Assign^layer_fc_2/kernel/Assign

init_1NoOp
$
group_deps_1NoOp^init^init_1

4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
Ż
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedlayer_conv1/kernel*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
Ť
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedlayer_conv1/bias*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Ż
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedlayer_conv2/kernel*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
dtype0
Ť
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedlayer_conv2/bias*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
Ť
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedlayer_fc1/kernel*
dtype0*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel
§
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializedlayer_fc1/bias*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
­
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializedlayer_fc_2/kernel*
_output_shapes
: *$
_class
loc:@layer_fc_2/kernel*
dtype0
Š
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedlayer_fc_2/bias*"
_class
loc:@layer_fc_2/bias*
dtype0*
_output_shapes
: 
Ś
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializedbeta1_power*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
§
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitializedbeta2_power*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv1/bias
ľ
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitializedlayer_conv1/kernel/Adam*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
ˇ
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitializedlayer_conv1/kernel/Adam_1*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
ą
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializedlayer_conv1/bias/Adam*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
dtype0
ł
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializedlayer_conv1/bias/Adam_1*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
ľ
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializedlayer_conv2/kernel/Adam*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
ˇ
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializedlayer_conv2/kernel/Adam_1*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
ą
7report_uninitialized_variables/IsVariableInitialized_17IsVariableInitializedlayer_conv2/bias/Adam*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
ł
7report_uninitialized_variables/IsVariableInitialized_18IsVariableInitializedlayer_conv2/bias/Adam_1*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
dtype0
ą
7report_uninitialized_variables/IsVariableInitialized_19IsVariableInitializedlayer_fc1/kernel/Adam*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
ł
7report_uninitialized_variables/IsVariableInitialized_20IsVariableInitializedlayer_fc1/kernel/Adam_1*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
­
7report_uninitialized_variables/IsVariableInitialized_21IsVariableInitializedlayer_fc1/bias/Adam*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Ż
7report_uninitialized_variables/IsVariableInitialized_22IsVariableInitializedlayer_fc1/bias/Adam_1*
dtype0*
_output_shapes
: *!
_class
loc:@layer_fc1/bias
ł
7report_uninitialized_variables/IsVariableInitialized_23IsVariableInitializedlayer_fc_2/kernel/Adam*
dtype0*
_output_shapes
: *$
_class
loc:@layer_fc_2/kernel
ľ
7report_uninitialized_variables/IsVariableInitialized_24IsVariableInitializedlayer_fc_2/kernel/Adam_1*$
_class
loc:@layer_fc_2/kernel*
dtype0*
_output_shapes
: 
Ż
7report_uninitialized_variables/IsVariableInitialized_25IsVariableInitializedlayer_fc_2/bias/Adam*"
_class
loc:@layer_fc_2/bias*
dtype0*
_output_shapes
: 
ą
7report_uninitialized_variables/IsVariableInitialized_26IsVariableInitializedlayer_fc_2/bias/Adam_1*"
_class
loc:@layer_fc_2/bias*
dtype0*
_output_shapes
: 
¨
7report_uninitialized_variables/IsVariableInitialized_27IsVariableInitializedaccuracy/total*!
_class
loc:@accuracy/total*
dtype0*
_output_shapes
: 
¨
7report_uninitialized_variables/IsVariableInitialized_28IsVariableInitializedaccuracy/count*!
_class
loc:@accuracy/count*
dtype0*
_output_shapes
: 
¤
7report_uninitialized_variables/IsVariableInitialized_29IsVariableInitializedmean_1/total*
_class
loc:@mean_1/total*
dtype0*
_output_shapes
: 
¤
7report_uninitialized_variables/IsVariableInitialized_30IsVariableInitializedmean_1/count*
_class
loc:@mean_1/count*
dtype0*
_output_shapes
: 

7report_uninitialized_variables/IsVariableInitialized_31IsVariableInitialized	eval_step*
_class
loc:@eval_step*
dtype0	*
_output_shapes
: 

$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_117report_uninitialized_variables/IsVariableInitialized_127report_uninitialized_variables/IsVariableInitialized_137report_uninitialized_variables/IsVariableInitialized_147report_uninitialized_variables/IsVariableInitialized_157report_uninitialized_variables/IsVariableInitialized_167report_uninitialized_variables/IsVariableInitialized_177report_uninitialized_variables/IsVariableInitialized_187report_uninitialized_variables/IsVariableInitialized_197report_uninitialized_variables/IsVariableInitialized_207report_uninitialized_variables/IsVariableInitialized_217report_uninitialized_variables/IsVariableInitialized_227report_uninitialized_variables/IsVariableInitialized_237report_uninitialized_variables/IsVariableInitialized_247report_uninitialized_variables/IsVariableInitialized_257report_uninitialized_variables/IsVariableInitialized_267report_uninitialized_variables/IsVariableInitialized_277report_uninitialized_variables/IsVariableInitialized_287report_uninitialized_variables/IsVariableInitialized_297report_uninitialized_variables/IsVariableInitialized_307report_uninitialized_variables/IsVariableInitialized_31"/device:CPU:0*
T0
*

axis *
N *
_output_shapes
: 

)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack"/device:CPU:0*
_output_shapes
: 

$report_uninitialized_variables/ConstConst"/device:CPU:0*
valueB Bglobal_stepBlayer_conv1/kernelBlayer_conv1/biasBlayer_conv2/kernelBlayer_conv2/biasBlayer_fc1/kernelBlayer_fc1/biasBlayer_fc_2/kernelBlayer_fc_2/biasBbeta1_powerBbeta2_powerBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc_2/kernel/AdamBlayer_fc_2/kernel/Adam_1Blayer_fc_2/bias/AdamBlayer_fc_2/bias/Adam_1Baccuracy/totalBaccuracy/countBmean_1/totalBmean_1/countB	eval_step*
dtype0*
_output_shapes
: 

1report_uninitialized_variables/boolean_mask/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0

?report_uninitialized_variables/boolean_mask/strided_slice/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
č
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2"/device:CPU:0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0

Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices"/device:CPU:0*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

3report_uninitialized_variables/boolean_mask/Shape_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
đ
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask

3report_uninitialized_variables/boolean_mask/Shape_2Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
đ
;report_uninitialized_variables/boolean_mask/strided_slice_2StridedSlice3report_uninitialized_variables/boolean_mask/Shape_2Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackCreport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: 
ž
;report_uninitialized_variables/boolean_mask/concat/values_1Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*
_output_shapes
:*
T0*

axis *
N

7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
÷
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/strided_slice_1;report_uninitialized_variables/boolean_mask/concat/values_1;report_uninitialized_variables/boolean_mask/strided_slice_27report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*
_output_shapes
:*

Tidx0*
T0*
N
Ú
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
: 

;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
ę
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
: 
˛
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Ĺ
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
*
T0	

9report_uninitialized_variables/boolean_mask/GatherV2/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
Ĺ
4report_uninitialized_variables/boolean_mask/GatherV2GatherV23report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze9report_uninitialized_variables/boolean_mask/GatherV2/axis"/device:CPU:0*
Tindices0	*
Tparams0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Taxis0
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
ž
concatConcatV24report_uninitialized_variables/boolean_mask/GatherV2$report_uninitialized_resources/Constconcat/axis*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
Ą
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
ą
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedlayer_conv1/kernel*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*
dtype0
­
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedlayer_conv1/bias*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
ą
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedlayer_conv2/kernel*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
­
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedlayer_conv2/bias*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
­
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedlayer_fc1/kernel*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Š
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializedlayer_fc1/bias*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Ż
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializedlayer_fc_2/kernel*
_output_shapes
: *$
_class
loc:@layer_fc_2/kernel*
dtype0
Ť
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedlayer_fc_2/bias*"
_class
loc:@layer_fc_2/bias*
dtype0*
_output_shapes
: 
¨
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializedbeta1_power*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Š
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitializedbeta2_power*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
ˇ
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitializedlayer_conv1/kernel/Adam*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel
š
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitializedlayer_conv1/kernel/Adam_1*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*
dtype0
ł
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializedlayer_conv1/bias/Adam*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv1/bias
ľ
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializedlayer_conv1/bias/Adam_1*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
dtype0
ˇ
9report_uninitialized_variables_1/IsVariableInitialized_15IsVariableInitializedlayer_conv2/kernel/Adam*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel
š
9report_uninitialized_variables_1/IsVariableInitialized_16IsVariableInitializedlayer_conv2/kernel/Adam_1*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
ł
9report_uninitialized_variables_1/IsVariableInitialized_17IsVariableInitializedlayer_conv2/bias/Adam*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv2/bias
ľ
9report_uninitialized_variables_1/IsVariableInitialized_18IsVariableInitializedlayer_conv2/bias/Adam_1*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
ł
9report_uninitialized_variables_1/IsVariableInitialized_19IsVariableInitializedlayer_fc1/kernel/Adam*
dtype0*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel
ľ
9report_uninitialized_variables_1/IsVariableInitialized_20IsVariableInitializedlayer_fc1/kernel/Adam_1*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Ż
9report_uninitialized_variables_1/IsVariableInitialized_21IsVariableInitializedlayer_fc1/bias/Adam*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
ą
9report_uninitialized_variables_1/IsVariableInitialized_22IsVariableInitializedlayer_fc1/bias/Adam_1*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
ľ
9report_uninitialized_variables_1/IsVariableInitialized_23IsVariableInitializedlayer_fc_2/kernel/Adam*$
_class
loc:@layer_fc_2/kernel*
dtype0*
_output_shapes
: 
ˇ
9report_uninitialized_variables_1/IsVariableInitialized_24IsVariableInitializedlayer_fc_2/kernel/Adam_1*$
_class
loc:@layer_fc_2/kernel*
dtype0*
_output_shapes
: 
ą
9report_uninitialized_variables_1/IsVariableInitialized_25IsVariableInitializedlayer_fc_2/bias/Adam*"
_class
loc:@layer_fc_2/bias*
dtype0*
_output_shapes
: 
ł
9report_uninitialized_variables_1/IsVariableInitialized_26IsVariableInitializedlayer_fc_2/bias/Adam_1*
dtype0*
_output_shapes
: *"
_class
loc:@layer_fc_2/bias
¤
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_88report_uninitialized_variables_1/IsVariableInitialized_99report_uninitialized_variables_1/IsVariableInitialized_109report_uninitialized_variables_1/IsVariableInitialized_119report_uninitialized_variables_1/IsVariableInitialized_129report_uninitialized_variables_1/IsVariableInitialized_139report_uninitialized_variables_1/IsVariableInitialized_149report_uninitialized_variables_1/IsVariableInitialized_159report_uninitialized_variables_1/IsVariableInitialized_169report_uninitialized_variables_1/IsVariableInitialized_179report_uninitialized_variables_1/IsVariableInitialized_189report_uninitialized_variables_1/IsVariableInitialized_199report_uninitialized_variables_1/IsVariableInitialized_209report_uninitialized_variables_1/IsVariableInitialized_219report_uninitialized_variables_1/IsVariableInitialized_229report_uninitialized_variables_1/IsVariableInitialized_239report_uninitialized_variables_1/IsVariableInitialized_249report_uninitialized_variables_1/IsVariableInitialized_259report_uninitialized_variables_1/IsVariableInitialized_26"/device:CPU:0*
T0
*

axis *
N*
_output_shapes
:

+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack"/device:CPU:0*
_output_shapes
:
ź
&report_uninitialized_variables_1/ConstConst"/device:CPU:0*Ň
valueČBĹBglobal_stepBlayer_conv1/kernelBlayer_conv1/biasBlayer_conv2/kernelBlayer_conv2/biasBlayer_fc1/kernelBlayer_fc1/biasBlayer_fc_2/kernelBlayer_fc_2/biasBbeta1_powerBbeta2_powerBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc_2/kernel/AdamBlayer_fc_2/kernel/Adam_1Blayer_fc_2/bias/AdamBlayer_fc_2/bias/Adam_1*
dtype0*
_output_shapes
:

3report_uninitialized_variables_1/boolean_mask/ShapeConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ň
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2"/device:CPU:0*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:

Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices"/device:CPU:0*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

5report_uninitialized_variables_1/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ú
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

5report_uninitialized_variables_1/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ú
=report_uninitialized_variables_1/boolean_mask/strided_slice_2StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_2Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: 
Â
=report_uninitialized_variables_1/boolean_mask/concat/values_1Pack2report_uninitialized_variables_1/boolean_mask/Prod"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 

9report_uninitialized_variables_1/boolean_mask/concat/axisConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 

4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/strided_slice_1=report_uninitialized_variables_1/boolean_mask/concat/values_1=report_uninitialized_variables_1/boolean_mask/strided_slice_29report_uninitialized_variables_1/boolean_mask/concat/axis"/device:CPU:0*
_output_shapes
:*

Tidx0*
T0*
N
ŕ
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
_output_shapes
:*
T0*
Tshape0

=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
đ
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:
ś
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

É
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
*
T0	

;report_uninitialized_variables_1/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Í
6report_uninitialized_variables_1/boolean_mask/GatherV2GatherV25report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze;report_uninitialized_variables_1/boolean_mask/GatherV2/axis"/device:CPU:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
}
init_2NoOp^accuracy/count/Assign^accuracy/total/Assign^eval_step/Assign^mean_1/count/Assign^mean_1/total/Assign

init_all_tablesNoOp

init_3NoOp
8
group_deps_2NoOp^init_2^init_3^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_5bdc2a1954034de49f0fe1c1058813c0/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Ž
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*Ň
valueČBĹBbeta1_powerBbeta2_powerBglobal_stepBlayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc_2/biasBlayer_fc_2/bias/AdamBlayer_fc_2/bias/Adam_1Blayer_fc_2/kernelBlayer_fc_2/kernel/AdamBlayer_fc_2/kernel/Adam_1
¨
save/SaveV2/shape_and_slicesConst"/device:CPU:0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ú
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerglobal_steplayer_conv1/biaslayer_conv1/bias/Adamlayer_conv1/bias/Adam_1layer_conv1/kernellayer_conv1/kernel/Adamlayer_conv1/kernel/Adam_1layer_conv2/biaslayer_conv2/bias/Adamlayer_conv2/bias/Adam_1layer_conv2/kernellayer_conv2/kernel/Adamlayer_conv2/kernel/Adam_1layer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1layer_fc1/kernellayer_fc1/kernel/Adamlayer_fc1/kernel/Adam_1layer_fc_2/biaslayer_fc_2/bias/Adamlayer_fc_2/bias/Adam_1layer_fc_2/kernellayer_fc_2/kernel/Adamlayer_fc_2/kernel/Adam_1"/device:CPU:0*)
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
ą
save/RestoreV2/tensor_namesConst"/device:CPU:0*Ň
valueČBĹBbeta1_powerBbeta2_powerBglobal_stepBlayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc_2/biasBlayer_fc_2/bias/AdamBlayer_fc_2/bias/Adam_1Blayer_fc_2/kernelBlayer_fc_2/kernel/AdamBlayer_fc_2/kernel/Adam_1*
dtype0*
_output_shapes
:
Ť
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
˘
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	
Ą
save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
Ľ
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
 
save/Assign_2Assignglobal_stepsave/RestoreV2:2*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	
Ž
save/Assign_3Assignlayer_conv1/biassave/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
ł
save/Assign_4Assignlayer_conv1/bias/Adamsave/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
ľ
save/Assign_5Assignlayer_conv1/bias/Adam_1save/RestoreV2:5*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
ž
save/Assign_6Assignlayer_conv1/kernelsave/RestoreV2:6*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
Ă
save/Assign_7Assignlayer_conv1/kernel/Adamsave/RestoreV2:7*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel
Ĺ
save/Assign_8Assignlayer_conv1/kernel/Adam_1save/RestoreV2:8*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 
Ž
save/Assign_9Assignlayer_conv2/biassave/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
ľ
save/Assign_10Assignlayer_conv2/bias/Adamsave/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
ˇ
save/Assign_11Assignlayer_conv2/bias/Adam_1save/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
Ŕ
save/Assign_12Assignlayer_conv2/kernelsave/RestoreV2:12*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(
Ĺ
save/Assign_13Assignlayer_conv2/kernel/Adamsave/RestoreV2:13*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  
Ç
save/Assign_14Assignlayer_conv2/kernel/Adam_1save/RestoreV2:14*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  
­
save/Assign_15Assignlayer_fc1/biassave/RestoreV2:15*
_output_shapes	
:*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(
˛
save/Assign_16Assignlayer_fc1/bias/Adamsave/RestoreV2:16*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:
´
save/Assign_17Assignlayer_fc1/bias/Adam_1save/RestoreV2:17*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ś
save/Assign_18Assignlayer_fc1/kernelsave/RestoreV2:18* 
_output_shapes
:
*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(
ť
save/Assign_19Assignlayer_fc1/kernel/Adamsave/RestoreV2:19*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
˝
save/Assign_20Assignlayer_fc1/kernel/Adam_1save/RestoreV2:20*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
Ž
save/Assign_21Assignlayer_fc_2/biassave/RestoreV2:21*
use_locking(*
T0*"
_class
loc:@layer_fc_2/bias*
validate_shape(*
_output_shapes
:
ł
save/Assign_22Assignlayer_fc_2/bias/Adamsave/RestoreV2:22*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_fc_2/bias
ľ
save/Assign_23Assignlayer_fc_2/bias/Adam_1save/RestoreV2:23*"
_class
loc:@layer_fc_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ˇ
save/Assign_24Assignlayer_fc_2/kernelsave/RestoreV2:24*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	
ź
save/Assign_25Assignlayer_fc_2/kernel/Adamsave/RestoreV2:25*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	
ž
save/Assign_26Assignlayer_fc_2/kernel/Adam_1save/RestoreV2:26*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	
Ů
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shardÔ
Ĺ

/tf_data_structured_function_wrapper_52oRgbbAY9U
arg0
tfrecorddataset2DWrapper for passing nested structures to and from tf.data functions.H
compression_typeConst"/device:CPU:0*
valueB B *
dtype0F
buffer_sizeConst"/device:CPU:0*
valueB		 R*
dtype0	h
TFRecordDatasetTFRecordDatasetarg0compression_type:output:0buffer_size:output:0"/device:CPU:0"+
tfrecorddatasetTFRecordDataset:handle:0
â
2
_make_dataset_7CaUSlIqduU
batchdatasetv2h
TensorSliceDataset/ConstConst"/device:CPU:0*)
value B B../../data/test.tfrecord*
dtype0m
'TensorSliceDataset/flat_filenames/shapeConst"/device:CPU:0*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0§
!TensorSliceDataset/flat_filenamesReshape!TensorSliceDataset/Const:output:00TensorSliceDataset/flat_filenames/shape:output:0"/device:CPU:0*
T0*
Tshape0
TensorSliceDatasetTensorSliceDataset*TensorSliceDataset/flat_filenames:output:0"/device:CPU:0*
output_shapes
: *
Toutput_types
2Ć
FlatMapDatasetFlatMapDatasetTensorSliceDataset:handle:0"/device:CPU:0*
output_types
2*

Targuments
 *
output_shapes
: *8
f3R1
/tf_data_structured_function_wrapper_52oRgbbAY9Uđ

MapDataset
MapDatasetFlatMapDataset:handle:0"/device:CPU:0*

Targuments
 *(
output_shapes
:@:@:: *8
f3R1
/tf_data_structured_function_wrapper_IJ2bRSPJECE*
output_types
2				*
use_inter_op_parallelism(L
RepeatDataset/countConst"/device:CPU:0*
value	B	 R*
dtype0	¤
RepeatDatasetRepeatDatasetMapDataset:handle:0RepeatDataset/count:output:0"/device:CPU:0*
output_types
2				*(
output_shapes
:@:@:: R
BatchDatasetV2/batch_sizeConst"/device:CPU:0*
value	B	 R *
dtype0	V
BatchDatasetV2/drop_remainderConst"/device:CPU:0*
value	B
 Z *
dtype0

BatchDatasetV2BatchDatasetV2RepeatDataset:handle:0"BatchDatasetV2/batch_size:output:0&BatchDatasetV2/drop_remainder:output:0"/device:CPU:0*
output_types
2				*\
output_shapesK
I:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙")
batchdatasetv2BatchDatasetV2:handle:0
¤
ł
/tf_data_structured_function_wrapper_IJ2bRSPJECE
arg0)
%parsesingleexample_parsesingleexample	+
'parsesingleexample_parsesingleexample_0	+
'parsesingleexample_parsesingleexample_1	+
'parsesingleexample_parsesingleexample_2	2DWrapper for passing nested structures to and from tf.data functions.P
ParseSingleExample/ConstConst"/device:CPU:0*
valueB	 *
dtype0	R
ParseSingleExample/Const_1Const"/device:CPU:0*
valueB	 *
dtype0	R
ParseSingleExample/Const_2Const"/device:CPU:0*
dtype0	*
valueB	 R
ParseSingleExample/Const_3Const"/device:CPU:0*
valueB	 *
dtype0	
%ParseSingleExample/ParseSingleExampleParseSingleExamplearg0!ParseSingleExample/Const:output:0#ParseSingleExample/Const_1:output:0#ParseSingleExample/Const_2:output:0#ParseSingleExample/Const_3:output:0"/device:CPU:0*A

dense_keys3
1labelpacketLengthpacketPayloadrecordTypes*
sparse_types
 *'
dense_shapes
: :@::@*
sparse_keys
 *
Tdense
2				*

num_sparse "_
'parsesingleexample_parsesingleexample_24ParseSingleExample/ParseSingleExample:dense_values:0"]
%parsesingleexample_parsesingleexample4ParseSingleExample/ParseSingleExample:dense_values:3"_
'parsesingleexample_parsesingleexample_04ParseSingleExample/ParseSingleExample:dense_values:1"_
'parsesingleexample_parsesingleexample_14ParseSingleExample/ParseSingleExample:dense_values:2"""
	iterators

OneShotIterator:0"Ç
trainable_variablesŻŹ
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
{
layer_fc_2/kernel:0layer_fc_2/kernel/Assignlayer_fc_2/kernel/read:02.layer_fc_2/kernel/Initializer/random_uniform:08
j
layer_fc_2/bias:0layer_fc_2/bias/Assignlayer_fc_2/bias/read:02#layer_fc_2/bias/Initializer/zeros:08"
init_op

group_deps_1"W
ready_for_local_init_op<
:
8report_uninitialized_variables_1/boolean_mask/GatherV2:0"
	eval_step

eval_step:0"Z
metric_variablesF
D
accuracy/total:0
accuracy/count:0
mean_1/total:0
mean_1/count:0"ń
local_variablesÝÚ
d
accuracy/total:0accuracy/total/Assignaccuracy/total/read:02"accuracy/total/Initializer/zeros:0
d
accuracy/count:0accuracy/count/Assignaccuracy/count/read:02"accuracy/count/Initializer/zeros:0
\
mean_1/total:0mean_1/total/Assignmean_1/total/read:02 mean_1/total/Initializer/zeros:0
\
mean_1/count:0mean_1/count/Assignmean_1/count/read:02 mean_1/count/Initializer/zeros:0
P
eval_step:0eval_step/Assigneval_step/read:02eval_step/Initializer/zeros:0"!
local_init_op

group_deps_2"Á
	variablesł°
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
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
{
layer_fc_2/kernel:0layer_fc_2/kernel/Assignlayer_fc_2/kernel/read:02.layer_fc_2/kernel/Initializer/random_uniform:08
j
layer_fc_2/bias:0layer_fc_2/bias/Assignlayer_fc_2/bias/read:02#layer_fc_2/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0

layer_conv1/kernel/Adam:0layer_conv1/kernel/Adam/Assignlayer_conv1/kernel/Adam/read:02+layer_conv1/kernel/Adam/Initializer/zeros:0

layer_conv1/kernel/Adam_1:0 layer_conv1/kernel/Adam_1/Assign layer_conv1/kernel/Adam_1/read:02-layer_conv1/kernel/Adam_1/Initializer/zeros:0

layer_conv1/bias/Adam:0layer_conv1/bias/Adam/Assignlayer_conv1/bias/Adam/read:02)layer_conv1/bias/Adam/Initializer/zeros:0

layer_conv1/bias/Adam_1:0layer_conv1/bias/Adam_1/Assignlayer_conv1/bias/Adam_1/read:02+layer_conv1/bias/Adam_1/Initializer/zeros:0

layer_conv2/kernel/Adam:0layer_conv2/kernel/Adam/Assignlayer_conv2/kernel/Adam/read:02+layer_conv2/kernel/Adam/Initializer/zeros:0

layer_conv2/kernel/Adam_1:0 layer_conv2/kernel/Adam_1/Assign layer_conv2/kernel/Adam_1/read:02-layer_conv2/kernel/Adam_1/Initializer/zeros:0

layer_conv2/bias/Adam:0layer_conv2/bias/Adam/Assignlayer_conv2/bias/Adam/read:02)layer_conv2/bias/Adam/Initializer/zeros:0

layer_conv2/bias/Adam_1:0layer_conv2/bias/Adam_1/Assignlayer_conv2/bias/Adam_1/read:02+layer_conv2/bias/Adam_1/Initializer/zeros:0

layer_fc1/kernel/Adam:0layer_fc1/kernel/Adam/Assignlayer_fc1/kernel/Adam/read:02)layer_fc1/kernel/Adam/Initializer/zeros:0

layer_fc1/kernel/Adam_1:0layer_fc1/kernel/Adam_1/Assignlayer_fc1/kernel/Adam_1/read:02+layer_fc1/kernel/Adam_1/Initializer/zeros:0
x
layer_fc1/bias/Adam:0layer_fc1/bias/Adam/Assignlayer_fc1/bias/Adam/read:02'layer_fc1/bias/Adam/Initializer/zeros:0

layer_fc1/bias/Adam_1:0layer_fc1/bias/Adam_1/Assignlayer_fc1/bias/Adam_1/read:02)layer_fc1/bias/Adam_1/Initializer/zeros:0

layer_fc_2/kernel/Adam:0layer_fc_2/kernel/Adam/Assignlayer_fc_2/kernel/Adam/read:02*layer_fc_2/kernel/Adam/Initializer/zeros:0

layer_fc_2/kernel/Adam_1:0layer_fc_2/kernel/Adam_1/Assignlayer_fc_2/kernel/Adam_1/read:02,layer_fc_2/kernel/Adam_1/Initializer/zeros:0
|
layer_fc_2/bias/Adam:0layer_fc_2/bias/Adam/Assignlayer_fc_2/bias/Adam/read:02(layer_fc_2/bias/Adam/Initializer/zeros:0

layer_fc_2/bias/Adam_1:0layer_fc_2/bias/Adam_1/Assignlayer_fc_2/bias/Adam_1/read:02*layer_fc_2/bias/Adam_1/Initializer/zeros:0"
ready_op


concat:0"J
savers@>
<
save/Const:0save/Identity:0save/restore_all (5 @F8"
train_op

Adam"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0=,-       <Aű	eŚ|HýÖAč*

accuracyË_?

loss/ëđ>\ZętU       ×ßÁ	ľČ|HýÖAč*F
D
checkpoint_pathB1 B+./checkpoints_tutorial18-2/model.ckpt-20200T;ú