Çľ
ˇ
9
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T"
Ttype:
2	"
use_lockingbool( 
l
ArgMax

input"T
	dimension"Tidx

output	"
Ttype:
2	"
Tidxtype0:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
p
	AssignAdd
ref"T

value"T

output_ref"T"
Ttype:
2	"
use_lockingbool( 
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
W
InTopK
predictions
targets"T
	precision
"
kint"
Ttype0:
2	
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
8
Softmax
logits"T
softmax"T"
Ttype:
2

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
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

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
q
Variable
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*	0.12.head2unknownÚ
Y
PlaceholderPlaceholder*
dtype0	*
shape: *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
Placeholder_1Placeholder*
dtype0*
shape: *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
Placeholder_2Placeholder*
dtype0*
shape: *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
hidden1/truncated_normal/shapeConst*
dtype0*
valueB"     *
_output_shapes
:
b
hidden1/truncated_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
d
hidden1/truncated_normal/stddevConst*
dtype0*
valueB
 *%I=*
_output_shapes
: 
Ź
(hidden1/truncated_normal/TruncatedNormalTruncatedNormalhidden1/truncated_normal/shape*
dtype0*
seed2 *

seed *
T0* 
_output_shapes
:


hidden1/truncated_normal/mulMul(hidden1/truncated_normal/TruncatedNormalhidden1/truncated_normal/stddev*
T0* 
_output_shapes
:


hidden1/truncated_normalAddhidden1/truncated_normal/mulhidden1/truncated_normal/mean*
T0* 
_output_shapes
:


hidden1/weightsVariable*
dtype0*
shape:
*
	container *
shared_name * 
_output_shapes
:

Ă
hidden1/weights/AssignAssignhidden1/weightshidden1/truncated_normal*
validate_shape(*"
_class
loc:@hidden1/weights*
use_locking(*
T0* 
_output_shapes
:


hidden1/weights/readIdentityhidden1/weights*"
_class
loc:@hidden1/weights*
T0* 
_output_shapes
:

\
hidden1/zerosConst*
dtype0*
valueB*    *
_output_shapes	
:
z
hidden1/biasesVariable*
dtype0*
shape:*
	container *
shared_name *
_output_shapes	
:
°
hidden1/biases/AssignAssignhidden1/biaseshidden1/zeros*
validate_shape(*!
_class
loc:@hidden1/biases*
use_locking(*
T0*
_output_shapes	
:
x
hidden1/biases/readIdentityhidden1/biases*!
_class
loc:@hidden1/biases*
T0*
_output_shapes	
:

hidden1/MatMulMatMulPlaceholder_1hidden1/weights/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
hidden1/addAddhidden1/MatMulhidden1/biases/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
hidden1/ReluReluhidden1/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
hidden2/truncated_normal/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
b
hidden2/truncated_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
d
hidden2/truncated_normal/stddevConst*
dtype0*
valueB
 *óľ=*
_output_shapes
: 
Ť
(hidden2/truncated_normal/TruncatedNormalTruncatedNormalhidden2/truncated_normal/shape*
dtype0*
seed2 *

seed *
T0*
_output_shapes
:	 

hidden2/truncated_normal/mulMul(hidden2/truncated_normal/TruncatedNormalhidden2/truncated_normal/stddev*
T0*
_output_shapes
:	 

hidden2/truncated_normalAddhidden2/truncated_normal/mulhidden2/truncated_normal/mean*
T0*
_output_shapes
:	 

hidden2/weightsVariable*
dtype0*
shape:	 *
	container *
shared_name *
_output_shapes
:	 
Â
hidden2/weights/AssignAssignhidden2/weightshidden2/truncated_normal*
validate_shape(*"
_class
loc:@hidden2/weights*
use_locking(*
T0*
_output_shapes
:	 

hidden2/weights/readIdentityhidden2/weights*"
_class
loc:@hidden2/weights*
T0*
_output_shapes
:	 
Z
hidden2/zerosConst*
dtype0*
valueB *    *
_output_shapes
: 
x
hidden2/biasesVariable*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
Ż
hidden2/biases/AssignAssignhidden2/biaseshidden2/zeros*
validate_shape(*!
_class
loc:@hidden2/biases*
use_locking(*
T0*
_output_shapes
: 
w
hidden2/biases/readIdentityhidden2/biases*!
_class
loc:@hidden2/biases*
T0*
_output_shapes
: 

hidden2/MatMulMatMulhidden1/Reluhidden2/weights/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
i
hidden2/addAddhidden2/MatMulhidden2/biases/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
S
hidden2/ReluReluhidden2/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
v
%softmax_linear/truncated_normal/shapeConst*
dtype0*
valueB"    
   *
_output_shapes
:
i
$softmax_linear/truncated_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
k
&softmax_linear/truncated_normal/stddevConst*
dtype0*
valueB
 *ó5>*
_output_shapes
: 
¸
/softmax_linear/truncated_normal/TruncatedNormalTruncatedNormal%softmax_linear/truncated_normal/shape*
dtype0*
seed2 *

seed *
T0*
_output_shapes

: 

Ź
#softmax_linear/truncated_normal/mulMul/softmax_linear/truncated_normal/TruncatedNormal&softmax_linear/truncated_normal/stddev*
T0*
_output_shapes

: 


softmax_linear/truncated_normalAdd#softmax_linear/truncated_normal/mul$softmax_linear/truncated_normal/mean*
T0*
_output_shapes

: 


softmax_linear/weightsVariable*
dtype0*
shape
: 
*
	container *
shared_name *
_output_shapes

: 

Ý
softmax_linear/weights/AssignAssignsoftmax_linear/weightssoftmax_linear/truncated_normal*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0*
_output_shapes

: 


softmax_linear/weights/readIdentitysoftmax_linear/weights*)
_class
loc:@softmax_linear/weights*
T0*
_output_shapes

: 

a
softmax_linear/zerosConst*
dtype0*
valueB
*    *
_output_shapes
:


softmax_linear/biasesVariable*
dtype0*
shape:
*
	container *
shared_name *
_output_shapes
:

Ë
softmax_linear/biases/AssignAssignsoftmax_linear/biasessoftmax_linear/zeros*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0*
_output_shapes
:


softmax_linear/biases/readIdentitysoftmax_linear/biases*(
_class
loc:@softmax_linear/biases*
T0*
_output_shapes
:

˘
softmax_linear/MatMulMatMulhidden2/Relusoftmax_linear/weights/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

~
softmax_linear/addAddsoftmax_linear/MatMulsoftmax_linear/biases/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

[
ToInt64CastPlaceholder_2*

DstT0	*

SrcT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
U
xentropy/ShapeShapeToInt64*
out_type0*
T0	*
_output_shapes
:
Ľ
xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitssoftmax_linear/addToInt64*
T0*
Tlabels0	*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

O
ConstConst*
dtype0*
valueB: *
_output_shapes
:
m
xentropy_meanMeanxentropy/xentropyConst*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
O
IdentityIdentityPlaceholder*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
p
ArgMaxArgMaxsoftmax_linear/addArgMax/dimension*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
X
SoftmaxSoftmaxsoftmax_linear/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

N
	loss/tagsConst*
dtype0*
valueB
 Bloss*
_output_shapes
: 
P
lossScalarSummary	loss/tagsxentropy_mean*
T0*
_output_shapes
: 
[
global_step/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
m
global_stepVariable*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
Ž
global_step/AssignAssignglobal_stepglobal_step/initial_value*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
T
gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
t
*gradients/xentropy_mean_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:

$gradients/xentropy_mean_grad/ReshapeReshapegradients/Fill*gradients/xentropy_mean_grad/Reshape/shape*
_output_shapes
:*
Tshape0*
T0
s
"gradients/xentropy_mean_grad/ShapeShapexentropy/xentropy*
out_type0*
T0*
_output_shapes
:
ł
!gradients/xentropy_mean_grad/TileTile$gradients/xentropy_mean_grad/Reshape"gradients/xentropy_mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
$gradients/xentropy_mean_grad/Shape_1Shapexentropy/xentropy*
out_type0*
T0*
_output_shapes
:
g
$gradients/xentropy_mean_grad/Shape_2Const*
dtype0*
valueB *
_output_shapes
: 
l
"gradients/xentropy_mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
ą
!gradients/xentropy_mean_grad/ProdProd$gradients/xentropy_mean_grad/Shape_1"gradients/xentropy_mean_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
n
$gradients/xentropy_mean_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
ľ
#gradients/xentropy_mean_grad/Prod_1Prod$gradients/xentropy_mean_grad/Shape_2$gradients/xentropy_mean_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
h
&gradients/xentropy_mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 

$gradients/xentropy_mean_grad/MaximumMaximum#gradients/xentropy_mean_grad/Prod_1&gradients/xentropy_mean_grad/Maximum/y*
T0*
_output_shapes
: 

%gradients/xentropy_mean_grad/floordivFloorDiv!gradients/xentropy_mean_grad/Prod$gradients/xentropy_mean_grad/Maximum*
T0*
_output_shapes
: 

!gradients/xentropy_mean_grad/CastCast%gradients/xentropy_mean_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 
Ł
$gradients/xentropy_mean_grad/truedivRealDiv!gradients/xentropy_mean_grad/Tile!gradients/xentropy_mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
gradients/zeros_like	ZerosLikexentropy/xentropy:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

z
/gradients/xentropy/xentropy_grad/ExpandDims/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
Î
+gradients/xentropy/xentropy_grad/ExpandDims
ExpandDims$gradients/xentropy_mean_grad/truediv/gradients/xentropy/xentropy_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

$gradients/xentropy/xentropy_grad/mulMul+gradients/xentropy/xentropy_grad/ExpandDimsxentropy/xentropy:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

|
'gradients/softmax_linear/add_grad/ShapeShapesoftmax_linear/MatMul*
out_type0*
T0*
_output_shapes
:
s
)gradients/softmax_linear/add_grad/Shape_1Const*
dtype0*
valueB:
*
_output_shapes
:
á
7gradients/softmax_linear/add_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/softmax_linear/add_grad/Shape)gradients/softmax_linear/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ë
%gradients/softmax_linear/add_grad/SumSum$gradients/xentropy/xentropy_grad/mul7gradients/softmax_linear/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ä
)gradients/softmax_linear/add_grad/ReshapeReshape%gradients/softmax_linear/add_grad/Sum'gradients/softmax_linear/add_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
Tshape0*
T0
Ď
'gradients/softmax_linear/add_grad/Sum_1Sum$gradients/xentropy/xentropy_grad/mul9gradients/softmax_linear/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
˝
+gradients/softmax_linear/add_grad/Reshape_1Reshape'gradients/softmax_linear/add_grad/Sum_1)gradients/softmax_linear/add_grad/Shape_1*
_output_shapes
:
*
Tshape0*
T0

2gradients/softmax_linear/add_grad/tuple/group_depsNoOp*^gradients/softmax_linear/add_grad/Reshape,^gradients/softmax_linear/add_grad/Reshape_1

:gradients/softmax_linear/add_grad/tuple/control_dependencyIdentity)gradients/softmax_linear/add_grad/Reshape3^gradients/softmax_linear/add_grad/tuple/group_deps*<
_class2
0.loc:@gradients/softmax_linear/add_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


<gradients/softmax_linear/add_grad/tuple/control_dependency_1Identity+gradients/softmax_linear/add_grad/Reshape_13^gradients/softmax_linear/add_grad/tuple/group_deps*>
_class4
20loc:@gradients/softmax_linear/add_grad/Reshape_1*
T0*
_output_shapes
:

ć
+gradients/softmax_linear/MatMul_grad/MatMulMatMul:gradients/softmax_linear/add_grad/tuple/control_dependencysoftmax_linear/weights/read*
transpose_b(*
transpose_a( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Đ
-gradients/softmax_linear/MatMul_grad/MatMul_1MatMulhidden2/Relu:gradients/softmax_linear/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes

: 


5gradients/softmax_linear/MatMul_grad/tuple/group_depsNoOp,^gradients/softmax_linear/MatMul_grad/MatMul.^gradients/softmax_linear/MatMul_grad/MatMul_1
 
=gradients/softmax_linear/MatMul_grad/tuple/control_dependencyIdentity+gradients/softmax_linear/MatMul_grad/MatMul6^gradients/softmax_linear/MatMul_grad/tuple/group_deps*>
_class4
20loc:@gradients/softmax_linear/MatMul_grad/MatMul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

?gradients/softmax_linear/MatMul_grad/tuple/control_dependency_1Identity-gradients/softmax_linear/MatMul_grad/MatMul_16^gradients/softmax_linear/MatMul_grad/tuple/group_deps*@
_class6
42loc:@gradients/softmax_linear/MatMul_grad/MatMul_1*
T0*
_output_shapes

: 

Ż
$gradients/hidden2/Relu_grad/ReluGradReluGrad=gradients/softmax_linear/MatMul_grad/tuple/control_dependencyhidden2/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
n
 gradients/hidden2/add_grad/ShapeShapehidden2/MatMul*
out_type0*
T0*
_output_shapes
:
l
"gradients/hidden2/add_grad/Shape_1Const*
dtype0*
valueB: *
_output_shapes
:
Ě
0gradients/hidden2/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/hidden2/add_grad/Shape"gradients/hidden2/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
˝
gradients/hidden2/add_grad/SumSum$gradients/hidden2/Relu_grad/ReluGrad0gradients/hidden2/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ż
"gradients/hidden2/add_grad/ReshapeReshapegradients/hidden2/add_grad/Sum gradients/hidden2/add_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
Tshape0*
T0
Á
 gradients/hidden2/add_grad/Sum_1Sum$gradients/hidden2/Relu_grad/ReluGrad2gradients/hidden2/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
¨
$gradients/hidden2/add_grad/Reshape_1Reshape gradients/hidden2/add_grad/Sum_1"gradients/hidden2/add_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0

+gradients/hidden2/add_grad/tuple/group_depsNoOp#^gradients/hidden2/add_grad/Reshape%^gradients/hidden2/add_grad/Reshape_1
ú
3gradients/hidden2/add_grad/tuple/control_dependencyIdentity"gradients/hidden2/add_grad/Reshape,^gradients/hidden2/add_grad/tuple/group_deps*5
_class+
)'loc:@gradients/hidden2/add_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ó
5gradients/hidden2/add_grad/tuple/control_dependency_1Identity$gradients/hidden2/add_grad/Reshape_1,^gradients/hidden2/add_grad/tuple/group_deps*7
_class-
+)loc:@gradients/hidden2/add_grad/Reshape_1*
T0*
_output_shapes
: 
Ň
$gradients/hidden2/MatMul_grad/MatMulMatMul3gradients/hidden2/add_grad/tuple/control_dependencyhidden2/weights/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
&gradients/hidden2/MatMul_grad/MatMul_1MatMulhidden1/Relu3gradients/hidden2/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	 

.gradients/hidden2/MatMul_grad/tuple/group_depsNoOp%^gradients/hidden2/MatMul_grad/MatMul'^gradients/hidden2/MatMul_grad/MatMul_1

6gradients/hidden2/MatMul_grad/tuple/control_dependencyIdentity$gradients/hidden2/MatMul_grad/MatMul/^gradients/hidden2/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/hidden2/MatMul_grad/MatMul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

8gradients/hidden2/MatMul_grad/tuple/control_dependency_1Identity&gradients/hidden2/MatMul_grad/MatMul_1/^gradients/hidden2/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	 
Š
$gradients/hidden1/Relu_grad/ReluGradReluGrad6gradients/hidden2/MatMul_grad/tuple/control_dependencyhidden1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
 gradients/hidden1/add_grad/ShapeShapehidden1/MatMul*
out_type0*
T0*
_output_shapes
:
m
"gradients/hidden1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ě
0gradients/hidden1/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/hidden1/add_grad/Shape"gradients/hidden1/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
˝
gradients/hidden1/add_grad/SumSum$gradients/hidden1/Relu_grad/ReluGrad0gradients/hidden1/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
°
"gradients/hidden1/add_grad/ReshapeReshapegradients/hidden1/add_grad/Sum gradients/hidden1/add_grad/Shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
Á
 gradients/hidden1/add_grad/Sum_1Sum$gradients/hidden1/Relu_grad/ReluGrad2gradients/hidden1/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Š
$gradients/hidden1/add_grad/Reshape_1Reshape gradients/hidden1/add_grad/Sum_1"gradients/hidden1/add_grad/Shape_1*
_output_shapes	
:*
Tshape0*
T0

+gradients/hidden1/add_grad/tuple/group_depsNoOp#^gradients/hidden1/add_grad/Reshape%^gradients/hidden1/add_grad/Reshape_1
ű
3gradients/hidden1/add_grad/tuple/control_dependencyIdentity"gradients/hidden1/add_grad/Reshape,^gradients/hidden1/add_grad/tuple/group_deps*5
_class+
)'loc:@gradients/hidden1/add_grad/Reshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
5gradients/hidden1/add_grad/tuple/control_dependency_1Identity$gradients/hidden1/add_grad/Reshape_1,^gradients/hidden1/add_grad/tuple/group_deps*7
_class-
+)loc:@gradients/hidden1/add_grad/Reshape_1*
T0*
_output_shapes	
:
Ň
$gradients/hidden1/MatMul_grad/MatMulMatMul3gradients/hidden1/add_grad/tuple/control_dependencyhidden1/weights/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
&gradients/hidden1/MatMul_grad/MatMul_1MatMulPlaceholder_13gradients/hidden1/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:


.gradients/hidden1/MatMul_grad/tuple/group_depsNoOp%^gradients/hidden1/MatMul_grad/MatMul'^gradients/hidden1/MatMul_grad/MatMul_1

6gradients/hidden1/MatMul_grad/tuple/control_dependencyIdentity$gradients/hidden1/MatMul_grad/MatMul/^gradients/hidden1/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/hidden1/MatMul_grad/MatMul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

8gradients/hidden1/MatMul_grad/tuple/control_dependency_1Identity&gradients/hidden1/MatMul_grad/MatMul_1/^gradients/hidden1/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/hidden1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

b
GradientDescent/learning_rateConst*
dtype0*
valueB
 *
×#<*
_output_shapes
: 

;GradientDescent/update_hidden1/weights/ApplyGradientDescentApplyGradientDescenthidden1/weightsGradientDescent/learning_rate8gradients/hidden1/MatMul_grad/tuple/control_dependency_1*"
_class
loc:@hidden1/weights*
use_locking( *
T0* 
_output_shapes
:


:GradientDescent/update_hidden1/biases/ApplyGradientDescentApplyGradientDescenthidden1/biasesGradientDescent/learning_rate5gradients/hidden1/add_grad/tuple/control_dependency_1*!
_class
loc:@hidden1/biases*
use_locking( *
T0*
_output_shapes	
:

;GradientDescent/update_hidden2/weights/ApplyGradientDescentApplyGradientDescenthidden2/weightsGradientDescent/learning_rate8gradients/hidden2/MatMul_grad/tuple/control_dependency_1*"
_class
loc:@hidden2/weights*
use_locking( *
T0*
_output_shapes
:	 

:GradientDescent/update_hidden2/biases/ApplyGradientDescentApplyGradientDescenthidden2/biasesGradientDescent/learning_rate5gradients/hidden2/add_grad/tuple/control_dependency_1*!
_class
loc:@hidden2/biases*
use_locking( *
T0*
_output_shapes
: 
š
BGradientDescent/update_softmax_linear/weights/ApplyGradientDescentApplyGradientDescentsoftmax_linear/weightsGradientDescent/learning_rate?gradients/softmax_linear/MatMul_grad/tuple/control_dependency_1*)
_class
loc:@softmax_linear/weights*
use_locking( *
T0*
_output_shapes

: 

Ż
AGradientDescent/update_softmax_linear/biases/ApplyGradientDescentApplyGradientDescentsoftmax_linear/biasesGradientDescent/learning_rate<gradients/softmax_linear/add_grad/tuple/control_dependency_1*(
_class
loc:@softmax_linear/biases*
use_locking( *
T0*
_output_shapes
:


GradientDescent/updateNoOp<^GradientDescent/update_hidden1/weights/ApplyGradientDescent;^GradientDescent/update_hidden1/biases/ApplyGradientDescent<^GradientDescent/update_hidden2/weights/ApplyGradientDescent;^GradientDescent/update_hidden2/biases/ApplyGradientDescentC^GradientDescent/update_softmax_linear/weights/ApplyGradientDescentB^GradientDescent/update_softmax_linear/biases/ApplyGradientDescent

GradientDescent/valueConst^GradientDescent/update*
dtype0*
_class
loc:@global_step*
value	B :*
_output_shapes
: 

GradientDescent	AssignAddglobal_stepGradientDescent/value*
_class
loc:@global_step*
use_locking( *
T0*
_output_shapes
: 
j
InTopKInTopKsoftmax_linear/addPlaceholder_2*
k*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Q
CastCastInTopK*

DstT0*

SrcT0
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Q
Const_1Const*
dtype0*
valueB: *
_output_shapes
:
W
SumSumCastConst_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
P
MergeSummary/MergeSummaryMergeSummaryloss*
_output_shapes
: *
N
Â
initNoOp^hidden1/weights/Assign^hidden1/biases/Assign^hidden2/weights/Assign^hidden2/biases/Assign^softmax_linear/weights/Assign^softmax_linear/biases/Assign^global_step/Assign
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
ŕ
save/SaveV2/tensor_namesConst*
dtype0*
valueBBglobal_stepBhidden1/biasesBhidden1/weightsBhidden2/biasesBhidden2/weightsBsoftmax_linear/biasesBsoftmax_linear/weights*
_output_shapes
:
q
save/SaveV2/shape_and_slicesConst*
dtype0*!
valueBB B B B B B B *
_output_shapes
:
î
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_stephidden1/biaseshidden1/weightshidden2/biaseshidden2/weightssoftmax_linear/biasessoftmax_linear/weights*
dtypes
	2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0*
_output_shapes
: 
o
save/RestoreV2/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:

save/AssignAssignglobal_stepsave/RestoreV2*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
t
save/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBhidden1/biases*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
Ť
save/Assign_1Assignhidden1/biasessave/RestoreV2_1*
validate_shape(*!
_class
loc:@hidden1/biases*
use_locking(*
T0*
_output_shapes	
:
u
save/RestoreV2_2/tensor_namesConst*
dtype0*$
valueBBhidden1/weights*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
˛
save/Assign_2Assignhidden1/weightssave/RestoreV2_2*
validate_shape(*"
_class
loc:@hidden1/weights*
use_locking(*
T0* 
_output_shapes
:

t
save/RestoreV2_3/tensor_namesConst*
dtype0*#
valueBBhidden2/biases*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
Ş
save/Assign_3Assignhidden2/biasessave/RestoreV2_3*
validate_shape(*!
_class
loc:@hidden2/biases*
use_locking(*
T0*
_output_shapes
: 
u
save/RestoreV2_4/tensor_namesConst*
dtype0*$
valueBBhidden2/weights*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
ą
save/Assign_4Assignhidden2/weightssave/RestoreV2_4*
validate_shape(*"
_class
loc:@hidden2/weights*
use_locking(*
T0*
_output_shapes
:	 
{
save/RestoreV2_5/tensor_namesConst*
dtype0**
value!BBsoftmax_linear/biases*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
¸
save/Assign_5Assignsoftmax_linear/biasessave/RestoreV2_5*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0*
_output_shapes
:

|
save/RestoreV2_6/tensor_namesConst*
dtype0*+
value"B Bsoftmax_linear/weights*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
ž
save/Assign_6Assignsoftmax_linear/weightssave/RestoreV2_6*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0*
_output_shapes

: 


save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6
R
save_1/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_8c83dea911554a2dbae49864916bef4a/part*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
â
save_1/SaveV2/tensor_namesConst*
dtype0*
valueBBglobal_stepBhidden1/biasesBhidden1/weightsBhidden2/biasesBhidden2/weightsBsoftmax_linear/biasesBsoftmax_linear/weights*
_output_shapes
:
s
save_1/SaveV2/shape_and_slicesConst*
dtype0*!
valueBB B B B B B B *
_output_shapes
:

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesglobal_stephidden1/biaseshidden1/weightshidden2/biaseshidden2/weightssoftmax_linear/biasessoftmax_linear/weights*
dtypes
	2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
T0*
_output_shapes
: 
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*

axis *
T0*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
q
save_1/RestoreV2/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
 
save_1/AssignAssignglobal_stepsave_1/RestoreV2*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
v
save_1/RestoreV2_1/tensor_namesConst*
dtype0*#
valueBBhidden1/biases*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
Ż
save_1/Assign_1Assignhidden1/biasessave_1/RestoreV2_1*
validate_shape(*!
_class
loc:@hidden1/biases*
use_locking(*
T0*
_output_shapes	
:
w
save_1/RestoreV2_2/tensor_namesConst*
dtype0*$
valueBBhidden1/weights*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
ś
save_1/Assign_2Assignhidden1/weightssave_1/RestoreV2_2*
validate_shape(*"
_class
loc:@hidden1/weights*
use_locking(*
T0* 
_output_shapes
:

v
save_1/RestoreV2_3/tensor_namesConst*
dtype0*#
valueBBhidden2/biases*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
Ž
save_1/Assign_3Assignhidden2/biasessave_1/RestoreV2_3*
validate_shape(*!
_class
loc:@hidden2/biases*
use_locking(*
T0*
_output_shapes
: 
w
save_1/RestoreV2_4/tensor_namesConst*
dtype0*$
valueBBhidden2/weights*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
ľ
save_1/Assign_4Assignhidden2/weightssave_1/RestoreV2_4*
validate_shape(*"
_class
loc:@hidden2/weights*
use_locking(*
T0*
_output_shapes
:	 
}
save_1/RestoreV2_5/tensor_namesConst*
dtype0**
value!BBsoftmax_linear/biases*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
ź
save_1/Assign_5Assignsoftmax_linear/biasessave_1/RestoreV2_5*
validate_shape(*(
_class
loc:@softmax_linear/biases*
use_locking(*
T0*
_output_shapes
:

~
save_1/RestoreV2_6/tensor_namesConst*
dtype0*+
value"B Bsoftmax_linear/weights*
_output_shapes
:
l
#save_1/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Â
save_1/Assign_6Assignsoftmax_linear/weightssave_1/RestoreV2_6*
validate_shape(*)
_class
loc:@softmax_linear/weights*
use_locking(*
T0*
_output_shapes

: 


save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"B
inputs86
4{"image": "Placeholder_1:0", "key": "Placeholder:0"}"Ú
trainable_variablesÂż
C
hidden1/weights:0hidden1/weights/Assignhidden1/weights/read:0
@
hidden1/biases:0hidden1/biases/Assignhidden1/biases/read:0
C
hidden2/weights:0hidden2/weights/Assignhidden2/weights/read:0
@
hidden2/biases:0hidden2/biases/Assignhidden2/biases/read:0
X
softmax_linear/weights:0softmax_linear/weights/Assignsoftmax_linear/weights/read:0
U
softmax_linear/biases:0softmax_linear/biases/Assignsoftmax_linear/biases/read:0"U
outputsJH
F{"prediction": "ArgMax:0", "key": "Identity:0", "scores": "Softmax:0"}"
	variablesűř
C
hidden1/weights:0hidden1/weights/Assignhidden1/weights/read:0
@
hidden1/biases:0hidden1/biases/Assignhidden1/biases/read:0
C
hidden2/weights:0hidden2/weights/Assignhidden2/weights/read:0
@
hidden2/biases:0hidden2/biases/Assignhidden2/biases/read:0
X
softmax_linear/weights:0softmax_linear/weights/Assignsoftmax_linear/weights/read:0
U
softmax_linear/biases:0softmax_linear/biases/Assignsoftmax_linear/biases/read:0
7
global_step:0global_step/Assignglobal_step/read:0"
train_op

GradientDescent"
	summaries


loss:0*Ş
serving_default

image
Placeholder_1:0

key
Placeholder:0

prediction

ArgMax:0
key

Identity:0
scores
	Softmax:0tensorflow/serving/predict