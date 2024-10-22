��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
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
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.12v2.4.0-49-g85c8b2a817f8��
�
conv2d_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_48/kernel
}
$conv2d_48/kernel/Read/ReadVariableOpReadVariableOpconv2d_48/kernel*&
_output_shapes
:*
dtype0
t
conv2d_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_48/bias
m
"conv2d_48/bias/Read/ReadVariableOpReadVariableOpconv2d_48/bias*
_output_shapes
:*
dtype0
�
conv2d_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_49/kernel
}
$conv2d_49/kernel/Read/ReadVariableOpReadVariableOpconv2d_49/kernel*&
_output_shapes
:*
dtype0
t
conv2d_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_49/bias
m
"conv2d_49/bias/Read/ReadVariableOpReadVariableOpconv2d_49/bias*
_output_shapes
:*
dtype0
|
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��* 
shared_namedense_26/kernel
u
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel* 
_output_shapes
:
��*
dtype0
s
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_26/bias
l
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes	
:�*
dtype0
{
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� * 
shared_namedense_27/kernel
t
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel*
_output_shapes
:	� *
dtype0
r
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_27/bias
k
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes
: *
dtype0
z
dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
* 
shared_namedense_28/kernel
s
#dense_28/kernel/Read/ReadVariableOpReadVariableOpdense_28/kernel*
_output_shapes

: 
*
dtype0
r
dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_28/bias
k
!dense_28/bias/Read/ReadVariableOpReadVariableOpdense_28/bias*
_output_shapes
:
*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0

NoOpNoOp
�%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�%
value�%B�% B�%
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
 trainable_variables
!regularization_losses
"	keras_api
R
#	variables
$trainable_variables
%regularization_losses
&	keras_api
h

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
h

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
h

3kernel
4bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
6
9iter
	:decay
;learning_rate
<momentum
F
0
1
2
3
'4
(5
-6
.7
38
49
F
0
1
2
3
'4
(5
-6
.7
38
49
 
�
=non_trainable_variables

	variables
trainable_variables

>layers
?layer_regularization_losses
@layer_metrics
Ametrics
regularization_losses
 
\Z
VARIABLE_VALUEconv2d_48/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_48/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
Bnon_trainable_variables
	variables
trainable_variables

Clayers
Dlayer_regularization_losses
Elayer_metrics
Fmetrics
regularization_losses
 
 
 
�
Gnon_trainable_variables
	variables
trainable_variables

Hlayers
Ilayer_regularization_losses
Jlayer_metrics
Kmetrics
regularization_losses
\Z
VARIABLE_VALUEconv2d_49/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_49/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
Lnon_trainable_variables
	variables
trainable_variables

Mlayers
Nlayer_regularization_losses
Olayer_metrics
Pmetrics
regularization_losses
 
 
 
�
Qnon_trainable_variables
	variables
 trainable_variables

Rlayers
Slayer_regularization_losses
Tlayer_metrics
Umetrics
!regularization_losses
 
 
 
�
Vnon_trainable_variables
#	variables
$trainable_variables

Wlayers
Xlayer_regularization_losses
Ylayer_metrics
Zmetrics
%regularization_losses
[Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_26/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1

'0
(1
 
�
[non_trainable_variables
)	variables
*trainable_variables

\layers
]layer_regularization_losses
^layer_metrics
_metrics
+regularization_losses
[Y
VARIABLE_VALUEdense_27/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_27/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

-0
.1

-0
.1
 
�
`non_trainable_variables
/	variables
0trainable_variables

alayers
blayer_regularization_losses
clayer_metrics
dmetrics
1regularization_losses
[Y
VARIABLE_VALUEdense_28/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_28/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

30
41

30
41
 
�
enon_trainable_variables
5	variables
6trainable_variables

flayers
glayer_regularization_losses
hlayer_metrics
imetrics
7regularization_losses
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
 
8
0
1
2
3
4
5
6
7
 
 

j0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	ktotal
	lcount
m	variables
n	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

k0
l1

m	variables
�
serving_default_conv2d_48_inputPlaceholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_48_inputconv2d_48/kernelconv2d_48/biasconv2d_49/kernelconv2d_49/biasdense_26/kerneldense_26/biasdense_27/kerneldense_27/biasdense_28/kerneldense_28/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_104503
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_48/kernel/Read/ReadVariableOp"conv2d_48/bias/Read/ReadVariableOp$conv2d_49/kernel/Read/ReadVariableOp"conv2d_49/bias/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOp#dense_28/kernel/Read/ReadVariableOp!dense_28/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_104821
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_48/kernelconv2d_48/biasconv2d_49/kernelconv2d_49/biasdense_26/kerneldense_26/biasdense_27/kerneldense_27/biasdense_28/kerneldense_28/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_104879֒
�
h
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_104149

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�%
�
I__inference_sequential_17_layer_call_and_return_conditional_losses_104390

inputs
conv2d_48_104361
conv2d_48_104363
conv2d_49_104367
conv2d_49_104369
dense_26_104374
dense_26_104376
dense_27_104379
dense_27_104381
dense_28_104384
dense_28_104386
identity��!conv2d_48/StatefulPartitionedCall�!conv2d_49/StatefulPartitionedCall� dense_26/StatefulPartitionedCall� dense_27/StatefulPartitionedCall� dense_28/StatefulPartitionedCall�
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_48_104361conv2d_48_104363*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_48_layer_call_and_return_conditional_losses_1041822#
!conv2d_48/StatefulPartitionedCall�
 max_pooling2d_46/PartitionedCallPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_1041492"
 max_pooling2d_46/PartitionedCall�
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_46/PartitionedCall:output:0conv2d_49_104367conv2d_49_104369*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_49_layer_call_and_return_conditional_losses_1042102#
!conv2d_49/StatefulPartitionedCall�
 max_pooling2d_47/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_1041612"
 max_pooling2d_47/PartitionedCall�
flatten_17/PartitionedCallPartitionedCall)max_pooling2d_47/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_17_layer_call_and_return_conditional_losses_1042332
flatten_17/PartitionedCall�
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_26_104374dense_26_104376*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_1042522"
 dense_26/StatefulPartitionedCall�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_104379dense_27_104381*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_1042792"
 dense_27/StatefulPartitionedCall�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_104384dense_28_104386*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_1043062"
 dense_28/StatefulPartitionedCall�
IdentityIdentity)dense_28/StatefulPartitionedCall:output:0"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:���������::::::::::2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
D__inference_dense_27_layer_call_and_return_conditional_losses_104721

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	� *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
G
+__inference_flatten_17_layer_call_fn_104690

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_17_layer_call_and_return_conditional_losses_1042332
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
D__inference_dense_26_layer_call_and_return_conditional_losses_104701

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
D__inference_dense_27_layer_call_and_return_conditional_losses_104279

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	� *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

*__inference_conv2d_49_layer_call_fn_104679

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_49_layer_call_and_return_conditional_losses_1042102
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
b
F__inference_flatten_17_layer_call_and_return_conditional_losses_104685

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
E__inference_conv2d_49_layer_call_and_return_conditional_losses_104670

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
b
F__inference_flatten_17_layer_call_and_return_conditional_losses_104233

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
E__inference_conv2d_48_layer_call_and_return_conditional_losses_104182

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�D
�
"__inference__traced_restore_104879
file_prefix%
!assignvariableop_conv2d_48_kernel%
!assignvariableop_1_conv2d_48_bias'
#assignvariableop_2_conv2d_49_kernel%
!assignvariableop_3_conv2d_49_bias&
"assignvariableop_4_dense_26_kernel$
 assignvariableop_5_dense_26_bias&
"assignvariableop_6_dense_27_kernel$
 assignvariableop_7_dense_27_bias&
"assignvariableop_8_dense_28_kernel$
 assignvariableop_9_dense_28_bias 
assignvariableop_10_sgd_iter!
assignvariableop_11_sgd_decay)
%assignvariableop_12_sgd_learning_rate$
 assignvariableop_13_sgd_momentum
assignvariableop_14_total
assignvariableop_15_count
identity_17��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_48_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_48_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_49_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_49_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_26_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_26_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_27_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_27_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_28_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_28_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_sgd_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_sgd_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp%assignvariableop_12_sgd_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp assignvariableop_13_sgd_momentumIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16�
Identity_17IdentityIdentity_16:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_17"#
identity_17Identity_17:output:0*U
_input_shapesD
B: ::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
~
)__inference_dense_27_layer_call_fn_104730

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_1042792
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
D__inference_dense_28_layer_call_and_return_conditional_losses_104306

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:��������� ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
.__inference_sequential_17_layer_call_fn_104614

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_17_layer_call_and_return_conditional_losses_1043902
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:���������::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
.__inference_sequential_17_layer_call_fn_104413
conv2d_48_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_48_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_17_layer_call_and_return_conditional_losses_1043902
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:���������::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_48_input
�
~
)__inference_dense_28_layer_call_fn_104750

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_1043062
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:��������� ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�)
�
__inference__traced_save_104821
file_prefix/
+savev2_conv2d_48_kernel_read_readvariableop-
)savev2_conv2d_48_bias_read_readvariableop/
+savev2_conv2d_49_kernel_read_readvariableop-
)savev2_conv2d_49_bias_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop.
*savev2_dense_28_kernel_read_readvariableop,
(savev2_dense_28_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_48_kernel_read_readvariableop)savev2_conv2d_48_bias_read_readvariableop+savev2_conv2d_49_kernel_read_readvariableop)savev2_conv2d_49_bias_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop*savev2_dense_28_kernel_read_readvariableop(savev2_dense_28_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapesv
t: :::::
��:�:	� : : 
:
: : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	� : 

_output_shapes
: :$	 

_output_shapes

: 
: 


_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
~
)__inference_dense_26_layer_call_fn_104710

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_1042522
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
I__inference_sequential_17_layer_call_and_return_conditional_losses_104447

inputs
conv2d_48_104418
conv2d_48_104420
conv2d_49_104424
conv2d_49_104426
dense_26_104431
dense_26_104433
dense_27_104436
dense_27_104438
dense_28_104441
dense_28_104443
identity��!conv2d_48/StatefulPartitionedCall�!conv2d_49/StatefulPartitionedCall� dense_26/StatefulPartitionedCall� dense_27/StatefulPartitionedCall� dense_28/StatefulPartitionedCall�
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_48_104418conv2d_48_104420*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_48_layer_call_and_return_conditional_losses_1041822#
!conv2d_48/StatefulPartitionedCall�
 max_pooling2d_46/PartitionedCallPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_1041492"
 max_pooling2d_46/PartitionedCall�
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_46/PartitionedCall:output:0conv2d_49_104424conv2d_49_104426*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_49_layer_call_and_return_conditional_losses_1042102#
!conv2d_49/StatefulPartitionedCall�
 max_pooling2d_47/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_1041612"
 max_pooling2d_47/PartitionedCall�
flatten_17/PartitionedCallPartitionedCall)max_pooling2d_47/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_17_layer_call_and_return_conditional_losses_1042332
flatten_17/PartitionedCall�
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_26_104431dense_26_104433*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_1042522"
 dense_26/StatefulPartitionedCall�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_104436dense_27_104438*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_1042792"
 dense_27/StatefulPartitionedCall�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_104441dense_28_104443*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_1043062"
 dense_28/StatefulPartitionedCall�
IdentityIdentity)dense_28/StatefulPartitionedCall:output:0"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:���������::::::::::2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
D__inference_dense_26_layer_call_and_return_conditional_losses_104252

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
D__inference_dense_28_layer_call_and_return_conditional_losses_104741

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:��������� ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
E__inference_conv2d_48_layer_call_and_return_conditional_losses_104650

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_104161

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_46_layer_call_fn_104155

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_1041492
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
.__inference_sequential_17_layer_call_fn_104639

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_17_layer_call_and_return_conditional_losses_1044472
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:���������::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�6
�
I__inference_sequential_17_layer_call_and_return_conditional_losses_104589

inputs,
(conv2d_48_conv2d_readvariableop_resource-
)conv2d_48_biasadd_readvariableop_resource,
(conv2d_49_conv2d_readvariableop_resource-
)conv2d_49_biasadd_readvariableop_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource+
'dense_28_matmul_readvariableop_resource,
(dense_28_biasadd_readvariableop_resource
identity�� conv2d_48/BiasAdd/ReadVariableOp�conv2d_48/Conv2D/ReadVariableOp� conv2d_49/BiasAdd/ReadVariableOp�conv2d_49/Conv2D/ReadVariableOp�dense_26/BiasAdd/ReadVariableOp�dense_26/MatMul/ReadVariableOp�dense_27/BiasAdd/ReadVariableOp�dense_27/MatMul/ReadVariableOp�dense_28/BiasAdd/ReadVariableOp�dense_28/MatMul/ReadVariableOp�
conv2d_48/Conv2D/ReadVariableOpReadVariableOp(conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_48/Conv2D/ReadVariableOp�
conv2d_48/Conv2DConv2Dinputs'conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_48/Conv2D�
 conv2d_48/BiasAdd/ReadVariableOpReadVariableOp)conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_48/BiasAdd/ReadVariableOp�
conv2d_48/BiasAddBiasAddconv2d_48/Conv2D:output:0(conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_48/BiasAdd~
conv2d_48/TanhTanhconv2d_48/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_48/Tanh�
max_pooling2d_46/MaxPoolMaxPoolconv2d_48/Tanh:y:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_46/MaxPool�
conv2d_49/Conv2D/ReadVariableOpReadVariableOp(conv2d_49_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_49/Conv2D/ReadVariableOp�
conv2d_49/Conv2DConv2D!max_pooling2d_46/MaxPool:output:0'conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_49/Conv2D�
 conv2d_49/BiasAdd/ReadVariableOpReadVariableOp)conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_49/BiasAdd/ReadVariableOp�
conv2d_49/BiasAddBiasAddconv2d_49/Conv2D:output:0(conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_49/BiasAdd~
conv2d_49/TanhTanhconv2d_49/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_49/Tanh�
max_pooling2d_47/MaxPoolMaxPoolconv2d_49/Tanh:y:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_47/MaxPoolu
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
flatten_17/Const�
flatten_17/ReshapeReshape!max_pooling2d_47/MaxPool:output:0flatten_17/Const:output:0*
T0*(
_output_shapes
:����������2
flatten_17/Reshape�
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_26/MatMul/ReadVariableOp�
dense_26/MatMulMatMulflatten_17/Reshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_26/MatMul�
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_26/BiasAdd/ReadVariableOp�
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_26/BiasAddt
dense_26/TanhTanhdense_26/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_26/Tanh�
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes
:	� *
dtype02 
dense_27/MatMul/ReadVariableOp�
dense_27/MatMulMatMuldense_26/Tanh:y:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_27/MatMul�
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_27/BiasAdd/ReadVariableOp�
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_27/BiasAdds
dense_27/TanhTanhdense_27/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
dense_27/Tanh�
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype02 
dense_28/MatMul/ReadVariableOp�
dense_28/MatMulMatMuldense_27/Tanh:y:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_28/MatMul�
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_28/BiasAdd/ReadVariableOp�
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_28/BiasAdd|
dense_28/SoftmaxSoftmaxdense_28/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_28/Softmax�
IdentityIdentitydense_28/Softmax:softmax:0!^conv2d_48/BiasAdd/ReadVariableOp ^conv2d_48/Conv2D/ReadVariableOp!^conv2d_49/BiasAdd/ReadVariableOp ^conv2d_49/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:���������::::::::::2D
 conv2d_48/BiasAdd/ReadVariableOp conv2d_48/BiasAdd/ReadVariableOp2B
conv2d_48/Conv2D/ReadVariableOpconv2d_48/Conv2D/ReadVariableOp2D
 conv2d_49/BiasAdd/ReadVariableOp conv2d_49/BiasAdd/ReadVariableOp2B
conv2d_49/Conv2D/ReadVariableOpconv2d_49/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
.__inference_sequential_17_layer_call_fn_104470
conv2d_48_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_48_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_17_layer_call_and_return_conditional_losses_1044472
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:���������::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_48_input
�

�
E__inference_conv2d_49_layer_call_and_return_conditional_losses_104210

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
I__inference_sequential_17_layer_call_and_return_conditional_losses_104323
conv2d_48_input
conv2d_48_104193
conv2d_48_104195
conv2d_49_104221
conv2d_49_104223
dense_26_104263
dense_26_104265
dense_27_104290
dense_27_104292
dense_28_104317
dense_28_104319
identity��!conv2d_48/StatefulPartitionedCall�!conv2d_49/StatefulPartitionedCall� dense_26/StatefulPartitionedCall� dense_27/StatefulPartitionedCall� dense_28/StatefulPartitionedCall�
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCallconv2d_48_inputconv2d_48_104193conv2d_48_104195*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_48_layer_call_and_return_conditional_losses_1041822#
!conv2d_48/StatefulPartitionedCall�
 max_pooling2d_46/PartitionedCallPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_1041492"
 max_pooling2d_46/PartitionedCall�
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_46/PartitionedCall:output:0conv2d_49_104221conv2d_49_104223*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_49_layer_call_and_return_conditional_losses_1042102#
!conv2d_49/StatefulPartitionedCall�
 max_pooling2d_47/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_1041612"
 max_pooling2d_47/PartitionedCall�
flatten_17/PartitionedCallPartitionedCall)max_pooling2d_47/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_17_layer_call_and_return_conditional_losses_1042332
flatten_17/PartitionedCall�
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_26_104263dense_26_104265*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_1042522"
 dense_26/StatefulPartitionedCall�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_104290dense_27_104292*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_1042792"
 dense_27/StatefulPartitionedCall�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_104317dense_28_104319*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_1043062"
 dense_28/StatefulPartitionedCall�
IdentityIdentity)dense_28/StatefulPartitionedCall:output:0"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:���������::::::::::2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_48_input
�
�
$__inference_signature_wrapper_104503
conv2d_48_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_48_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_1041432
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:���������::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_48_input
�6
�
I__inference_sequential_17_layer_call_and_return_conditional_losses_104546

inputs,
(conv2d_48_conv2d_readvariableop_resource-
)conv2d_48_biasadd_readvariableop_resource,
(conv2d_49_conv2d_readvariableop_resource-
)conv2d_49_biasadd_readvariableop_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource+
'dense_28_matmul_readvariableop_resource,
(dense_28_biasadd_readvariableop_resource
identity�� conv2d_48/BiasAdd/ReadVariableOp�conv2d_48/Conv2D/ReadVariableOp� conv2d_49/BiasAdd/ReadVariableOp�conv2d_49/Conv2D/ReadVariableOp�dense_26/BiasAdd/ReadVariableOp�dense_26/MatMul/ReadVariableOp�dense_27/BiasAdd/ReadVariableOp�dense_27/MatMul/ReadVariableOp�dense_28/BiasAdd/ReadVariableOp�dense_28/MatMul/ReadVariableOp�
conv2d_48/Conv2D/ReadVariableOpReadVariableOp(conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_48/Conv2D/ReadVariableOp�
conv2d_48/Conv2DConv2Dinputs'conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_48/Conv2D�
 conv2d_48/BiasAdd/ReadVariableOpReadVariableOp)conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_48/BiasAdd/ReadVariableOp�
conv2d_48/BiasAddBiasAddconv2d_48/Conv2D:output:0(conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_48/BiasAdd~
conv2d_48/TanhTanhconv2d_48/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_48/Tanh�
max_pooling2d_46/MaxPoolMaxPoolconv2d_48/Tanh:y:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_46/MaxPool�
conv2d_49/Conv2D/ReadVariableOpReadVariableOp(conv2d_49_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_49/Conv2D/ReadVariableOp�
conv2d_49/Conv2DConv2D!max_pooling2d_46/MaxPool:output:0'conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_49/Conv2D�
 conv2d_49/BiasAdd/ReadVariableOpReadVariableOp)conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_49/BiasAdd/ReadVariableOp�
conv2d_49/BiasAddBiasAddconv2d_49/Conv2D:output:0(conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_49/BiasAdd~
conv2d_49/TanhTanhconv2d_49/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_49/Tanh�
max_pooling2d_47/MaxPoolMaxPoolconv2d_49/Tanh:y:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_47/MaxPoolu
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
flatten_17/Const�
flatten_17/ReshapeReshape!max_pooling2d_47/MaxPool:output:0flatten_17/Const:output:0*
T0*(
_output_shapes
:����������2
flatten_17/Reshape�
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_26/MatMul/ReadVariableOp�
dense_26/MatMulMatMulflatten_17/Reshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_26/MatMul�
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_26/BiasAdd/ReadVariableOp�
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_26/BiasAddt
dense_26/TanhTanhdense_26/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_26/Tanh�
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes
:	� *
dtype02 
dense_27/MatMul/ReadVariableOp�
dense_27/MatMulMatMuldense_26/Tanh:y:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_27/MatMul�
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_27/BiasAdd/ReadVariableOp�
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_27/BiasAdds
dense_27/TanhTanhdense_27/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
dense_27/Tanh�
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype02 
dense_28/MatMul/ReadVariableOp�
dense_28/MatMulMatMuldense_27/Tanh:y:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_28/MatMul�
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_28/BiasAdd/ReadVariableOp�
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_28/BiasAdd|
dense_28/SoftmaxSoftmaxdense_28/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_28/Softmax�
IdentityIdentitydense_28/Softmax:softmax:0!^conv2d_48/BiasAdd/ReadVariableOp ^conv2d_48/Conv2D/ReadVariableOp!^conv2d_49/BiasAdd/ReadVariableOp ^conv2d_49/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:���������::::::::::2D
 conv2d_48/BiasAdd/ReadVariableOp conv2d_48/BiasAdd/ReadVariableOp2B
conv2d_48/Conv2D/ReadVariableOpconv2d_48/Conv2D/ReadVariableOp2D
 conv2d_49/BiasAdd/ReadVariableOp conv2d_49/BiasAdd/ReadVariableOp2B
conv2d_49/Conv2D/ReadVariableOpconv2d_49/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_47_layer_call_fn_104167

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_1041612
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�%
�
I__inference_sequential_17_layer_call_and_return_conditional_losses_104355
conv2d_48_input
conv2d_48_104326
conv2d_48_104328
conv2d_49_104332
conv2d_49_104334
dense_26_104339
dense_26_104341
dense_27_104344
dense_27_104346
dense_28_104349
dense_28_104351
identity��!conv2d_48/StatefulPartitionedCall�!conv2d_49/StatefulPartitionedCall� dense_26/StatefulPartitionedCall� dense_27/StatefulPartitionedCall� dense_28/StatefulPartitionedCall�
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCallconv2d_48_inputconv2d_48_104326conv2d_48_104328*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_48_layer_call_and_return_conditional_losses_1041822#
!conv2d_48/StatefulPartitionedCall�
 max_pooling2d_46/PartitionedCallPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_1041492"
 max_pooling2d_46/PartitionedCall�
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_46/PartitionedCall:output:0conv2d_49_104332conv2d_49_104334*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_49_layer_call_and_return_conditional_losses_1042102#
!conv2d_49/StatefulPartitionedCall�
 max_pooling2d_47/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_1041612"
 max_pooling2d_47/PartitionedCall�
flatten_17/PartitionedCallPartitionedCall)max_pooling2d_47/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_17_layer_call_and_return_conditional_losses_1042332
flatten_17/PartitionedCall�
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_26_104339dense_26_104341*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_1042522"
 dense_26/StatefulPartitionedCall�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_104344dense_27_104346*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_1042792"
 dense_27/StatefulPartitionedCall�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_104349dense_28_104351*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_1043062"
 dense_28/StatefulPartitionedCall�
IdentityIdentity)dense_28/StatefulPartitionedCall:output:0"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:���������::::::::::2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_48_input
�

*__inference_conv2d_48_layer_call_fn_104659

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_48_layer_call_and_return_conditional_losses_1041822
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�F
�
!__inference__wrapped_model_104143
conv2d_48_input:
6sequential_17_conv2d_48_conv2d_readvariableop_resource;
7sequential_17_conv2d_48_biasadd_readvariableop_resource:
6sequential_17_conv2d_49_conv2d_readvariableop_resource;
7sequential_17_conv2d_49_biasadd_readvariableop_resource9
5sequential_17_dense_26_matmul_readvariableop_resource:
6sequential_17_dense_26_biasadd_readvariableop_resource9
5sequential_17_dense_27_matmul_readvariableop_resource:
6sequential_17_dense_27_biasadd_readvariableop_resource9
5sequential_17_dense_28_matmul_readvariableop_resource:
6sequential_17_dense_28_biasadd_readvariableop_resource
identity��.sequential_17/conv2d_48/BiasAdd/ReadVariableOp�-sequential_17/conv2d_48/Conv2D/ReadVariableOp�.sequential_17/conv2d_49/BiasAdd/ReadVariableOp�-sequential_17/conv2d_49/Conv2D/ReadVariableOp�-sequential_17/dense_26/BiasAdd/ReadVariableOp�,sequential_17/dense_26/MatMul/ReadVariableOp�-sequential_17/dense_27/BiasAdd/ReadVariableOp�,sequential_17/dense_27/MatMul/ReadVariableOp�-sequential_17/dense_28/BiasAdd/ReadVariableOp�,sequential_17/dense_28/MatMul/ReadVariableOp�
-sequential_17/conv2d_48/Conv2D/ReadVariableOpReadVariableOp6sequential_17_conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_17/conv2d_48/Conv2D/ReadVariableOp�
sequential_17/conv2d_48/Conv2DConv2Dconv2d_48_input5sequential_17/conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2 
sequential_17/conv2d_48/Conv2D�
.sequential_17/conv2d_48/BiasAdd/ReadVariableOpReadVariableOp7sequential_17_conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_17/conv2d_48/BiasAdd/ReadVariableOp�
sequential_17/conv2d_48/BiasAddBiasAdd'sequential_17/conv2d_48/Conv2D:output:06sequential_17/conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2!
sequential_17/conv2d_48/BiasAdd�
sequential_17/conv2d_48/TanhTanh(sequential_17/conv2d_48/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
sequential_17/conv2d_48/Tanh�
&sequential_17/max_pooling2d_46/MaxPoolMaxPool sequential_17/conv2d_48/Tanh:y:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
2(
&sequential_17/max_pooling2d_46/MaxPool�
-sequential_17/conv2d_49/Conv2D/ReadVariableOpReadVariableOp6sequential_17_conv2d_49_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_17/conv2d_49/Conv2D/ReadVariableOp�
sequential_17/conv2d_49/Conv2DConv2D/sequential_17/max_pooling2d_46/MaxPool:output:05sequential_17/conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2 
sequential_17/conv2d_49/Conv2D�
.sequential_17/conv2d_49/BiasAdd/ReadVariableOpReadVariableOp7sequential_17_conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_17/conv2d_49/BiasAdd/ReadVariableOp�
sequential_17/conv2d_49/BiasAddBiasAdd'sequential_17/conv2d_49/Conv2D:output:06sequential_17/conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2!
sequential_17/conv2d_49/BiasAdd�
sequential_17/conv2d_49/TanhTanh(sequential_17/conv2d_49/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
sequential_17/conv2d_49/Tanh�
&sequential_17/max_pooling2d_47/MaxPoolMaxPool sequential_17/conv2d_49/Tanh:y:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
2(
&sequential_17/max_pooling2d_47/MaxPool�
sequential_17/flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2 
sequential_17/flatten_17/Const�
 sequential_17/flatten_17/ReshapeReshape/sequential_17/max_pooling2d_47/MaxPool:output:0'sequential_17/flatten_17/Const:output:0*
T0*(
_output_shapes
:����������2"
 sequential_17/flatten_17/Reshape�
,sequential_17/dense_26/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_26_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02.
,sequential_17/dense_26/MatMul/ReadVariableOp�
sequential_17/dense_26/MatMulMatMul)sequential_17/flatten_17/Reshape:output:04sequential_17/dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_17/dense_26/MatMul�
-sequential_17/dense_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_26_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-sequential_17/dense_26/BiasAdd/ReadVariableOp�
sequential_17/dense_26/BiasAddBiasAdd'sequential_17/dense_26/MatMul:product:05sequential_17/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
sequential_17/dense_26/BiasAdd�
sequential_17/dense_26/TanhTanh'sequential_17/dense_26/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
sequential_17/dense_26/Tanh�
,sequential_17/dense_27/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_27_matmul_readvariableop_resource*
_output_shapes
:	� *
dtype02.
,sequential_17/dense_27/MatMul/ReadVariableOp�
sequential_17/dense_27/MatMulMatMulsequential_17/dense_26/Tanh:y:04sequential_17/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
sequential_17/dense_27/MatMul�
-sequential_17/dense_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_27_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_17/dense_27/BiasAdd/ReadVariableOp�
sequential_17/dense_27/BiasAddBiasAdd'sequential_17/dense_27/MatMul:product:05sequential_17/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2 
sequential_17/dense_27/BiasAdd�
sequential_17/dense_27/TanhTanh'sequential_17/dense_27/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
sequential_17/dense_27/Tanh�
,sequential_17/dense_28/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_28_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype02.
,sequential_17/dense_28/MatMul/ReadVariableOp�
sequential_17/dense_28/MatMulMatMulsequential_17/dense_27/Tanh:y:04sequential_17/dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
sequential_17/dense_28/MatMul�
-sequential_17/dense_28/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_28_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02/
-sequential_17/dense_28/BiasAdd/ReadVariableOp�
sequential_17/dense_28/BiasAddBiasAdd'sequential_17/dense_28/MatMul:product:05sequential_17/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2 
sequential_17/dense_28/BiasAdd�
sequential_17/dense_28/SoftmaxSoftmax'sequential_17/dense_28/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2 
sequential_17/dense_28/Softmax�
IdentityIdentity(sequential_17/dense_28/Softmax:softmax:0/^sequential_17/conv2d_48/BiasAdd/ReadVariableOp.^sequential_17/conv2d_48/Conv2D/ReadVariableOp/^sequential_17/conv2d_49/BiasAdd/ReadVariableOp.^sequential_17/conv2d_49/Conv2D/ReadVariableOp.^sequential_17/dense_26/BiasAdd/ReadVariableOp-^sequential_17/dense_26/MatMul/ReadVariableOp.^sequential_17/dense_27/BiasAdd/ReadVariableOp-^sequential_17/dense_27/MatMul/ReadVariableOp.^sequential_17/dense_28/BiasAdd/ReadVariableOp-^sequential_17/dense_28/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:���������::::::::::2`
.sequential_17/conv2d_48/BiasAdd/ReadVariableOp.sequential_17/conv2d_48/BiasAdd/ReadVariableOp2^
-sequential_17/conv2d_48/Conv2D/ReadVariableOp-sequential_17/conv2d_48/Conv2D/ReadVariableOp2`
.sequential_17/conv2d_49/BiasAdd/ReadVariableOp.sequential_17/conv2d_49/BiasAdd/ReadVariableOp2^
-sequential_17/conv2d_49/Conv2D/ReadVariableOp-sequential_17/conv2d_49/Conv2D/ReadVariableOp2^
-sequential_17/dense_26/BiasAdd/ReadVariableOp-sequential_17/dense_26/BiasAdd/ReadVariableOp2\
,sequential_17/dense_26/MatMul/ReadVariableOp,sequential_17/dense_26/MatMul/ReadVariableOp2^
-sequential_17/dense_27/BiasAdd/ReadVariableOp-sequential_17/dense_27/BiasAdd/ReadVariableOp2\
,sequential_17/dense_27/MatMul/ReadVariableOp,sequential_17/dense_27/MatMul/ReadVariableOp2^
-sequential_17/dense_28/BiasAdd/ReadVariableOp-sequential_17/dense_28/BiasAdd/ReadVariableOp2\
,sequential_17/dense_28/MatMul/ReadVariableOp,sequential_17/dense_28/MatMul/ReadVariableOp:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_48_input"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
S
conv2d_48_input@
!serving_default_conv2d_48_input:0���������<
dense_280
StatefulPartitionedCall:0���������
tensorflow/serving/predict:��
�B
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
o_default_save_signature
p__call__
*q&call_and_return_all_conditional_losses"�?
_tf_keras_sequential�?{"class_name": "Sequential", "name": "sequential_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_17", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_48_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_48", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_46", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_49", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_47", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_17", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_17", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_48_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_48", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_46", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_49", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_47", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_17", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.009999999776482582, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
�


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
r__call__
*s&call_and_return_all_conditional_losses"�	
_tf_keras_layer�	{"class_name": "Conv2D", "name": "conv2d_48", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_48", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
�
	variables
trainable_variables
regularization_losses
	keras_api
t__call__
*u&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaxPooling2D", "name": "max_pooling2d_46", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_46", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�	

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
v__call__
*w&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Conv2D", "name": "conv2d_49", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_49", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 8]}}
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
x__call__
*y&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MaxPooling2D", "name": "max_pooling2d_47", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_47", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
z__call__
*{&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Flatten", "name": "flatten_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_17", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
�

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
|__call__
*}&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 392}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 392]}}
�

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
~__call__
*&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
�

3kernel
4bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
I
9iter
	:decay
;learning_rate
<momentum"
	optimizer
f
0
1
2
3
'4
(5
-6
.7
38
49"
trackable_list_wrapper
f
0
1
2
3
'4
(5
-6
.7
38
49"
trackable_list_wrapper
 "
trackable_list_wrapper
�
=non_trainable_variables

	variables
trainable_variables

>layers
?layer_regularization_losses
@layer_metrics
Ametrics
regularization_losses
p__call__
o_default_save_signature
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
*:(2conv2d_48/kernel
:2conv2d_48/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Bnon_trainable_variables
	variables
trainable_variables

Clayers
Dlayer_regularization_losses
Elayer_metrics
Fmetrics
regularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Gnon_trainable_variables
	variables
trainable_variables

Hlayers
Ilayer_regularization_losses
Jlayer_metrics
Kmetrics
regularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_49/kernel
:2conv2d_49/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Lnon_trainable_variables
	variables
trainable_variables

Mlayers
Nlayer_regularization_losses
Olayer_metrics
Pmetrics
regularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Qnon_trainable_variables
	variables
 trainable_variables

Rlayers
Slayer_regularization_losses
Tlayer_metrics
Umetrics
!regularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Vnon_trainable_variables
#	variables
$trainable_variables

Wlayers
Xlayer_regularization_losses
Ylayer_metrics
Zmetrics
%regularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
#:!
��2dense_26/kernel
:�2dense_26/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
[non_trainable_variables
)	variables
*trainable_variables

\layers
]layer_regularization_losses
^layer_metrics
_metrics
+regularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
": 	� 2dense_27/kernel
: 2dense_27/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
`non_trainable_variables
/	variables
0trainable_variables

alayers
blayer_regularization_losses
clayer_metrics
dmetrics
1regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
!: 
2dense_28/kernel
:
2dense_28/bias
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
�
enon_trainable_variables
5	variables
6trainable_variables

flayers
glayer_regularization_losses
hlayer_metrics
imetrics
7regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
j0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
	ktotal
	lcount
m	variables
n	keras_api"�
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
.
k0
l1"
trackable_list_wrapper
-
m	variables"
_generic_user_object
�2�
!__inference__wrapped_model_104143�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *6�3
1�.
conv2d_48_input���������
�2�
.__inference_sequential_17_layer_call_fn_104470
.__inference_sequential_17_layer_call_fn_104413
.__inference_sequential_17_layer_call_fn_104614
.__inference_sequential_17_layer_call_fn_104639�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
I__inference_sequential_17_layer_call_and_return_conditional_losses_104546
I__inference_sequential_17_layer_call_and_return_conditional_losses_104589
I__inference_sequential_17_layer_call_and_return_conditional_losses_104323
I__inference_sequential_17_layer_call_and_return_conditional_losses_104355�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_conv2d_48_layer_call_fn_104659�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_conv2d_48_layer_call_and_return_conditional_losses_104650�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
1__inference_max_pooling2d_46_layer_call_fn_104155�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_104149�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
*__inference_conv2d_49_layer_call_fn_104679�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_conv2d_49_layer_call_and_return_conditional_losses_104670�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
1__inference_max_pooling2d_47_layer_call_fn_104167�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_104161�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
+__inference_flatten_17_layer_call_fn_104690�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_flatten_17_layer_call_and_return_conditional_losses_104685�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_26_layer_call_fn_104710�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_dense_26_layer_call_and_return_conditional_losses_104701�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_27_layer_call_fn_104730�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_dense_27_layer_call_and_return_conditional_losses_104721�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_28_layer_call_fn_104750�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_dense_28_layer_call_and_return_conditional_losses_104741�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_104503conv2d_48_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
!__inference__wrapped_model_104143�
'(-.34@�=
6�3
1�.
conv2d_48_input���������
� "3�0
.
dense_28"�
dense_28���������
�
E__inference_conv2d_48_layer_call_and_return_conditional_losses_104650l7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
*__inference_conv2d_48_layer_call_fn_104659_7�4
-�*
(�%
inputs���������
� " �����������
E__inference_conv2d_49_layer_call_and_return_conditional_losses_104670l7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
*__inference_conv2d_49_layer_call_fn_104679_7�4
-�*
(�%
inputs���������
� " �����������
D__inference_dense_26_layer_call_and_return_conditional_losses_104701^'(0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� ~
)__inference_dense_26_layer_call_fn_104710Q'(0�-
&�#
!�
inputs����������
� "������������
D__inference_dense_27_layer_call_and_return_conditional_losses_104721]-.0�-
&�#
!�
inputs����������
� "%�"
�
0��������� 
� }
)__inference_dense_27_layer_call_fn_104730P-.0�-
&�#
!�
inputs����������
� "���������� �
D__inference_dense_28_layer_call_and_return_conditional_losses_104741\34/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������

� |
)__inference_dense_28_layer_call_fn_104750O34/�,
%�"
 �
inputs��������� 
� "����������
�
F__inference_flatten_17_layer_call_and_return_conditional_losses_104685a7�4
-�*
(�%
inputs���������
� "&�#
�
0����������
� �
+__inference_flatten_17_layer_call_fn_104690T7�4
-�*
(�%
inputs���������
� "������������
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_104149�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_46_layer_call_fn_104155�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_104161�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_47_layer_call_fn_104167�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
I__inference_sequential_17_layer_call_and_return_conditional_losses_104323}
'(-.34H�E
>�;
1�.
conv2d_48_input���������
p

 
� "%�"
�
0���������

� �
I__inference_sequential_17_layer_call_and_return_conditional_losses_104355}
'(-.34H�E
>�;
1�.
conv2d_48_input���������
p 

 
� "%�"
�
0���������

� �
I__inference_sequential_17_layer_call_and_return_conditional_losses_104546t
'(-.34?�<
5�2
(�%
inputs���������
p

 
� "%�"
�
0���������

� �
I__inference_sequential_17_layer_call_and_return_conditional_losses_104589t
'(-.34?�<
5�2
(�%
inputs���������
p 

 
� "%�"
�
0���������

� �
.__inference_sequential_17_layer_call_fn_104413p
'(-.34H�E
>�;
1�.
conv2d_48_input���������
p

 
� "����������
�
.__inference_sequential_17_layer_call_fn_104470p
'(-.34H�E
>�;
1�.
conv2d_48_input���������
p 

 
� "����������
�
.__inference_sequential_17_layer_call_fn_104614g
'(-.34?�<
5�2
(�%
inputs���������
p

 
� "����������
�
.__inference_sequential_17_layer_call_fn_104639g
'(-.34?�<
5�2
(�%
inputs���������
p 

 
� "����������
�
$__inference_signature_wrapper_104503�
'(-.34S�P
� 
I�F
D
conv2d_48_input1�.
conv2d_48_input���������"3�0
.
dense_28"�
dense_28���������
