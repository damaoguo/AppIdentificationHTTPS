       ЃK"	  Р'§жAbrain.Event:2іЖЄБ     КЮЙ	фж'§жA"
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
В
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
џџџџџџџџџ*
dtype0
x
flat_filenamesReshapeConstflat_filenames/shape"/device:CPU:0*
_output_shapes
:*
T0*
Tshape0
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
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ*
	container *
output_types
2				
h
IteratorToStringHandleIteratorToStringHandleOneShotIterator"/device:CPU:0*
_output_shapes
: 

IteratorGetNextIteratorGetNextOneShotIterator"/device:CPU:0*\
output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ*
output_types
2				

CastCastIteratorGetNext:2"/device:CPU:0*
Truncate( *(
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
f
Reshape/shapeConst*
_output_shapes
:*%
valueB"џџџџ           *
dtype0
o
ReshapeReshapeCastReshape/shape*/
_output_shapes
:џџџџџџџџџ  *
T0*
Tshape0
Г
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
 *О*
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
џ
;layer_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: *

seed *
T0*%
_class
loc:@layer_conv1/kernel*
seed2 
ц
1layer_conv1/kernel/Initializer/random_uniform/subSub1layer_conv1/kernel/Initializer/random_uniform/max1layer_conv1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel

1layer_conv1/kernel/Initializer/random_uniform/mulMul;layer_conv1/kernel/Initializer/random_uniform/RandomUniform1layer_conv1/kernel/Initializer/random_uniform/sub*&
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel
ђ
-layer_conv1/kernel/Initializer/random_uniformAdd1layer_conv1/kernel/Initializer/random_uniform/mul1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 
Н
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
ч
layer_conv1/kernel/AssignAssignlayer_conv1/kernel-layer_conv1/kernel/Initializer/random_uniform*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 

layer_conv1/kernel/readIdentitylayer_conv1/kernel*&
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel

"layer_conv1/bias/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ё
layer_conv1/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: 
Ъ
layer_conv1/bias/AssignAssignlayer_conv1/bias"layer_conv1/bias/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias
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
ц
layer_conv1/Conv2DConv2DReshapelayer_conv1/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ   *
	dilations
*
T0

layer_conv1/BiasAddBiasAddlayer_conv1/Conv2Dlayer_conv1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ   
g
layer_conv1/ReluRelulayer_conv1/BiasAdd*/
_output_shapes
:џџџџџџџџџ   *
T0
П
max_pooling2d/MaxPoolMaxPoollayer_conv1/Relu*/
_output_shapes
:џџџџџџџџџ *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
Г
3layer_conv2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
_class
loc:@layer_conv2/kernel*%
valueB"              

1layer_conv2/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *ьбН*
dtype0*
_output_shapes
: 

1layer_conv2/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *ьб=*
dtype0*
_output_shapes
: 
џ
;layer_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv2/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:  *

seed *
T0*%
_class
loc:@layer_conv2/kernel*
seed2 
ц
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
ђ
-layer_conv2/kernel/Initializer/random_uniformAdd1layer_conv2/kernel/Initializer/random_uniform/mul1layer_conv2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  
Н
layer_conv2/kernel
VariableV2*
	container *
shape:  *
dtype0*&
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel
ч
layer_conv2/kernel/AssignAssignlayer_conv2/kernel-layer_conv2/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel
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
Ё
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
Ъ
layer_conv2/bias/AssignAssignlayer_conv2/bias"layer_conv2/bias/Initializer/zeros*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
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
є
layer_conv2/Conv2DConv2Dmax_pooling2d/MaxPoollayer_conv2/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ *
	dilations


layer_conv2/BiasAddBiasAddlayer_conv2/Conv2Dlayer_conv2/bias/read*/
_output_shapes
:џџџџџџџџџ *
T0*
data_formatNHWC
g
layer_conv2/ReluRelulayer_conv2/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ 
С
max_pooling2d_1/MaxPoolMaxPoollayer_conv2/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ 
l
Flatten/flatten/ShapeShapemax_pooling2d_1/MaxPool*
T0*
out_type0*
_output_shapes
:
m
#Flatten/flatten/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
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
Щ
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
Flatten/flatten/Reshape/shape/1Const*
valueB :
џџџџџџџџџ*
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
:џџџџџџџџџ
Ї
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
 *AWН*
dtype0*
_output_shapes
: 

/layer_fc1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *AW=*
dtype0*
_output_shapes
: 
ѓ
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
о
/layer_fc1/kernel/Initializer/random_uniform/subSub/layer_fc1/kernel/Initializer/random_uniform/max/layer_fc1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_fc1/kernel*
_output_shapes
: 
ђ
/layer_fc1/kernel/Initializer/random_uniform/mulMul9layer_fc1/kernel/Initializer/random_uniform/RandomUniform/layer_fc1/kernel/Initializer/random_uniform/sub*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
*
T0
ф
+layer_fc1/kernel/Initializer/random_uniformAdd/layer_fc1/kernel/Initializer/random_uniform/mul/layer_fc1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:

­
layer_fc1/kernel
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
й
layer_fc1/kernel/AssignAssignlayer_fc1/kernel+layer_fc1/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel

layer_fc1/kernel/readIdentitylayer_fc1/kernel*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:
*
T0
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
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *!
_class
loc:@layer_fc1/bias
У
layer_fc1/bias/AssignAssignlayer_fc1/bias layer_fc1/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:
x
layer_fc1/bias/readIdentitylayer_fc1/bias*
_output_shapes	
:*
T0*!
_class
loc:@layer_fc1/bias
Ѓ
layer_fc1/MatMulMatMulFlatten/flatten/Reshapelayer_fc1/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 

layer_fc1/BiasAddBiasAddlayer_fc1/MatMullayer_fc1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
\
layer_fc1/ReluRelulayer_fc1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
Љ
2layer_fc_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*$
_class
loc:@layer_fc_2/kernel*
valueB"      *
dtype0

0layer_fc_2/kernel/Initializer/random_uniform/minConst*$
_class
loc:@layer_fc_2/kernel*
valueB
 *o}RО*
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
ѕ
:layer_fc_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2layer_fc_2/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes
:	*

seed *
T0*$
_class
loc:@layer_fc_2/kernel
т
0layer_fc_2/kernel/Initializer/random_uniform/subSub0layer_fc_2/kernel/Initializer/random_uniform/max0layer_fc_2/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@layer_fc_2/kernel*
_output_shapes
: 
ѕ
0layer_fc_2/kernel/Initializer/random_uniform/mulMul:layer_fc_2/kernel/Initializer/random_uniform/RandomUniform0layer_fc_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*
T0*$
_class
loc:@layer_fc_2/kernel
ч
,layer_fc_2/kernel/Initializer/random_uniformAdd0layer_fc_2/kernel/Initializer/random_uniform/mul0layer_fc_2/kernel/Initializer/random_uniform/min*$
_class
loc:@layer_fc_2/kernel*
_output_shapes
:	*
T0
­
layer_fc_2/kernel
VariableV2*$
_class
loc:@layer_fc_2/kernel*
	container *
shape:	*
dtype0*
_output_shapes
:	*
shared_name 
м
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
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_fc_2/bias*
	container *
shape:
Ц
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
:џџџџџџџџџ*
transpose_a( *
transpose_b( 

layer_fc_2/BiasAddBiasAddlayer_fc_2/MatMullayer_fc_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ
X
SoftmaxSoftmaxlayer_fc_2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ*

Tidx0
z
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeIteratorGetNext:3*
T0	*
out_type0*
_output_shapes
:
х
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitslayer_fc_2/BiasAddIteratorGetNext:3*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџ*
Tlabels0	*
T0
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:

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
 *  ?*
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
:џџџџџџџџџ
Ђ
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
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

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

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
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
:џџџџџџџџџ*
T0

gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:џџџџџџџџџ
­
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:џџџџџџџџџ*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
А
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0
Б
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
о
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:џџџџџџџџџ
д
-gradients/layer_fc_2/BiasAdd_grad/BiasAddGradBiasAddGradZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*
T0*
data_formatNHWC*
_output_shapes
:
Ч
2gradients/layer_fc_2/BiasAdd_grad/tuple/group_depsNoOp[^gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul.^gradients/layer_fc_2/BiasAdd_grad/BiasAddGrad
ј
:gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependencyIdentityZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul3^gradients/layer_fc_2/BiasAdd_grad/tuple/group_deps*
T0*m
_classc
a_loc:@gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*'
_output_shapes
:џџџџџџџџџ

<gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/layer_fc_2/BiasAdd_grad/BiasAddGrad3^gradients/layer_fc_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*@
_class6
42loc:@gradients/layer_fc_2/BiasAdd_grad/BiasAddGrad
о
'gradients/layer_fc_2/MatMul_grad/MatMulMatMul:gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependencylayer_fc_2/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(*
T0
Я
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
:џџџџџџџџџ

;gradients/layer_fc_2/MatMul_grad/tuple/control_dependency_1Identity)gradients/layer_fc_2/MatMul_grad/MatMul_12^gradients/layer_fc_2/MatMul_grad/tuple/group_deps*
_output_shapes
:	*
T0*<
_class2
0.loc:@gradients/layer_fc_2/MatMul_grad/MatMul_1
А
&gradients/layer_fc1/Relu_grad/ReluGradReluGrad9gradients/layer_fc_2/MatMul_grad/tuple/control_dependencylayer_fc1/Relu*(
_output_shapes
:џџџџџџџџџ*
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
9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/Relu_grad/ReluGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*9
_class/
-+loc:@gradients/layer_fc1/Relu_grad/ReluGrad*(
_output_shapes
:џџџџџџџџџ*
T0

;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/layer_fc1/BiasAdd_grad/BiasAddGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/layer_fc1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
л
&gradients/layer_fc1/MatMul_grad/MatMulMatMul9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencylayer_fc1/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(
з
(gradients/layer_fc1/MatMul_grad/MatMul_1MatMulFlatten/flatten/Reshape9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
*
transpose_a(*
transpose_b( 

0gradients/layer_fc1/MatMul_grad/tuple/group_depsNoOp'^gradients/layer_fc1/MatMul_grad/MatMul)^gradients/layer_fc1/MatMul_grad/MatMul_1

8gradients/layer_fc1/MatMul_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/MatMul_grad/MatMul1^gradients/layer_fc1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_fc1/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ

:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1Identity(gradients/layer_fc1/MatMul_grad/MatMul_11^gradients/layer_fc1/MatMul_grad/tuple/group_deps* 
_output_shapes
:
*
T0*;
_class1
/-loc:@gradients/layer_fc1/MatMul_grad/MatMul_1

,gradients/Flatten/flatten/Reshape_grad/ShapeShapemax_pooling2d_1/MaxPool*
T0*
out_type0*
_output_shapes
:
щ
.gradients/Flatten/flatten/Reshape_grad/ReshapeReshape8gradients/layer_fc1/MatMul_grad/tuple/control_dependency,gradients/Flatten/flatten/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ 
Љ
2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradlayer_conv2/Relumax_pooling2d_1/MaxPool.gradients/Flatten/flatten/Reshape_grad/Reshape*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ 
Д
(gradients/layer_conv2/Relu_grad/ReluGradReluGrad2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradlayer_conv2/Relu*
T0*/
_output_shapes
:џџџџџџџџџ 
Ѓ
.gradients/layer_conv2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 

3gradients/layer_conv2/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv2/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv2/Relu_grad/ReluGrad

;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv2/Relu_grad/ReluGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/layer_conv2/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ *
T0

=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv2/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*A
_class7
53loc:@gradients/layer_conv2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
І
(gradients/layer_conv2/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoollayer_conv2/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
є
5gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/layer_conv2/Conv2D_grad/ShapeNlayer_conv2/kernel/read;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*
strides
*
data_formatNHWC
э
6gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool*gradients/layer_conv2/Conv2D_grad/ShapeN:1;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:  *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ћ
2gradients/layer_conv2/Conv2D_grad/tuple/group_depsNoOp7^gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter6^gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput
Ж
:gradients/layer_conv2/Conv2D_grad/tuple/control_dependencyIdentity5gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput3^gradients/layer_conv2/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:џџџџџџџџџ 
Б
<gradients/layer_conv2/Conv2D_grad/tuple/control_dependency_1Identity6gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter3^gradients/layer_conv2/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:  
Б
0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradlayer_conv1/Relumax_pooling2d/MaxPool:gradients/layer_conv2/Conv2D_grad/tuple/control_dependency*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ   *
T0*
data_formatNHWC*
strides

В
(gradients/layer_conv1/Relu_grad/ReluGradReluGrad0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradlayer_conv1/Relu*/
_output_shapes
:џџџџџџџџџ   *
T0
Ѓ
.gradients/layer_conv1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv1/Relu_grad/ReluGrad*
_output_shapes
: *
T0*
data_formatNHWC

3gradients/layer_conv1/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv1/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv1/Relu_grad/ReluGrad

;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv1/Relu_grad/ReluGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*/
_output_shapes
:џџџџџџџџџ   *
T0*;
_class1
/-loc:@gradients/layer_conv1/Relu_grad/ReluGrad

=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv1/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/layer_conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 

(gradients/layer_conv1/Conv2D_grad/ShapeNShapeNReshapelayer_conv1/kernel/read*
out_type0*
N* 
_output_shapes
::*
T0
є
5gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/layer_conv1/Conv2D_grad/ShapeNlayer_conv1/kernel/read;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ  *
	dilations

п
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
Ћ
2gradients/layer_conv1/Conv2D_grad/tuple/group_depsNoOp7^gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter6^gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput
Ж
:gradients/layer_conv1/Conv2D_grad/tuple/control_dependencyIdentity5gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput3^gradients/layer_conv1/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:џџџџџџџџџ  
Б
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
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias
Г
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
o
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*#
_class
loc:@layer_conv1/bias

beta2_power/initial_valueConst*#
_class
loc:@layer_conv1/bias*
valueB
 *wО?*
dtype0*
_output_shapes
: 

beta2_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: 
Г
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias
o
beta2_power/readIdentitybeta2_power*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 
Е
)layer_conv1/kernel/Adam/Initializer/zerosConst*%
_class
loc:@layer_conv1/kernel*%
valueB *    *
dtype0*&
_output_shapes
: 
Т
layer_conv1/kernel/Adam
VariableV2*
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: 
э
layer_conv1/kernel/Adam/AssignAssignlayer_conv1/kernel/Adam)layer_conv1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 

layer_conv1/kernel/Adam/readIdentitylayer_conv1/kernel/Adam*&
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel
З
+layer_conv1/kernel/Adam_1/Initializer/zerosConst*%
_class
loc:@layer_conv1/kernel*%
valueB *    *
dtype0*&
_output_shapes
: 
Ф
layer_conv1/kernel/Adam_1
VariableV2*&
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel*
	container *
shape: *
dtype0
ѓ
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
'layer_conv1/bias/Adam/Initializer/zerosConst*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0
І
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
й
layer_conv1/bias/Adam/AssignAssignlayer_conv1/bias/Adam'layer_conv1/bias/Adam/Initializer/zeros*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(

layer_conv1/bias/Adam/readIdentitylayer_conv1/bias/Adam*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 

)layer_conv1/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ј
layer_conv1/bias/Adam_1
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container 
п
layer_conv1/bias/Adam_1/AssignAssignlayer_conv1/bias/Adam_1)layer_conv1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 

layer_conv1/bias/Adam_1/readIdentitylayer_conv1/bias/Adam_1*
_output_shapes
: *
T0*#
_class
loc:@layer_conv1/bias
Й
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
Т
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
э
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
Л
;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@layer_conv2/kernel*%
valueB"              *
dtype0*
_output_shapes
:

1layer_conv2/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
valueB
 *    *
dtype0

+layer_conv2/kernel/Adam_1/Initializer/zerosFill;layer_conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensor1layer_conv2/kernel/Adam_1/Initializer/zeros/Const*
T0*%
_class
loc:@layer_conv2/kernel*

index_type0*&
_output_shapes
:  
Ф
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
ѓ
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
'layer_conv2/bias/Adam/Initializer/zerosConst*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0
І
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
й
layer_conv2/bias/Adam/AssignAssignlayer_conv2/bias/Adam'layer_conv2/bias/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
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
Ј
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
п
layer_conv2/bias/Adam_1/AssignAssignlayer_conv2/bias/Adam_1)layer_conv2/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv2/bias

layer_conv2/bias/Adam_1/readIdentitylayer_conv2/bias/Adam_1*
_output_shapes
: *
T0*#
_class
loc:@layer_conv2/bias
­
7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@layer_fc1/kernel*
valueB"      *
dtype0*
_output_shapes
:

-layer_fc1/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0
љ
'layer_fc1/kernel/Adam/Initializer/zerosFill7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensor-layer_fc1/kernel/Adam/Initializer/zeros/Const*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:

В
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
п
layer_fc1/kernel/Adam/AssignAssignlayer_fc1/kernel/Adam'layer_fc1/kernel/Adam/Initializer/zeros* 
_output_shapes
:
*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(

layer_fc1/kernel/Adam/readIdentitylayer_fc1/kernel/Adam*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:

Џ
9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*#
_class
loc:@layer_fc1/kernel*
valueB"      

/layer_fc1/kernel/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
)layer_fc1/kernel/Adam_1/Initializer/zerosFill9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/layer_fc1/kernel/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:

Д
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
х
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
layer_fc1/kernel/Adam_1/readIdentitylayer_fc1/kernel/Adam_1*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:


%layer_fc1/bias/Adam/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB*    *
dtype0*
_output_shapes	
:
Є
layer_fc1/bias/Adam
VariableV2*
shared_name *!
_class
loc:@layer_fc1/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
в
layer_fc1/bias/Adam/AssignAssignlayer_fc1/bias/Adam%layer_fc1/bias/Adam/Initializer/zeros*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

layer_fc1/bias/Adam/readIdentitylayer_fc1/bias/Adam*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:*
T0

'layer_fc1/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB*    *
dtype0*
_output_shapes	
:
І
layer_fc1/bias/Adam_1
VariableV2*!
_class
loc:@layer_fc1/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
и
layer_fc1/bias/Adam_1/AssignAssignlayer_fc1/bias/Adam_1'layer_fc1/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias

layer_fc1/bias/Adam_1/readIdentitylayer_fc1/bias/Adam_1*!
_class
loc:@layer_fc1/bias*
_output_shapes	
:*
T0
Џ
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
ќ
(layer_fc_2/kernel/Adam/Initializer/zerosFill8layer_fc_2/kernel/Adam/Initializer/zeros/shape_as_tensor.layer_fc_2/kernel/Adam/Initializer/zeros/Const*
T0*$
_class
loc:@layer_fc_2/kernel*

index_type0*
_output_shapes
:	
В
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
т
layer_fc_2/kernel/Adam/AssignAssignlayer_fc_2/kernel/Adam(layer_fc_2/kernel/Adam/Initializer/zeros*
_output_shapes
:	*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(

layer_fc_2/kernel/Adam/readIdentitylayer_fc_2/kernel/Adam*
T0*$
_class
loc:@layer_fc_2/kernel*
_output_shapes
:	
Б
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
Д
layer_fc_2/kernel/Adam_1
VariableV2*
shared_name *$
_class
loc:@layer_fc_2/kernel*
	container *
shape:	*
dtype0*
_output_shapes
:	
ш
layer_fc_2/kernel/Adam_1/AssignAssignlayer_fc_2/kernel/Adam_1*layer_fc_2/kernel/Adam_1/Initializer/zeros*
_output_shapes
:	*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(

layer_fc_2/kernel/Adam_1/readIdentitylayer_fc_2/kernel/Adam_1*
_output_shapes
:	*
T0*$
_class
loc:@layer_fc_2/kernel

&layer_fc_2/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*"
_class
loc:@layer_fc_2/bias*
valueB*    
Є
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
е
layer_fc_2/bias/Adam/AssignAssignlayer_fc_2/bias/Adam&layer_fc_2/bias/Adam/Initializer/zeros*
T0*"
_class
loc:@layer_fc_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
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
І
layer_fc_2/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_fc_2/bias*
	container *
shape:
л
layer_fc_2/bias/Adam_1/AssignAssignlayer_fc_2/bias/Adam_1(layer_fc_2/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_fc_2/bias
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
 *Зб8*
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
 *wО?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wЬ+2*
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
Adam/beta2Adam/epsilon<gradients/layer_conv2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*%
_class
loc:@layer_conv2/kernel*
use_nesterov( *&
_output_shapes
:  

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
ј
$Adam/update_layer_fc1/bias/ApplyAdam	ApplyAdamlayer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@layer_fc1/bias*
use_nesterov( *
_output_shapes	
:
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
§
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
Н
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
П

Adam/mul_1Mulbeta2_power/read
Adam/beta2'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam&^Adam/update_layer_fc_2/bias/ApplyAdam(^Adam/update_layer_fc_2/kernel/ApplyAdam*
_output_shapes
: *
T0*#
_class
loc:@layer_conv1/bias
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
ћ
Adam/updateNoOp^Adam/Assign^Adam/Assign_1'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam&^Adam/update_layer_fc_2/bias/ApplyAdam(^Adam/update_layer_fc_2/kernel/ApplyAdam
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
:џџџџџџџџџ
c
ToFloatCastEqual*

SrcT0
*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0

 accuracy/total/Initializer/zerosConst*
_output_shapes
: *!
_class
loc:@accuracy/total*
valueB
 *    *
dtype0

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
О
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
VariableV2*
shared_name *!
_class
loc:@accuracy/count*
	container *
shape: *
dtype0*
_output_shapes
: 
О
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

accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*!
_class
loc:@accuracy/total*
_output_shapes
: *
use_locking( *
T0
Є
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
accuracy/GreaterGreateraccuracy/count/readaccuracy/zeros_like*
_output_shapes
: *
T0
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
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/zeros_like_1*
T0*
_output_shapes
: 
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
_class
loc:@mean_1/total*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Ж
mean_1/total/AssignAssignmean_1/totalmean_1/total/Initializer/zeros*
use_locking(*
T0*
_class
loc:@mean_1/total*
validate_shape(*
_output_shapes
: 
m
mean_1/total/readIdentitymean_1/total*
_output_shapes
: *
T0*
_class
loc:@mean_1/total

mean_1/count/Initializer/zerosConst*
_output_shapes
: *
_class
loc:@mean_1/count*
valueB
 *    *
dtype0

mean_1/count
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@mean_1/count*
	container 
Ж
mean_1/count/AssignAssignmean_1/countmean_1/count/Initializer/zeros*
T0*
_class
loc:@mean_1/count*
validate_shape(*
_output_shapes
: *
use_locking(
m
mean_1/count/readIdentitymean_1/count*
_class
loc:@mean_1/count*
_output_shapes
: *
T0
M
mean_1/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
c
mean_1/ToFloatCastmean_1/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
O
mean_1/ConstConst*
valueB *
dtype0*
_output_shapes
: 
c

mean_1/SumSumMeanmean_1/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
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
mean_1/AssignAdd_1	AssignAddmean_1/countmean_1/ToFloat^Mean*
use_locking( *
T0*
_class
loc:@mean_1/count*
_output_shapes
: 
`
mean_1/truedivRealDivmean_1/total/readmean_1/count/read*
_output_shapes
: *
T0
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
mean_1/Greater_1Greatermean_1/AssignAdd_1mean_1/zeros_like_1*
T0*
_output_shapes
: 
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
Њ
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@eval_step*
validate_shape(*
_output_shapes
: 
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
	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
use_locking(*
T0	*
_class
loc:@eval_step*
_output_shapes
: 
U
readIdentity	eval_step
^AssignAdd^group_deps*
T0	*
_output_shapes
: 
;
IdentityIdentityread*
T0	*
_output_shapes
: 
Ё
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
Џ
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedlayer_conv1/kernel*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
Ћ
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedlayer_conv1/bias*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Џ
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedlayer_conv2/kernel*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
Ћ
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedlayer_conv2/bias*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
dtype0
Ћ
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedlayer_fc1/kernel*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Ї
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializedlayer_fc1/bias*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
­
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializedlayer_fc_2/kernel*
dtype0*
_output_shapes
: *$
_class
loc:@layer_fc_2/kernel
Љ
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedlayer_fc_2/bias*
_output_shapes
: *"
_class
loc:@layer_fc_2/bias*
dtype0
І
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializedbeta1_power*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Ї
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitializedbeta2_power*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Е
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitializedlayer_conv1/kernel/Adam*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
З
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitializedlayer_conv1/kernel/Adam_1*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
Б
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializedlayer_conv1/bias/Adam*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv1/bias
Г
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializedlayer_conv1/bias/Adam_1*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Е
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializedlayer_conv2/kernel/Adam*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
З
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializedlayer_conv2/kernel/Adam_1*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel
Б
7report_uninitialized_variables/IsVariableInitialized_17IsVariableInitializedlayer_conv2/bias/Adam*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
Г
7report_uninitialized_variables/IsVariableInitialized_18IsVariableInitializedlayer_conv2/bias/Adam_1*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
Б
7report_uninitialized_variables/IsVariableInitialized_19IsVariableInitializedlayer_fc1/kernel/Adam*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Г
7report_uninitialized_variables/IsVariableInitialized_20IsVariableInitializedlayer_fc1/kernel/Adam_1*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
­
7report_uninitialized_variables/IsVariableInitialized_21IsVariableInitializedlayer_fc1/bias/Adam*
_output_shapes
: *!
_class
loc:@layer_fc1/bias*
dtype0
Џ
7report_uninitialized_variables/IsVariableInitialized_22IsVariableInitializedlayer_fc1/bias/Adam_1*
dtype0*
_output_shapes
: *!
_class
loc:@layer_fc1/bias
Г
7report_uninitialized_variables/IsVariableInitialized_23IsVariableInitializedlayer_fc_2/kernel/Adam*$
_class
loc:@layer_fc_2/kernel*
dtype0*
_output_shapes
: 
Е
7report_uninitialized_variables/IsVariableInitialized_24IsVariableInitializedlayer_fc_2/kernel/Adam_1*
_output_shapes
: *$
_class
loc:@layer_fc_2/kernel*
dtype0
Џ
7report_uninitialized_variables/IsVariableInitialized_25IsVariableInitializedlayer_fc_2/bias/Adam*
_output_shapes
: *"
_class
loc:@layer_fc_2/bias*
dtype0
Б
7report_uninitialized_variables/IsVariableInitialized_26IsVariableInitializedlayer_fc_2/bias/Adam_1*"
_class
loc:@layer_fc_2/bias*
dtype0*
_output_shapes
: 
Ј
7report_uninitialized_variables/IsVariableInitialized_27IsVariableInitializedaccuracy/total*
dtype0*
_output_shapes
: *!
_class
loc:@accuracy/total
Ј
7report_uninitialized_variables/IsVariableInitialized_28IsVariableInitializedaccuracy/count*
_output_shapes
: *!
_class
loc:@accuracy/count*
dtype0
Є
7report_uninitialized_variables/IsVariableInitialized_29IsVariableInitializedmean_1/total*
_output_shapes
: *
_class
loc:@mean_1/total*
dtype0
Є
7report_uninitialized_variables/IsVariableInitialized_30IsVariableInitializedmean_1/count*
_class
loc:@mean_1/count*
dtype0*
_output_shapes
: 

7report_uninitialized_variables/IsVariableInitialized_31IsVariableInitialized	eval_step*
_output_shapes
: *
_class
loc:@eval_step*
dtype0	
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
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ш
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2"/device:CPU:0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0

Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
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
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
№
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
Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
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
№
;report_uninitialized_variables/boolean_mask/strided_slice_2StridedSlice3report_uninitialized_variables/boolean_mask/Shape_2Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackCreport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
Index0*
T0
О
;report_uninitialized_variables/boolean_mask/concat/values_1Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
ї
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/strided_slice_1;report_uninitialized_variables/boolean_mask/concat/values_1;report_uninitialized_variables/boolean_mask/strided_slice_27report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*

Tidx0*
T0*
N*
_output_shapes
:
к
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
: 

;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
ъ
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
Tshape0*
_output_shapes
: *
T0

В
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*
T0
*'
_output_shapes
:џџџџџџџџџ
Х
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:џџџџџџџџџ

9report_uninitialized_variables/boolean_mask/GatherV2/axisConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
Х
4report_uninitialized_variables/boolean_mask/GatherV2GatherV23report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze9report_uninitialized_variables/boolean_mask/GatherV2/axis"/device:CPU:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџ
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
О
concatConcatV24report_uninitialized_variables/boolean_mask/GatherV2$report_uninitialized_resources/Constconcat/axis*
T0*
N*#
_output_shapes
:џџџџџџџџџ*

Tidx0
Ё
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
Б
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedlayer_conv1/kernel*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
­
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedlayer_conv1/bias*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv1/bias
Б
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedlayer_conv2/kernel*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
­
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedlayer_conv2/bias*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
dtype0
­
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedlayer_fc1/kernel*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Љ
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializedlayer_fc1/bias*
_output_shapes
: *!
_class
loc:@layer_fc1/bias*
dtype0
Џ
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializedlayer_fc_2/kernel*$
_class
loc:@layer_fc_2/kernel*
dtype0*
_output_shapes
: 
Ћ
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedlayer_fc_2/bias*"
_class
loc:@layer_fc_2/bias*
dtype0*
_output_shapes
: 
Ј
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializedbeta1_power*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv1/bias
Љ
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitializedbeta2_power*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
З
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitializedlayer_conv1/kernel/Adam*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv1/kernel
Й
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitializedlayer_conv1/kernel/Adam_1*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
Г
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializedlayer_conv1/bias/Adam*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Е
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializedlayer_conv1/bias/Adam_1*
dtype0*
_output_shapes
: *#
_class
loc:@layer_conv1/bias
З
9report_uninitialized_variables_1/IsVariableInitialized_15IsVariableInitializedlayer_conv2/kernel/Adam*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
Й
9report_uninitialized_variables_1/IsVariableInitialized_16IsVariableInitializedlayer_conv2/kernel/Adam_1*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
dtype0
Г
9report_uninitialized_variables_1/IsVariableInitialized_17IsVariableInitializedlayer_conv2/bias/Adam*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
dtype0
Е
9report_uninitialized_variables_1/IsVariableInitialized_18IsVariableInitializedlayer_conv2/bias/Adam_1*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
Г
9report_uninitialized_variables_1/IsVariableInitialized_19IsVariableInitializedlayer_fc1/kernel/Adam*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Е
9report_uninitialized_variables_1/IsVariableInitialized_20IsVariableInitializedlayer_fc1/kernel/Adam_1*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Џ
9report_uninitialized_variables_1/IsVariableInitialized_21IsVariableInitializedlayer_fc1/bias/Adam*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Б
9report_uninitialized_variables_1/IsVariableInitialized_22IsVariableInitializedlayer_fc1/bias/Adam_1*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Е
9report_uninitialized_variables_1/IsVariableInitialized_23IsVariableInitializedlayer_fc_2/kernel/Adam*
dtype0*
_output_shapes
: *$
_class
loc:@layer_fc_2/kernel
З
9report_uninitialized_variables_1/IsVariableInitialized_24IsVariableInitializedlayer_fc_2/kernel/Adam_1*$
_class
loc:@layer_fc_2/kernel*
dtype0*
_output_shapes
: 
Б
9report_uninitialized_variables_1/IsVariableInitialized_25IsVariableInitializedlayer_fc_2/bias/Adam*"
_class
loc:@layer_fc_2/bias*
dtype0*
_output_shapes
: 
Г
9report_uninitialized_variables_1/IsVariableInitialized_26IsVariableInitializedlayer_fc_2/bias/Adam_1*"
_class
loc:@layer_fc_2/bias*
dtype0*
_output_shapes
: 
Є
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
М
&report_uninitialized_variables_1/ConstConst"/device:CPU:0*в
valueШBХBglobal_stepBlayer_conv1/kernelBlayer_conv1/biasBlayer_conv2/kernelBlayer_conv2/biasBlayer_fc1/kernelBlayer_fc1/biasBlayer_fc_2/kernelBlayer_fc_2/biasBbeta1_powerBbeta2_powerBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc_2/kernel/AdamBlayer_fc_2/kernel/Adam_1Blayer_fc_2/bias/AdamBlayer_fc_2/bias/Adam_1*
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
ђ
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
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
њ
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
Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
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
њ
=report_uninitialized_variables_1/boolean_mask/strided_slice_2StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_2Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
T0*
Index0
Т
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
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/strided_slice_1=report_uninitialized_variables_1/boolean_mask/concat/values_1=report_uninitialized_variables_1/boolean_mask/strided_slice_29report_uninitialized_variables_1/boolean_mask/concat/axis"/device:CPU:0*
_output_shapes
:*

Tidx0*
T0*
N
р
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:

=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
№
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:
Ж
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:џџџџџџџџџ*
T0

Щ
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


;report_uninitialized_variables_1/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Э
6report_uninitialized_variables_1/boolean_mask/GatherV2GatherV25report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze;report_uninitialized_variables_1/boolean_mask/GatherV2/axis"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
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

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_f27e07af05f14c4abddabdf25de1fc6e/part*
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
Ў
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*в
valueШBХBbeta1_powerBbeta2_powerBglobal_stepBlayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc_2/biasBlayer_fc_2/bias/AdamBlayer_fc_2/bias/Adam_1Blayer_fc_2/kernelBlayer_fc_2/kernel/AdamBlayer_fc_2/kernel/Adam_1*
dtype0
Ј
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 
к
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
Ќ
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
Б
save/RestoreV2/tensor_namesConst"/device:CPU:0*в
valueШBХBbeta1_powerBbeta2_powerBglobal_stepBlayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc_2/biasBlayer_fc_2/bias/AdamBlayer_fc_2/bias/Adam_1Blayer_fc_2/kernelBlayer_fc_2/kernel/AdamBlayer_fc_2/kernel/Adam_1*
dtype0*
_output_shapes
:
Ћ
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ђ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	
Ё
save/AssignAssignbeta1_powersave/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias
Ѕ
save/Assign_1Assignbeta2_powersave/RestoreV2:1*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
 
save/Assign_2Assignglobal_stepsave/RestoreV2:2*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
Ў
save/Assign_3Assignlayer_conv1/biassave/RestoreV2:3*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(
Г
save/Assign_4Assignlayer_conv1/bias/Adamsave/RestoreV2:4*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(
Е
save/Assign_5Assignlayer_conv1/bias/Adam_1save/RestoreV2:5*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(
О
save/Assign_6Assignlayer_conv1/kernelsave/RestoreV2:6*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
У
save/Assign_7Assignlayer_conv1/kernel/Adamsave/RestoreV2:7*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 
Х
save/Assign_8Assignlayer_conv1/kernel/Adam_1save/RestoreV2:8*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 
Ў
save/Assign_9Assignlayer_conv2/biassave/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
Е
save/Assign_10Assignlayer_conv2/bias/Adamsave/RestoreV2:10*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
З
save/Assign_11Assignlayer_conv2/bias/Adam_1save/RestoreV2:11*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(
Р
save/Assign_12Assignlayer_conv2/kernelsave/RestoreV2:12*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  
Х
save/Assign_13Assignlayer_conv2/kernel/Adamsave/RestoreV2:13*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  
Ч
save/Assign_14Assignlayer_conv2/kernel/Adam_1save/RestoreV2:14*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0
­
save/Assign_15Assignlayer_fc1/biassave/RestoreV2:15*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:
В
save/Assign_16Assignlayer_fc1/bias/Adamsave/RestoreV2:16*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias
Д
save/Assign_17Assignlayer_fc1/bias/Adam_1save/RestoreV2:17*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:
Ж
save/Assign_18Assignlayer_fc1/kernelsave/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:

Л
save/Assign_19Assignlayer_fc1/kernel/Adamsave/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:

Н
save/Assign_20Assignlayer_fc1/kernel/Adam_1save/RestoreV2:20*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
Ў
save/Assign_21Assignlayer_fc_2/biassave/RestoreV2:21*"
_class
loc:@layer_fc_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Г
save/Assign_22Assignlayer_fc_2/bias/Adamsave/RestoreV2:22*"
_class
loc:@layer_fc_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Е
save/Assign_23Assignlayer_fc_2/bias/Adam_1save/RestoreV2:23*
use_locking(*
T0*"
_class
loc:@layer_fc_2/bias*
validate_shape(*
_output_shapes
:
З
save/Assign_24Assignlayer_fc_2/kernelsave/RestoreV2:24*
_output_shapes
:	*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(
М
save/Assign_25Assignlayer_fc_2/kernel/Adamsave/RestoreV2:25*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	
О
save/Assign_26Assignlayer_fc_2/kernel/Adam_1save/RestoreV2:26*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	
й
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shardд
Х

/tf_data_structured_function_wrapper_52oRgbbAY9U
arg0
tfrecorddataset2DWrapper for passing nested structures to and from tf.data functions.H
compression_typeConst"/device:CPU:0*
dtype0*
valueB B F
buffer_sizeConst"/device:CPU:0*
valueB		 R*
dtype0	h
TFRecordDatasetTFRecordDatasetarg0compression_type:output:0buffer_size:output:0"/device:CPU:0"+
tfrecorddatasetTFRecordDataset:handle:0
т
2
_make_dataset_7CaUSlIqduU
batchdatasetv2h
TensorSliceDataset/ConstConst"/device:CPU:0*)
value B B../../data/test.tfrecord*
dtype0m
'TensorSliceDataset/flat_filenames/shapeConst"/device:CPU:0*
valueB:
џџџџџџџџџ*
dtype0Ї
!TensorSliceDataset/flat_filenamesReshape!TensorSliceDataset/Const:output:00TensorSliceDataset/flat_filenames/shape:output:0"/device:CPU:0*
T0*
Tshape0
TensorSliceDatasetTensorSliceDataset*TensorSliceDataset/flat_filenames:output:0"/device:CPU:0*
output_shapes
: *
Toutput_types
2Ц
FlatMapDatasetFlatMapDatasetTensorSliceDataset:handle:0"/device:CPU:0*
output_types
2*

Targuments
 *
output_shapes
: *8
f3R1
/tf_data_structured_function_wrapper_52oRgbbAY9U№

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
dtype0	Є
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
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ")
batchdatasetv2BatchDatasetV2:handle:0
Є
Г
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
%ParseSingleExample/ParseSingleExampleParseSingleExamplearg0!ParseSingleExample/Const:output:0#ParseSingleExample/Const_1:output:0#ParseSingleExample/Const_2:output:0#ParseSingleExample/Const_3:output:0"/device:CPU:0*
sparse_keys
 *
Tdense
2				*

num_sparse *A

dense_keys3
1labelpacketLengthpacketPayloadrecordTypes*
sparse_types
 *'
dense_shapes
: :@::@"_
'parsesingleexample_parsesingleexample_14ParseSingleExample/ParseSingleExample:dense_values:2"_
'parsesingleexample_parsesingleexample_24ParseSingleExample/ParseSingleExample:dense_values:0"]
%parsesingleexample_parsesingleexample4ParseSingleExample/ParseSingleExample:dense_values:3"_
'parsesingleexample_parsesingleexample_04ParseSingleExample/ParseSingleExample:dense_values:1"dупjЛ     ї	}и'§жAJні
Є33
:
Add
x"T
y"T
z"T"
Ttype:
2	
ю
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
ь
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
д
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
ю
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
Џ
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
і
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
VariableV2*
	container *
shape: *
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step
В
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
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
flat_filenames/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
x
flat_filenamesReshapeConstflat_filenames/shape"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:
V
countConst"/device:CPU:0*
dtype0	*
_output_shapes
: *
value	B	 R
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

OneShotIteratorOneShotIterator"/device:CPU:0*
_output_shapes
: *0
dataset_factoryR
_make_dataset_7CaUSlIqduU*
shared_name *\
output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ*
	container *
output_types
2				
h
IteratorToStringHandleIteratorToStringHandleOneShotIterator"/device:CPU:0*
_output_shapes
: 

IteratorGetNextIteratorGetNextOneShotIterator"/device:CPU:0*\
output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ*]
_output_shapesK
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ*
output_types
2				

CastCastIteratorGetNext:2"/device:CPU:0*
Truncate( *(
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0	
f
Reshape/shapeConst*
_output_shapes
:*%
valueB"џџџџ           *
dtype0
o
ReshapeReshapeCastReshape/shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ  
Г
3layer_conv1/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_conv1/kernel*%
valueB"             *
dtype0*
_output_shapes
:

1layer_conv1/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_conv1/kernel*
valueB
 *О*
dtype0*
_output_shapes
: 

1layer_conv1/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@layer_conv1/kernel*
valueB
 *>*
dtype0*
_output_shapes
: 
џ
;layer_conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
: *

seed *
T0*%
_class
loc:@layer_conv1/kernel
ц
1layer_conv1/kernel/Initializer/random_uniform/subSub1layer_conv1/kernel/Initializer/random_uniform/max1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*
_output_shapes
: 

1layer_conv1/kernel/Initializer/random_uniform/mulMul;layer_conv1/kernel/Initializer/random_uniform/RandomUniform1layer_conv1/kernel/Initializer/random_uniform/sub*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: *
T0
ђ
-layer_conv1/kernel/Initializer/random_uniformAdd1layer_conv1/kernel/Initializer/random_uniform/mul1layer_conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv1/kernel*&
_output_shapes
: 
Н
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
ч
layer_conv1/kernel/AssignAssignlayer_conv1/kernel-layer_conv1/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel

layer_conv1/kernel/readIdentitylayer_conv1/kernel*&
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel

"layer_conv1/bias/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ё
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
Ъ
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
j
layer_conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ц
layer_conv1/Conv2DConv2DReshapelayer_conv1/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ   *
	dilations
*
T0

layer_conv1/BiasAddBiasAddlayer_conv1/Conv2Dlayer_conv1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ   
g
layer_conv1/ReluRelulayer_conv1/BiasAdd*/
_output_shapes
:џџџџџџџџџ   *
T0
П
max_pooling2d/MaxPoolMaxPoollayer_conv1/Relu*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
T0*
data_formatNHWC*
strides

Г
3layer_conv2/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@layer_conv2/kernel*%
valueB"              *
dtype0*
_output_shapes
:

1layer_conv2/kernel/Initializer/random_uniform/minConst*%
_class
loc:@layer_conv2/kernel*
valueB
 *ьбН*
dtype0*
_output_shapes
: 

1layer_conv2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *%
_class
loc:@layer_conv2/kernel*
valueB
 *ьб=
џ
;layer_conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3layer_conv2/kernel/Initializer/random_uniform/shape*&
_output_shapes
:  *

seed *
T0*%
_class
loc:@layer_conv2/kernel*
seed2 *
dtype0
ц
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
ђ
-layer_conv2/kernel/Initializer/random_uniformAdd1layer_conv2/kernel/Initializer/random_uniform/mul1layer_conv2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  
Н
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
ч
layer_conv2/kernel/AssignAssignlayer_conv2/kernel-layer_conv2/kernel/Initializer/random_uniform*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  

layer_conv2/kernel/readIdentitylayer_conv2/kernel*
T0*%
_class
loc:@layer_conv2/kernel*&
_output_shapes
:  

"layer_conv2/bias/Initializer/zerosConst*#
_class
loc:@layer_conv2/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ё
layer_conv2/bias
VariableV2*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv2/bias*
	container *
shape: *
dtype0
Ъ
layer_conv2/bias/AssignAssignlayer_conv2/bias"layer_conv2/bias/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv2/bias
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
є
layer_conv2/Conv2DConv2Dmax_pooling2d/MaxPoollayer_conv2/kernel/read*
paddingSAME*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

layer_conv2/BiasAddBiasAddlayer_conv2/Conv2Dlayer_conv2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ 
g
layer_conv2/ReluRelulayer_conv2/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ 
С
max_pooling2d_1/MaxPoolMaxPoollayer_conv2/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ 
l
Flatten/flatten/ShapeShapemax_pooling2d_1/MaxPool*
_output_shapes
:*
T0*
out_type0
m
#Flatten/flatten/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
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
Щ
Flatten/flatten/strided_sliceStridedSliceFlatten/flatten/Shape#Flatten/flatten/strided_slice/stack%Flatten/flatten/strided_slice/stack_1%Flatten/flatten/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
j
Flatten/flatten/Reshape/shape/1Const*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Flatten/flatten/Reshape/shapePackFlatten/flatten/strided_sliceFlatten/flatten/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 

Flatten/flatten/ReshapeReshapemax_pooling2d_1/MaxPoolFlatten/flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџ
Ї
1layer_fc1/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@layer_fc1/kernel*
valueB"      *
dtype0*
_output_shapes
:

/layer_fc1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel*
valueB
 *AWН

/layer_fc1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *#
_class
loc:@layer_fc1/kernel*
valueB
 *AW=*
dtype0
ѓ
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
о
/layer_fc1/kernel/Initializer/random_uniform/subSub/layer_fc1/kernel/Initializer/random_uniform/max/layer_fc1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@layer_fc1/kernel
ђ
/layer_fc1/kernel/Initializer/random_uniform/mulMul9layer_fc1/kernel/Initializer/random_uniform/RandomUniform/layer_fc1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
*
T0*#
_class
loc:@layer_fc1/kernel
ф
+layer_fc1/kernel/Initializer/random_uniformAdd/layer_fc1/kernel/Initializer/random_uniform/mul/layer_fc1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:

­
layer_fc1/kernel
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
й
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
 layer_fc1/bias/Initializer/zerosConst*!
_class
loc:@layer_fc1/bias*
valueB*    *
dtype0*
_output_shapes	
:

layer_fc1/bias
VariableV2*!
_class
loc:@layer_fc1/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
У
layer_fc1/bias/AssignAssignlayer_fc1/bias layer_fc1/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:
x
layer_fc1/bias/readIdentitylayer_fc1/bias*
_output_shapes	
:*
T0*!
_class
loc:@layer_fc1/bias
Ѓ
layer_fc1/MatMulMatMulFlatten/flatten/Reshapelayer_fc1/kernel/read*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( *
T0

layer_fc1/BiasAddBiasAddlayer_fc1/MatMullayer_fc1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
\
layer_fc1/ReluRelulayer_fc1/BiasAdd*(
_output_shapes
:џџџџџџџџџ*
T0
Љ
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
 *o}RО*
dtype0*
_output_shapes
: 

0layer_fc_2/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@layer_fc_2/kernel*
valueB
 *o}R>*
dtype0*
_output_shapes
: 
ѕ
:layer_fc_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2layer_fc_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	*

seed *
T0*$
_class
loc:@layer_fc_2/kernel*
seed2 
т
0layer_fc_2/kernel/Initializer/random_uniform/subSub0layer_fc_2/kernel/Initializer/random_uniform/max0layer_fc_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@layer_fc_2/kernel
ѕ
0layer_fc_2/kernel/Initializer/random_uniform/mulMul:layer_fc_2/kernel/Initializer/random_uniform/RandomUniform0layer_fc_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*
T0*$
_class
loc:@layer_fc_2/kernel
ч
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
м
layer_fc_2/kernel/AssignAssignlayer_fc_2/kernel,layer_fc_2/kernel/Initializer/random_uniform*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	

layer_fc_2/kernel/readIdentitylayer_fc_2/kernel*
T0*$
_class
loc:@layer_fc_2/kernel*
_output_shapes
:	

!layer_fc_2/bias/Initializer/zerosConst*
_output_shapes
:*"
_class
loc:@layer_fc_2/bias*
valueB*    *
dtype0

layer_fc_2/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_fc_2/bias*
	container *
shape:
Ц
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
layer_fc_2/MatMulMatMullayer_fc1/Relulayer_fc_2/kernel/read*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( *
T0

layer_fc_2/BiasAddBiasAddlayer_fc_2/MatMullayer_fc_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ
X
SoftmaxSoftmaxlayer_fc_2/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
x
ArgMaxArgMaxSoftmaxArgMax/dimension*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0*
output_type0	
z
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeIteratorGetNext:3*
T0	*
out_type0*
_output_shapes
:
х
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitslayer_fc_2/BiasAddIteratorGetNext:3*
T0*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџ*
Tlabels0	
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:

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
 *  ?*
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
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:џџџџџџџџџ*

Tmultiples0*
T0
Ђ
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
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
_output_shapes
: *
T0
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:џџџџџџџџџ*
T0

gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:џџџџџџџџџ*
T0
­
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*'
_output_shapes
:џџџџџџџџџ
А
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Б
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*

Tdim0*
T0
о
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:џџџџџџџџџ
д
-gradients/layer_fc_2/BiasAdd_grad/BiasAddGradBiasAddGradZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*
T0*
data_formatNHWC*
_output_shapes
:
Ч
2gradients/layer_fc_2/BiasAdd_grad/tuple/group_depsNoOp[^gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul.^gradients/layer_fc_2/BiasAdd_grad/BiasAddGrad
ј
:gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependencyIdentityZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul3^gradients/layer_fc_2/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*m
_classc
a_loc:@gradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul

<gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/layer_fc_2/BiasAdd_grad/BiasAddGrad3^gradients/layer_fc_2/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/layer_fc_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
о
'gradients/layer_fc_2/MatMul_grad/MatMulMatMul:gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependencylayer_fc_2/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(
Я
)gradients/layer_fc_2/MatMul_grad/MatMul_1MatMullayer_fc1/Relu:gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	*
transpose_a(*
transpose_b( *
T0

1gradients/layer_fc_2/MatMul_grad/tuple/group_depsNoOp(^gradients/layer_fc_2/MatMul_grad/MatMul*^gradients/layer_fc_2/MatMul_grad/MatMul_1

9gradients/layer_fc_2/MatMul_grad/tuple/control_dependencyIdentity'gradients/layer_fc_2/MatMul_grad/MatMul2^gradients/layer_fc_2/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/layer_fc_2/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ

;gradients/layer_fc_2/MatMul_grad/tuple/control_dependency_1Identity)gradients/layer_fc_2/MatMul_grad/MatMul_12^gradients/layer_fc_2/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/layer_fc_2/MatMul_grad/MatMul_1*
_output_shapes
:	
А
&gradients/layer_fc1/Relu_grad/ReluGradReluGrad9gradients/layer_fc_2/MatMul_grad/tuple/control_dependencylayer_fc1/Relu*(
_output_shapes
:џџџџџџџџџ*
T0
 
,gradients/layer_fc1/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/layer_fc1/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC

1gradients/layer_fc1/BiasAdd_grad/tuple/group_depsNoOp-^gradients/layer_fc1/BiasAdd_grad/BiasAddGrad'^gradients/layer_fc1/Relu_grad/ReluGrad

9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/Relu_grad/ReluGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_fc1/Relu_grad/ReluGrad*(
_output_shapes
:џџџџџџџџџ

;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/layer_fc1/BiasAdd_grad/BiasAddGrad2^gradients/layer_fc1/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*
T0*?
_class5
31loc:@gradients/layer_fc1/BiasAdd_grad/BiasAddGrad
л
&gradients/layer_fc1/MatMul_grad/MatMulMatMul9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependencylayer_fc1/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(
з
(gradients/layer_fc1/MatMul_grad/MatMul_1MatMulFlatten/flatten/Reshape9gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0* 
_output_shapes
:
*
transpose_a(

0gradients/layer_fc1/MatMul_grad/tuple/group_depsNoOp'^gradients/layer_fc1/MatMul_grad/MatMul)^gradients/layer_fc1/MatMul_grad/MatMul_1

8gradients/layer_fc1/MatMul_grad/tuple/control_dependencyIdentity&gradients/layer_fc1/MatMul_grad/MatMul1^gradients/layer_fc1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/layer_fc1/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ

:gradients/layer_fc1/MatMul_grad/tuple/control_dependency_1Identity(gradients/layer_fc1/MatMul_grad/MatMul_11^gradients/layer_fc1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_fc1/MatMul_grad/MatMul_1* 
_output_shapes
:


,gradients/Flatten/flatten/Reshape_grad/ShapeShapemax_pooling2d_1/MaxPool*
_output_shapes
:*
T0*
out_type0
щ
.gradients/Flatten/flatten/Reshape_grad/ReshapeReshape8gradients/layer_fc1/MatMul_grad/tuple/control_dependency,gradients/Flatten/flatten/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ 
Љ
2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradlayer_conv2/Relumax_pooling2d_1/MaxPool.gradients/Flatten/flatten/Reshape_grad/Reshape*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
T0*
data_formatNHWC*
strides

Д
(gradients/layer_conv2/Relu_grad/ReluGradReluGrad2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradlayer_conv2/Relu*
T0*/
_output_shapes
:џџџџџџџџџ 
Ѓ
.gradients/layer_conv2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv2/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
: *
T0

3gradients/layer_conv2/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv2/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv2/Relu_grad/ReluGrad

;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv2/Relu_grad/ReluGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/layer_conv2/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ 

=gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv2/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv2/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/layer_conv2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
І
(gradients/layer_conv2/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoollayer_conv2/kernel/read* 
_output_shapes
::*
T0*
out_type0*
N
є
5gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/layer_conv2/Conv2D_grad/ShapeNlayer_conv2/kernel/read;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
э
6gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool*gradients/layer_conv2/Conv2D_grad/ShapeN:1;gradients/layer_conv2/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:  *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ћ
2gradients/layer_conv2/Conv2D_grad/tuple/group_depsNoOp7^gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter6^gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput
Ж
:gradients/layer_conv2/Conv2D_grad/tuple/control_dependencyIdentity5gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput3^gradients/layer_conv2/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_conv2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:џџџџџџџџџ 
Б
<gradients/layer_conv2/Conv2D_grad/tuple/control_dependency_1Identity6gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter3^gradients/layer_conv2/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/layer_conv2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:  
Б
0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradlayer_conv1/Relumax_pooling2d/MaxPool:gradients/layer_conv2/Conv2D_grad/tuple/control_dependency*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ   *
T0*
data_formatNHWC*
strides

В
(gradients/layer_conv1/Relu_grad/ReluGradReluGrad0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradlayer_conv1/Relu*/
_output_shapes
:џџџџџџџџџ   *
T0
Ѓ
.gradients/layer_conv1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/layer_conv1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 

3gradients/layer_conv1/BiasAdd_grad/tuple/group_depsNoOp/^gradients/layer_conv1/BiasAdd_grad/BiasAddGrad)^gradients/layer_conv1/Relu_grad/ReluGrad

;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/layer_conv1/Relu_grad/ReluGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*/
_output_shapes
:џџџџџџџџџ   *
T0*;
_class1
/-loc:@gradients/layer_conv1/Relu_grad/ReluGrad

=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/layer_conv1/BiasAdd_grad/BiasAddGrad4^gradients/layer_conv1/BiasAdd_grad/tuple/group_deps*A
_class7
53loc:@gradients/layer_conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0

(gradients/layer_conv1/Conv2D_grad/ShapeNShapeNReshapelayer_conv1/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0
є
5gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/layer_conv1/Conv2D_grad/ShapeNlayer_conv1/kernel/read;gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency*/
_output_shapes
:џџџџџџџџџ  *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
п
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
Ћ
2gradients/layer_conv1/Conv2D_grad/tuple/group_depsNoOp7^gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter6^gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput
Ж
:gradients/layer_conv1/Conv2D_grad/tuple/control_dependencyIdentity5gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput3^gradients/layer_conv1/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/layer_conv1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:џџџџџџџџџ  
Б
<gradients/layer_conv1/Conv2D_grad/tuple/control_dependency_1Identity6gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter3^gradients/layer_conv1/Conv2D_grad/tuple/group_deps*&
_output_shapes
: *
T0*I
_class?
=;loc:@gradients/layer_conv1/Conv2D_grad/Conv2DBackpropFilter

beta1_power/initial_valueConst*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
valueB
 *fff?*
dtype0

beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: 
Г
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
o
beta1_power/readIdentitybeta1_power*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 

beta2_power/initial_valueConst*#
_class
loc:@layer_conv1/bias*
valueB
 *wО?*
dtype0*
_output_shapes
: 

beta2_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container *
shape: 
Г
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
o
beta2_power/readIdentitybeta2_power*
_output_shapes
: *
T0*#
_class
loc:@layer_conv1/bias
Е
)layer_conv1/kernel/Adam/Initializer/zerosConst*&
_output_shapes
: *%
_class
loc:@layer_conv1/kernel*%
valueB *    *
dtype0
Т
layer_conv1/kernel/Adam
VariableV2*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel
э
layer_conv1/kernel/Adam/AssignAssignlayer_conv1/kernel/Adam)layer_conv1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 

layer_conv1/kernel/Adam/readIdentitylayer_conv1/kernel/Adam*&
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel
З
+layer_conv1/kernel/Adam_1/Initializer/zerosConst*%
_class
loc:@layer_conv1/kernel*%
valueB *    *
dtype0*&
_output_shapes
: 
Ф
layer_conv1/kernel/Adam_1
VariableV2*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name *%
_class
loc:@layer_conv1/kernel
ѓ
 layer_conv1/kernel/Adam_1/AssignAssignlayer_conv1/kernel/Adam_1+layer_conv1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 

layer_conv1/kernel/Adam_1/readIdentitylayer_conv1/kernel/Adam_1*&
_output_shapes
: *
T0*%
_class
loc:@layer_conv1/kernel

'layer_conv1/bias/Adam/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
І
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
й
layer_conv1/bias/Adam/AssignAssignlayer_conv1/bias/Adam'layer_conv1/bias/Adam/Initializer/zeros*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

layer_conv1/bias/Adam/readIdentitylayer_conv1/bias/Adam*
_output_shapes
: *
T0*#
_class
loc:@layer_conv1/bias

)layer_conv1/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@layer_conv1/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ј
layer_conv1/bias/Adam_1
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@layer_conv1/bias*
	container 
п
layer_conv1/bias/Adam_1/AssignAssignlayer_conv1/bias/Adam_1)layer_conv1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 

layer_conv1/bias/Adam_1/readIdentitylayer_conv1/bias/Adam_1*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 
Й
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
Т
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
э
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
Л
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
Ф
layer_conv2/kernel/Adam_1
VariableV2*&
_output_shapes
:  *
shared_name *%
_class
loc:@layer_conv2/kernel*
	container *
shape:  *
dtype0
ѓ
 layer_conv2/kernel/Adam_1/AssignAssignlayer_conv2/kernel/Adam_1+layer_conv2/kernel/Adam_1/Initializer/zeros*&
_output_shapes
:  *
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(
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
І
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
й
layer_conv2/bias/Adam/AssignAssignlayer_conv2/bias/Adam'layer_conv2/bias/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
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
Ј
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
п
layer_conv2/bias/Adam_1/AssignAssignlayer_conv2/bias/Adam_1)layer_conv2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
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
љ
'layer_fc1/kernel/Adam/Initializer/zerosFill7layer_fc1/kernel/Adam/Initializer/zeros/shape_as_tensor-layer_fc1/kernel/Adam/Initializer/zeros/Const*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:

В
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
п
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
Џ
9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*#
_class
loc:@layer_fc1/kernel*
valueB"      

/layer_fc1/kernel/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@layer_fc1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
)layer_fc1/kernel/Adam_1/Initializer/zerosFill9layer_fc1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/layer_fc1/kernel/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@layer_fc1/kernel*

index_type0* 
_output_shapes
:

Д
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
х
layer_fc1/kernel/Adam_1/AssignAssignlayer_fc1/kernel/Adam_1)layer_fc1/kernel/Adam_1/Initializer/zeros*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0

layer_fc1/kernel/Adam_1/readIdentitylayer_fc1/kernel/Adam_1*
T0*#
_class
loc:@layer_fc1/kernel* 
_output_shapes
:


%layer_fc1/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:*!
_class
loc:@layer_fc1/bias*
valueB*    
Є
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
в
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
І
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
и
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
Џ
8layer_fc_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*$
_class
loc:@layer_fc_2/kernel*
valueB"      

.layer_fc_2/kernel/Adam/Initializer/zeros/ConstConst*$
_class
loc:@layer_fc_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ќ
(layer_fc_2/kernel/Adam/Initializer/zerosFill8layer_fc_2/kernel/Adam/Initializer/zeros/shape_as_tensor.layer_fc_2/kernel/Adam/Initializer/zeros/Const*
T0*$
_class
loc:@layer_fc_2/kernel*

index_type0*
_output_shapes
:	
В
layer_fc_2/kernel/Adam
VariableV2*$
_class
loc:@layer_fc_2/kernel*
	container *
shape:	*
dtype0*
_output_shapes
:	*
shared_name 
т
layer_fc_2/kernel/Adam/AssignAssignlayer_fc_2/kernel/Adam(layer_fc_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	

layer_fc_2/kernel/Adam/readIdentitylayer_fc_2/kernel/Adam*
_output_shapes
:	*
T0*$
_class
loc:@layer_fc_2/kernel
Б
:layer_fc_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*$
_class
loc:@layer_fc_2/kernel*
valueB"      
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
Д
layer_fc_2/kernel/Adam_1
VariableV2*
shared_name *$
_class
loc:@layer_fc_2/kernel*
	container *
shape:	*
dtype0*
_output_shapes
:	
ш
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
Є
layer_fc_2/bias/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_fc_2/bias
е
layer_fc_2/bias/Adam/AssignAssignlayer_fc_2/bias/Adam&layer_fc_2/bias/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_fc_2/bias*
validate_shape(*
_output_shapes
:

layer_fc_2/bias/Adam/readIdentitylayer_fc_2/bias/Adam*
T0*"
_class
loc:@layer_fc_2/bias*
_output_shapes
:

(layer_fc_2/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*"
_class
loc:@layer_fc_2/bias*
valueB*    
І
layer_fc_2/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@layer_fc_2/bias*
	container *
shape:
л
layer_fc_2/bias/Adam_1/AssignAssignlayer_fc_2/bias/Adam_1(layer_fc_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@layer_fc_2/bias*
validate_shape(*
_output_shapes
:
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
 *Зб8*
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

Adam/beta2Const*
_output_shapes
: *
valueB
 *wО?*
dtype0
Q
Adam/epsilonConst*
valueB
 *wЬ+2*
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
Adam/beta2Adam/epsilon=gradients/layer_conv1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@layer_conv1/bias*
use_nesterov( *
_output_shapes
: 

(Adam/update_layer_conv2/kernel/ApplyAdam	ApplyAdamlayer_conv2/kernellayer_conv2/kernel/Adamlayer_conv2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/layer_conv2/Conv2D_grad/tuple/control_dependency_1*%
_class
loc:@layer_conv2/kernel*
use_nesterov( *&
_output_shapes
:  *
use_locking( *
T0
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
ј
$Adam/update_layer_fc1/bias/ApplyAdam	ApplyAdamlayer_fc1/biaslayer_fc1/bias/Adamlayer_fc1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/layer_fc1/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes	
:*
use_locking( *
T0*!
_class
loc:@layer_fc1/bias*
use_nesterov( 

'Adam/update_layer_fc_2/kernel/ApplyAdam	ApplyAdamlayer_fc_2/kernellayer_fc_2/kernel/Adamlayer_fc_2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/layer_fc_2/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:	*
use_locking( *
T0*$
_class
loc:@layer_fc_2/kernel
§
%Adam/update_layer_fc_2/bias/ApplyAdam	ApplyAdamlayer_fc_2/biaslayer_fc_2/bias/Adamlayer_fc_2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/layer_fc_2/BiasAdd_grad/tuple/control_dependency_1*
T0*"
_class
loc:@layer_fc_2/bias*
use_nesterov( *
_output_shapes
:*
use_locking( 
Н
Adam/mulMulbeta1_power/read
Adam/beta1'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam&^Adam/update_layer_fc_2/bias/ApplyAdam(^Adam/update_layer_fc_2/kernel/ApplyAdam*
T0*#
_class
loc:@layer_conv1/bias*
_output_shapes
: 

Adam/AssignAssignbeta1_powerAdam/mul*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking( *
T0
П

Adam/mul_1Mulbeta2_power/read
Adam/beta2'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam&^Adam/update_layer_fc_2/bias/ApplyAdam(^Adam/update_layer_fc_2/kernel/ApplyAdam*#
_class
loc:@layer_conv1/bias*
_output_shapes
: *
T0
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
ћ
Adam/updateNoOp^Adam/Assign^Adam/Assign_1'^Adam/update_layer_conv1/bias/ApplyAdam)^Adam/update_layer_conv1/kernel/ApplyAdam'^Adam/update_layer_conv2/bias/ApplyAdam)^Adam/update_layer_conv2/kernel/ApplyAdam%^Adam/update_layer_fc1/bias/ApplyAdam'^Adam/update_layer_fc1/kernel/ApplyAdam&^Adam/update_layer_fc_2/bias/ApplyAdam(^Adam/update_layer_fc_2/kernel/ApplyAdam
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
EqualEqualArgMaxIteratorGetNext:3*
T0	*#
_output_shapes
:џџџџџџџџџ
c
ToFloatCastEqual*

SrcT0
*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0
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
VariableV2*
shared_name *!
_class
loc:@accuracy/total*
	container *
shape: *
dtype0*
_output_shapes
: 
О
accuracy/total/AssignAssignaccuracy/total accuracy/total/Initializer/zeros*
T0*!
_class
loc:@accuracy/total*
validate_shape(*
_output_shapes
: *
use_locking(
s
accuracy/total/readIdentityaccuracy/total*
_output_shapes
: *
T0*!
_class
loc:@accuracy/total
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
VariableV2*
shared_name *!
_class
loc:@accuracy/count*
	container *
shape: *
dtype0*
_output_shapes
: 
О
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
Є
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
accuracy/GreaterGreateraccuracy/count/readaccuracy/zeros_like*
_output_shapes
: *
T0
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
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/zeros_like_1*
T0*
_output_shapes
: 
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
VariableV2*
_output_shapes
: *
shared_name *
_class
loc:@mean_1/total*
	container *
shape: *
dtype0
Ж
mean_1/total/AssignAssignmean_1/totalmean_1/total/Initializer/zeros*
_class
loc:@mean_1/total*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
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
VariableV2*
_class
loc:@mean_1/count*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Ж
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
mean_1/SizeConst*
dtype0*
_output_shapes
: *
value	B :
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
mean_1/Sum*
use_locking( *
T0*
_class
loc:@mean_1/total*
_output_shapes
: 

mean_1/AssignAdd_1	AssignAddmean_1/countmean_1/ToFloat^Mean*
use_locking( *
T0*
_class
loc:@mean_1/count*
_output_shapes
: 
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
mean_1/truediv_1RealDivmean_1/AssignAddmean_1/AssignAdd_1*
_output_shapes
: *
T0
X
mean_1/zeros_like_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
e
mean_1/Greater_1Greatermean_1/AssignAdd_1mean_1/zeros_like_1*
T0*
_output_shapes
: 
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
_class
loc:@eval_step*
	container *
shape: *
dtype0	*
_output_shapes
: *
shared_name 
Њ
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@eval_step*
validate_shape(*
_output_shapes
: 
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
	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
use_locking(*
T0	*
_class
loc:@eval_step*
_output_shapes
: 
U
readIdentity	eval_step
^AssignAdd^group_deps*
T0	*
_output_shapes
: 
;
IdentityIdentityread*
T0	*
_output_shapes
: 
Ё
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
Џ
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedlayer_conv1/kernel*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
Ћ
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedlayer_conv1/bias*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Џ
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedlayer_conv2/kernel*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
Ћ
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedlayer_conv2/bias*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
Ћ
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedlayer_fc1/kernel*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Ї
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
Љ
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedlayer_fc_2/bias*"
_class
loc:@layer_fc_2/bias*
dtype0*
_output_shapes
: 
І
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializedbeta1_power*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Ї
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitializedbeta2_power*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
dtype0
Е
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitializedlayer_conv1/kernel/Adam*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
З
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitializedlayer_conv1/kernel/Adam_1*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
Б
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializedlayer_conv1/bias/Adam*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Г
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializedlayer_conv1/bias/Adam_1*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Е
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializedlayer_conv2/kernel/Adam*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
З
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializedlayer_conv2/kernel/Adam_1*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
Б
7report_uninitialized_variables/IsVariableInitialized_17IsVariableInitializedlayer_conv2/bias/Adam*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
Г
7report_uninitialized_variables/IsVariableInitialized_18IsVariableInitializedlayer_conv2/bias/Adam_1*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
Б
7report_uninitialized_variables/IsVariableInitialized_19IsVariableInitializedlayer_fc1/kernel/Adam*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Г
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
Џ
7report_uninitialized_variables/IsVariableInitialized_22IsVariableInitializedlayer_fc1/bias/Adam_1*
dtype0*
_output_shapes
: *!
_class
loc:@layer_fc1/bias
Г
7report_uninitialized_variables/IsVariableInitialized_23IsVariableInitializedlayer_fc_2/kernel/Adam*
dtype0*
_output_shapes
: *$
_class
loc:@layer_fc_2/kernel
Е
7report_uninitialized_variables/IsVariableInitialized_24IsVariableInitializedlayer_fc_2/kernel/Adam_1*$
_class
loc:@layer_fc_2/kernel*
dtype0*
_output_shapes
: 
Џ
7report_uninitialized_variables/IsVariableInitialized_25IsVariableInitializedlayer_fc_2/bias/Adam*"
_class
loc:@layer_fc_2/bias*
dtype0*
_output_shapes
: 
Б
7report_uninitialized_variables/IsVariableInitialized_26IsVariableInitializedlayer_fc_2/bias/Adam_1*
dtype0*
_output_shapes
: *"
_class
loc:@layer_fc_2/bias
Ј
7report_uninitialized_variables/IsVariableInitialized_27IsVariableInitializedaccuracy/total*
_output_shapes
: *!
_class
loc:@accuracy/total*
dtype0
Ј
7report_uninitialized_variables/IsVariableInitialized_28IsVariableInitializedaccuracy/count*!
_class
loc:@accuracy/count*
dtype0*
_output_shapes
: 
Є
7report_uninitialized_variables/IsVariableInitialized_29IsVariableInitializedmean_1/total*
_class
loc:@mean_1/total*
dtype0*
_output_shapes
: 
Є
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
$report_uninitialized_variables/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB Bglobal_stepBlayer_conv1/kernelBlayer_conv1/biasBlayer_conv2/kernelBlayer_conv2/biasBlayer_fc1/kernelBlayer_fc1/biasBlayer_fc_2/kernelBlayer_fc_2/biasBbeta1_powerBbeta2_powerBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc_2/kernel/AdamBlayer_fc_2/kernel/Adam_1Blayer_fc_2/bias/AdamBlayer_fc_2/bias/Adam_1Baccuracy/totalBaccuracy/countBmean_1/totalBmean_1/countB	eval_step

1report_uninitialized_variables/boolean_mask/ShapeConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
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
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
ш
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2"/device:CPU:0*
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask 

Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
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
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
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
№
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask 
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
№
;report_uninitialized_variables/boolean_mask/strided_slice_2StridedSlice3report_uninitialized_variables/boolean_mask/Shape_2Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackCreport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
Index0*
T0
О
;report_uninitialized_variables/boolean_mask/concat/values_1Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 

7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
ї
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/strided_slice_1;report_uninitialized_variables/boolean_mask/concat/values_1;report_uninitialized_variables/boolean_mask/strided_slice_27report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*
T0*
N*
_output_shapes
:*

Tidx0
к
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
Tshape0*
_output_shapes
: *
T0

;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
ъ
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
: 
В
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*
T0
*'
_output_shapes
:џџџџџџџџџ
Х
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


9report_uninitialized_variables/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Х
4report_uninitialized_variables/boolean_mask/GatherV2GatherV23report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze9report_uninitialized_variables/boolean_mask/GatherV2/axis"/device:CPU:0*#
_output_shapes
:џџџџџџџџџ*
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
О
concatConcatV24report_uninitialized_variables/boolean_mask/GatherV2$report_uninitialized_resources/Constconcat/axis*
N*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
Ё
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
Б
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedlayer_conv1/kernel*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
­
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedlayer_conv1/bias*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Б
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedlayer_conv2/kernel*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
­
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedlayer_conv2/bias*
_output_shapes
: *#
_class
loc:@layer_conv2/bias*
dtype0
­
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedlayer_fc1/kernel*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Љ
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializedlayer_fc1/bias*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Џ
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializedlayer_fc_2/kernel*$
_class
loc:@layer_fc_2/kernel*
dtype0*
_output_shapes
: 
Ћ
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedlayer_fc_2/bias*"
_class
loc:@layer_fc_2/bias*
dtype0*
_output_shapes
: 
Ј
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializedbeta1_power*
_output_shapes
: *#
_class
loc:@layer_conv1/bias*
dtype0
Љ
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitializedbeta2_power*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
З
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitializedlayer_conv1/kernel/Adam*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
Й
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitializedlayer_conv1/kernel/Adam_1*%
_class
loc:@layer_conv1/kernel*
dtype0*
_output_shapes
: 
Г
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializedlayer_conv1/bias/Adam*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
Е
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializedlayer_conv1/bias/Adam_1*#
_class
loc:@layer_conv1/bias*
dtype0*
_output_shapes
: 
З
9report_uninitialized_variables_1/IsVariableInitialized_15IsVariableInitializedlayer_conv2/kernel/Adam*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
Й
9report_uninitialized_variables_1/IsVariableInitialized_16IsVariableInitializedlayer_conv2/kernel/Adam_1*%
_class
loc:@layer_conv2/kernel*
dtype0*
_output_shapes
: 
Г
9report_uninitialized_variables_1/IsVariableInitialized_17IsVariableInitializedlayer_conv2/bias/Adam*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
Е
9report_uninitialized_variables_1/IsVariableInitialized_18IsVariableInitializedlayer_conv2/bias/Adam_1*#
_class
loc:@layer_conv2/bias*
dtype0*
_output_shapes
: 
Г
9report_uninitialized_variables_1/IsVariableInitialized_19IsVariableInitializedlayer_fc1/kernel/Adam*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Е
9report_uninitialized_variables_1/IsVariableInitialized_20IsVariableInitializedlayer_fc1/kernel/Adam_1*#
_class
loc:@layer_fc1/kernel*
dtype0*
_output_shapes
: 
Џ
9report_uninitialized_variables_1/IsVariableInitialized_21IsVariableInitializedlayer_fc1/bias/Adam*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Б
9report_uninitialized_variables_1/IsVariableInitialized_22IsVariableInitializedlayer_fc1/bias/Adam_1*!
_class
loc:@layer_fc1/bias*
dtype0*
_output_shapes
: 
Е
9report_uninitialized_variables_1/IsVariableInitialized_23IsVariableInitializedlayer_fc_2/kernel/Adam*$
_class
loc:@layer_fc_2/kernel*
dtype0*
_output_shapes
: 
З
9report_uninitialized_variables_1/IsVariableInitialized_24IsVariableInitializedlayer_fc_2/kernel/Adam_1*$
_class
loc:@layer_fc_2/kernel*
dtype0*
_output_shapes
: 
Б
9report_uninitialized_variables_1/IsVariableInitialized_25IsVariableInitializedlayer_fc_2/bias/Adam*"
_class
loc:@layer_fc_2/bias*
dtype0*
_output_shapes
: 
Г
9report_uninitialized_variables_1/IsVariableInitialized_26IsVariableInitializedlayer_fc_2/bias/Adam_1*
_output_shapes
: *"
_class
loc:@layer_fc_2/bias*
dtype0
Є
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
М
&report_uninitialized_variables_1/ConstConst"/device:CPU:0*в
valueШBХBglobal_stepBlayer_conv1/kernelBlayer_conv1/biasBlayer_conv2/kernelBlayer_conv2/biasBlayer_fc1/kernelBlayer_fc1/biasBlayer_fc_2/kernelBlayer_fc_2/biasBbeta1_powerBbeta2_powerBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc_2/kernel/AdamBlayer_fc_2/kernel/Adam_1Blayer_fc_2/bias/AdamBlayer_fc_2/bias/Adam_1*
dtype0*
_output_shapes
:

3report_uninitialized_variables_1/boolean_mask/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
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
ђ
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2"/device:CPU:0*
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask 
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
5report_uninitialized_variables_1/boolean_mask/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
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
њ
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
Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
њ
=report_uninitialized_variables_1/boolean_mask/strided_slice_2StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_2Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: 
Т
=report_uninitialized_variables_1/boolean_mask/concat/values_1Pack2report_uninitialized_variables_1/boolean_mask/Prod"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
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
р
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
_output_shapes
:*
T0*
Tshape0

=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
№
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:
Ж
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:џџџџџџџџџ*
T0

Щ
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:џџџџџџџџџ

;report_uninitialized_variables_1/boolean_mask/GatherV2/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
Э
6report_uninitialized_variables_1/boolean_mask/GatherV2GatherV25report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze;report_uninitialized_variables_1/boolean_mask/GatherV2/axis"/device:CPU:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџ
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
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_f27e07af05f14c4abddabdf25de1fc6e/part*
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

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Ў
save/SaveV2/tensor_namesConst"/device:CPU:0*в
valueШBХBbeta1_powerBbeta2_powerBglobal_stepBlayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc_2/biasBlayer_fc_2/bias/AdamBlayer_fc_2/bias/Adam_1Blayer_fc_2/kernelBlayer_fc_2/kernel/AdamBlayer_fc_2/kernel/Adam_1*
dtype0*
_output_shapes
:
Ј
save/SaveV2/shape_and_slicesConst"/device:CPU:0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
к
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
Ќ
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
Б
save/RestoreV2/tensor_namesConst"/device:CPU:0*в
valueШBХBbeta1_powerBbeta2_powerBglobal_stepBlayer_conv1/biasBlayer_conv1/bias/AdamBlayer_conv1/bias/Adam_1Blayer_conv1/kernelBlayer_conv1/kernel/AdamBlayer_conv1/kernel/Adam_1Blayer_conv2/biasBlayer_conv2/bias/AdamBlayer_conv2/bias/Adam_1Blayer_conv2/kernelBlayer_conv2/kernel/AdamBlayer_conv2/kernel/Adam_1Blayer_fc1/biasBlayer_fc1/bias/AdamBlayer_fc1/bias/Adam_1Blayer_fc1/kernelBlayer_fc1/kernel/AdamBlayer_fc1/kernel/Adam_1Blayer_fc_2/biasBlayer_fc_2/bias/AdamBlayer_fc_2/bias/Adam_1Blayer_fc_2/kernelBlayer_fc_2/kernel/AdamBlayer_fc_2/kernel/Adam_1*
dtype0*
_output_shapes
:
Ћ
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ђ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	
Ё
save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
Ѕ
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(
 
save/Assign_2Assignglobal_stepsave/RestoreV2:2*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
Ў
save/Assign_3Assignlayer_conv1/biassave/RestoreV2:3*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
Г
save/Assign_4Assignlayer_conv1/bias/Adamsave/RestoreV2:4*
use_locking(*
T0*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: 
Е
save/Assign_5Assignlayer_conv1/bias/Adam_1save/RestoreV2:5*#
_class
loc:@layer_conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
О
save/Assign_6Assignlayer_conv1/kernelsave/RestoreV2:6*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
У
save/Assign_7Assignlayer_conv1/kernel/Adamsave/RestoreV2:7*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 
Х
save/Assign_8Assignlayer_conv1/kernel/Adam_1save/RestoreV2:8*
use_locking(*
T0*%
_class
loc:@layer_conv1/kernel*
validate_shape(*&
_output_shapes
: 
Ў
save/Assign_9Assignlayer_conv2/biassave/RestoreV2:9*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
Е
save/Assign_10Assignlayer_conv2/bias/Adamsave/RestoreV2:10*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
З
save/Assign_11Assignlayer_conv2/bias/Adam_1save/RestoreV2:11*
use_locking(*
T0*#
_class
loc:@layer_conv2/bias*
validate_shape(*
_output_shapes
: 
Р
save/Assign_12Assignlayer_conv2/kernelsave/RestoreV2:12*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(
Х
save/Assign_13Assignlayer_conv2/kernel/Adamsave/RestoreV2:13*
use_locking(*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  
Ч
save/Assign_14Assignlayer_conv2/kernel/Adam_1save/RestoreV2:14*
T0*%
_class
loc:@layer_conv2/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(
­
save/Assign_15Assignlayer_fc1/biassave/RestoreV2:15*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:
В
save/Assign_16Assignlayer_fc1/bias/Adamsave/RestoreV2:16*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:
Д
save/Assign_17Assignlayer_fc1/bias/Adam_1save/RestoreV2:17*
use_locking(*
T0*!
_class
loc:@layer_fc1/bias*
validate_shape(*
_output_shapes	
:
Ж
save/Assign_18Assignlayer_fc1/kernelsave/RestoreV2:18*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:

Л
save/Assign_19Assignlayer_fc1/kernel/Adamsave/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(* 
_output_shapes
:

Н
save/Assign_20Assignlayer_fc1/kernel/Adam_1save/RestoreV2:20* 
_output_shapes
:
*
use_locking(*
T0*#
_class
loc:@layer_fc1/kernel*
validate_shape(
Ў
save/Assign_21Assignlayer_fc_2/biassave/RestoreV2:21*
T0*"
_class
loc:@layer_fc_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
Г
save/Assign_22Assignlayer_fc_2/bias/Adamsave/RestoreV2:22*
use_locking(*
T0*"
_class
loc:@layer_fc_2/bias*
validate_shape(*
_output_shapes
:
Е
save/Assign_23Assignlayer_fc_2/bias/Adam_1save/RestoreV2:23*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@layer_fc_2/bias
З
save/Assign_24Assignlayer_fc_2/kernelsave/RestoreV2:24*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	*
use_locking(
М
save/Assign_25Assignlayer_fc_2/kernel/Adamsave/RestoreV2:25*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	*
use_locking(
О
save/Assign_26Assignlayer_fc_2/kernel/Adam_1save/RestoreV2:26*
use_locking(*
T0*$
_class
loc:@layer_fc_2/kernel*
validate_shape(*
_output_shapes
:	
й
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shardд
Х
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
т
2
_make_dataset_7CaUSlIqduU
batchdatasetv2h
TensorSliceDataset/ConstConst"/device:CPU:0*)
value B B../../data/test.tfrecord*
dtype0m
'TensorSliceDataset/flat_filenames/shapeConst"/device:CPU:0*
valueB:
џџџџџџџџџ*
dtype0Ї
!TensorSliceDataset/flat_filenamesReshape!TensorSliceDataset/Const:output:00TensorSliceDataset/flat_filenames/shape:output:0"/device:CPU:0*
T0*
Tshape0
TensorSliceDatasetTensorSliceDataset*TensorSliceDataset/flat_filenames:output:0"/device:CPU:0*
output_shapes
: *
Toutput_types
2Ц
FlatMapDatasetFlatMapDatasetTensorSliceDataset:handle:0"/device:CPU:0*8
f3R1
/tf_data_structured_function_wrapper_52oRgbbAY9U*
output_types
2*

Targuments
 *
output_shapes
: №

MapDataset
MapDatasetFlatMapDataset:handle:0"/device:CPU:0*
output_types
2				*
use_inter_op_parallelism(*

Targuments
 *(
output_shapes
:@:@:: *8
f3R1
/tf_data_structured_function_wrapper_IJ2bRSPJECEL
RepeatDataset/countConst"/device:CPU:0*
value	B	 R*
dtype0	Є
RepeatDatasetRepeatDatasetMapDataset:handle:0RepeatDataset/count:output:0"/device:CPU:0*
output_types
2				*(
output_shapes
:@:@:: R
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
I:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ:џџџџџџџџџ")
batchdatasetv2BatchDatasetV2:handle:0
Є
Г
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
sparse_types
 *'
dense_shapes
: :@::@*
sparse_keys
 *
Tdense
2				*

num_sparse *A

dense_keys3
1labelpacketLengthpacketPayloadrecordTypes"_
'parsesingleexample_parsesingleexample_24ParseSingleExample/ParseSingleExample:dense_values:0"]
%parsesingleexample_parsesingleexample4ParseSingleExample/ParseSingleExample:dense_values:3"_
'parsesingleexample_parsesingleexample_04ParseSingleExample/ParseSingleExample:dense_values:1"_
'parsesingleexample_parsesingleexample_14ParseSingleExample/ParseSingleExample:dense_values:2""
train_op

Adam"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0""
	iterators

OneShotIterator:0"Ч
trainable_variablesЏЌ
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
mean_1/count:0"ё
local_variablesнк
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
group_deps_2"С
	variablesГА
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
save/Const:0save/Identity:0save/restore_all (5 @F8N9G-       <Aћ	сYи'§жAш*

accuracyЫ_?

loss/ы№>409гU       зпС	rsи'§жAш*F
D
checkpoint_pathB1 B+./checkpoints_tutorial18-2/model.ckpt-20200ќ7ц|