��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
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
executor_typestring ��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.9.12v2.9.0-18-gd8ce9f9c3018��
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/dense_4/kernel/v
�
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes
:	�@*
dtype0
�
Adam/conv2d_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_18/bias/v
{
)Adam/conv2d_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_18/kernel/v
�
+Adam/conv2d_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_17/bias/v
{
)Adam/conv2d_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_17/kernel/v
�
+Adam/conv2d_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_16/bias/v
{
)Adam/conv2d_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_16/kernel/v
�
+Adam/conv2d_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_15/bias/v
{
)Adam/conv2d_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_15/kernel/v
�
+Adam/conv2d_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/v*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_14/bias/v
{
)Adam/conv2d_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv2d_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_14/kernel/v
�
+Adam/conv2d_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/v*&
_output_shapes
: *
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/dense_4/kernel/m
�
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes
:	�@*
dtype0
�
Adam/conv2d_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_18/bias/m
{
)Adam/conv2d_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_18/kernel/m
�
+Adam/conv2d_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_17/bias/m
{
)Adam/conv2d_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_17/kernel/m
�
+Adam/conv2d_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_16/bias/m
{
)Adam/conv2d_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_16/kernel/m
�
+Adam/conv2d_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_15/bias/m
{
)Adam/conv2d_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_15/kernel/m
�
+Adam/conv2d_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/m*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_14/bias/m
{
)Adam/conv2d_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv2d_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_14/kernel/m
�
+Adam/conv2d_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/m*&
_output_shapes
: *
dtype0
h
StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar
a
StateVar/Read/ReadVariableOpReadVariableOpStateVar*
_output_shapes
:*
dtype0	
l

StateVar_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar_1
e
StateVar_1/Read/ReadVariableOpReadVariableOp
StateVar_1*
_output_shapes
:*
dtype0	
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:@*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:@*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	�@*
dtype0
t
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
:@*
dtype0
�
conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_17/bias
m
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
:@*
dtype0
�
conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_17/kernel
}
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_16/bias
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
:@*
dtype0
�
conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_16/kernel
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_15/bias
m
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes
:@*
dtype0
�
conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_15/kernel
}
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_14/bias
m
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes
: *
dtype0
�
conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_14/kernel
}
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*&
_output_shapes
: *
dtype0

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value�B� B�
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer_with_weights-5
layer-13
layer_with_weights-6
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses* 
�
!layer-0
"layer-1
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses*
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
 1_jit_compiled_convolution_op*
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses* 
�
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias
 @_jit_compiled_convolution_op*
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias
 O_jit_compiled_convolution_op*
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses* 
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel
]bias
 ^_jit_compiled_convolution_op*
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses* 
�
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias
 m_jit_compiled_convolution_op*
�
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses* 
�
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses* 
�
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
n
/0
01
>2
?3
M4
N5
\6
]7
k8
l9
�10
�11
�12
�13*
n
/0
01
>2
?3
M4
N5
\6
]7
k8
l9
�10
�11
�12
�13*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate/m�0m�>m�?m�Mm�Nm�\m�]m�km�lm�	�m�	�m�	�m�	�m�/v�0v�>v�?v�Mv�Nv�\v�]v�kv�lv�	�v�	�v�	�v�	�v�*

�serving_default* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 

/0
01*

/0
01*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_14/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_14/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

>0
?1*

>0
?1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_15/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_15/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

M0
N1*

M0
N1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_16/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_16/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

\0
]1*

\0
]1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

k0
l1*

k0
l1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
r
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

0
1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 

!0
"1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

�
_state_var*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
vp
VARIABLE_VALUE
StateVar_1Rlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEStateVarRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_14/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_14/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_15/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_15/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_16/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_16/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_17/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_17/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_18/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_18/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_14/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_14/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_15/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_15/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_16/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_16/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_17/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_17/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_18/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_18/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
 serving_default_sequential_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_sequential_inputconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_20456
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_14/kernel/Read/ReadVariableOp"conv2d_14/bias/Read/ReadVariableOp$conv2d_15/kernel/Read/ReadVariableOp"conv2d_15/bias/Read/ReadVariableOp$conv2d_16/kernel/Read/ReadVariableOp"conv2d_16/bias/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpStateVar_1/Read/ReadVariableOpStateVar/Read/ReadVariableOp+Adam/conv2d_14/kernel/m/Read/ReadVariableOp)Adam/conv2d_14/bias/m/Read/ReadVariableOp+Adam/conv2d_15/kernel/m/Read/ReadVariableOp)Adam/conv2d_15/bias/m/Read/ReadVariableOp+Adam/conv2d_16/kernel/m/Read/ReadVariableOp)Adam/conv2d_16/bias/m/Read/ReadVariableOp+Adam/conv2d_17/kernel/m/Read/ReadVariableOp)Adam/conv2d_17/bias/m/Read/ReadVariableOp+Adam/conv2d_18/kernel/m/Read/ReadVariableOp)Adam/conv2d_18/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp+Adam/conv2d_14/kernel/v/Read/ReadVariableOp)Adam/conv2d_14/bias/v/Read/ReadVariableOp+Adam/conv2d_15/kernel/v/Read/ReadVariableOp)Adam/conv2d_15/bias/v/Read/ReadVariableOp+Adam/conv2d_16/kernel/v/Read/ReadVariableOp)Adam/conv2d_16/bias/v/Read/ReadVariableOp+Adam/conv2d_17/kernel/v/Read/ReadVariableOp)Adam/conv2d_17/bias/v/Read/ReadVariableOp+Adam/conv2d_18/kernel/v/Read/ReadVariableOp)Adam/conv2d_18/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpConst*B
Tin;
927			*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_21971
�

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount
StateVar_1StateVarAdam/conv2d_14/kernel/mAdam/conv2d_14/bias/mAdam/conv2d_15/kernel/mAdam/conv2d_15/bias/mAdam/conv2d_16/kernel/mAdam/conv2d_16/bias/mAdam/conv2d_17/kernel/mAdam/conv2d_17/bias/mAdam/conv2d_18/kernel/mAdam/conv2d_18/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/conv2d_14/kernel/vAdam/conv2d_14/bias/vAdam/conv2d_15/kernel/vAdam/conv2d_15/bias/vAdam/conv2d_16/kernel/vAdam/conv2d_16/bias/vAdam/conv2d_17/kernel/vAdam/conv2d_17/bias/vAdam/conv2d_18/kernel/vAdam/conv2d_18/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v*A
Tin:
826*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_22140��
�?
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_20415
sequential_input 
sequential_2_20368:	 
sequential_2_20370:	)
conv2d_14_20373: 
conv2d_14_20375: )
conv2d_15_20379: @
conv2d_15_20381:@)
conv2d_16_20385:@@
conv2d_16_20387:@)
conv2d_17_20391:@@
conv2d_17_20393:@)
conv2d_18_20397:@@
conv2d_18_20399:@ 
dense_4_20404:	�@
dense_4_20406:@
dense_5_20409:@
dense_5_20411:
identity��!conv2d_14/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�!conv2d_18/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�$sequential_2/StatefulPartitionedCall�
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_19456�
$sequential_2/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0sequential_2_20368sequential_2_20370*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_19818�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0conv2d_14_20373conv2d_14_20375*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_19930�
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_19859�
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_15_20379conv2d_15_20381*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_19948�
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_19871�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_16_20385conv2d_16_20387*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_19966�
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_19883�
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_20391conv2d_17_20393*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_19984�
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_19895�
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_20397conv2d_18_20399*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_20002�
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_19907�
flatten_2/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_20015�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_20404dense_4_20406*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_20028�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_20409dense_5_20411*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_20045w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_namesequential_input
�
�
6map_while_stateless_random_flip_left_right_false_21563u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:��"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
#__inference_signature_wrapper_20456
sequential_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_19402o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_namesequential_input
��
�
map_while_body_19654$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	��2map/while/stateful_uniform_full_int/RngReadAndSkip�4map/while/stateful_uniform_full_int_1/RngReadAndSkip�
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:��*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:���
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_left_right_false_19714*#
output_shapes
:��*H
then_branch9R7
5map_while_stateless_random_flip_left_right_true_19713�
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:��u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
map/while/stack_1Pack.map/while/stateful_uniform_full_int_1:output:0map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:p
map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:���
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *F
else_branch7R5
3map_while_stateless_random_flip_up_down_false_19763*#
output_shapes
:��*E
then_branch6R4
2map_while_stateless_random_flip_up_down_true_19762�
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:���
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���Q
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: �
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: �
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip2l
4map/while/stateful_uniform_full_int_1/RngReadAndSkip4map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
H
,__inference_sequential_2_layer_call_fn_20961

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_19496j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
L
0__inference_max_pooling2d_17_layer_call_fn_21361

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
GPU 2J 8� *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_19895�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
B__inference_dense_4_layer_call_and_return_conditional_losses_21427

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
Msequential_2_random_flip_2_map_while_stateless_random_flip_up_down_true_20722�
�sequential_2_random_flip_2_map_while_stateless_random_flip_up_down_reversev2_sequential_2_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyO
Ksequential_2_random_flip_2_map_while_stateless_random_flip_up_down_identity�
Qsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
Lsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2�sequential_2_random_flip_2_map_while_stateless_random_flip_up_down_reversev2_sequential_2_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyZsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
Ksequential_2/random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentityUsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:��"�
Ksequential_2_random_flip_2_map_while_stateless_random_flip_up_down_identityTsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_21407

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_19907

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_17_layer_call_and_return_conditional_losses_21356

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
,__inference_sequential_5_layer_call_fn_20489

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_20052o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
a
E__inference_sequential_layer_call_and_return_conditional_losses_19456

inputs
identity�
resizing/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_19415�
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_19425t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�

/sequential_2_random_flip_2_map_while_body_20614Z
Vsequential_2_random_flip_2_map_while_sequential_2_random_flip_2_map_while_loop_counterU
Qsequential_2_random_flip_2_map_while_sequential_2_random_flip_2_map_strided_slice4
0sequential_2_random_flip_2_map_while_placeholder6
2sequential_2_random_flip_2_map_while_placeholder_1Y
Usequential_2_random_flip_2_map_while_sequential_2_random_flip_2_map_strided_slice_1_0�
�sequential_2_random_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_sequential_2_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_0f
Xsequential_2_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	1
-sequential_2_random_flip_2_map_while_identity3
/sequential_2_random_flip_2_map_while_identity_13
/sequential_2_random_flip_2_map_while_identity_23
/sequential_2_random_flip_2_map_while_identity_3W
Ssequential_2_random_flip_2_map_while_sequential_2_random_flip_2_map_strided_slice_1�
�sequential_2_random_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_sequential_2_random_flip_2_map_tensorarrayunstack_tensorlistfromtensord
Vsequential_2_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource:	��Msequential_2/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip�Osequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip�
Vsequential_2/random_flip_2/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
Hsequential_2/random_flip_2/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_2_random_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_sequential_2_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_00sequential_2_random_flip_2_map_while_placeholder_sequential_2/random_flip_2/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:��*
element_dtype0�
Dsequential_2/random_flip_2/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Dsequential_2/random_flip_2/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Csequential_2/random_flip_2/map/while/stateful_uniform_full_int/ProdProdMsequential_2/random_flip_2/map/while/stateful_uniform_full_int/shape:output:0Msequential_2/random_flip_2/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: �
Esequential_2/random_flip_2/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
Esequential_2/random_flip_2/map/while/stateful_uniform_full_int/Cast_1CastLsequential_2/random_flip_2/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Msequential_2/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipXsequential_2_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Nsequential_2/random_flip_2/map/while/stateful_uniform_full_int/Cast/x:output:0Isequential_2/random_flip_2/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
Rsequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Tsequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Tsequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Lsequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_sliceStridedSliceUsequential_2/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0[sequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack:output:0]sequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0]sequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
Fsequential_2/random_flip_2/map/while/stateful_uniform_full_int/BitcastBitcastUsequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Tsequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Vsequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Vsequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Nsequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceUsequential_2/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0]sequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0_sequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0_sequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
Hsequential_2/random_flip_2/map/while/stateful_uniform_full_int/Bitcast_1BitcastWsequential_2/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Bsequential_2/random_flip_2/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
>sequential_2/random_flip_2/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2Msequential_2/random_flip_2/map/while/stateful_uniform_full_int/shape:output:0Qsequential_2/random_flip_2/map/while/stateful_uniform_full_int/Bitcast_1:output:0Osequential_2/random_flip_2/map/while/stateful_uniform_full_int/Bitcast:output:0Ksequential_2/random_flip_2/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	y
/sequential_2/random_flip_2/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
*sequential_2/random_flip_2/map/while/stackPackGsequential_2/random_flip_2/map/while/stateful_uniform_full_int:output:08sequential_2/random_flip_2/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:�
8sequential_2/random_flip_2/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
:sequential_2/random_flip_2/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
:sequential_2/random_flip_2/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
2sequential_2/random_flip_2/map/while/strided_sliceStridedSlice3sequential_2/random_flip_2/map/while/stack:output:0Asequential_2/random_flip_2/map/while/strided_slice/stack:output:0Csequential_2/random_flip_2/map/while/strided_slice/stack_1:output:0Csequential_2/random_flip_2/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Xsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/control_dependencyIdentityOsequential_2/random_flip_2/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*[
_classQ
OMloc:@sequential_2/random_flip_2/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:���
dsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
bsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
bsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
{sequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter;sequential_2/random_flip_2/map/while/strided_slice:output:0* 
_output_shapes
::�
{sequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
wsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2msequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0�sequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0�sequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0�sequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
bsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSubksequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0ksequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
bsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMul�sequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0fsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
^sequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2fsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0ksequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Lsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Jsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/LessLessbsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Usequential_2/random_flip_2/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
Esequential_2/random_flip_2/map/while/stateless_random_flip_left_rightStatelessIfNsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/Less:z:0asequential_2/random_flip_2/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *d
else_branchURS
Qsequential_2_random_flip_2_map_while_stateless_random_flip_left_right_false_20674*#
output_shapes
:��*c
then_branchTRR
Psequential_2_random_flip_2_map_while_stateless_random_flip_left_right_true_20673�
Nsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentityNsequential_2/random_flip_2/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:���
Fsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Fsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Esequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/ProdProdOsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/shape:output:0Osequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: �
Gsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
Gsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/Cast_1CastNsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Osequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipXsequential_2_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Psequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/Cast/x:output:0Ksequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/Cast_1:y:0N^sequential_2/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
Tsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Vsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Vsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Nsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceWsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0]sequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0_sequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0_sequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
Hsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/BitcastBitcastWsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Vsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Xsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Xsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Psequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceWsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0_sequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0asequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0asequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
Jsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/Bitcast_1BitcastYsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Dsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
@sequential_2/random_flip_2/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Osequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/shape:output:0Ssequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Qsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/Bitcast:output:0Msequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	{
1sequential_2/random_flip_2/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
,sequential_2/random_flip_2/map/while/stack_1PackIsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1:output:0:sequential_2/random_flip_2/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:�
:sequential_2/random_flip_2/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
<sequential_2/random_flip_2/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
<sequential_2/random_flip_2/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
4sequential_2/random_flip_2/map/while/strided_slice_1StridedSlice5sequential_2/random_flip_2/map/while/stack_1:output:0Csequential_2/random_flip_2/map/while/strided_slice_1/stack:output:0Esequential_2/random_flip_2/map/while/strided_slice_1/stack_1:output:0Esequential_2/random_flip_2/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Usequential_2/random_flip_2/map/while/stateless_random_flip_up_down/control_dependencyIdentityWsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*a
_classW
USloc:@sequential_2/random_flip_2/map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:���
asequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
_sequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
_sequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
xsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter=sequential_2/random_flip_2/map/while/strided_slice_1:output:0* 
_output_shapes
::�
xsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
tsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2jsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0~sequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0�sequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0�sequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
_sequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSubhsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0hsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
_sequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMul}sequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0csequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
[sequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2csequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0hsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Isequential_2/random_flip_2/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Gsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/LessLess_sequential_2/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Rsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
Bsequential_2/random_flip_2/map/while/stateless_random_flip_up_downStatelessIfKsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/Less:z:0^sequential_2/random_flip_2/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *a
else_branchRRP
Nsequential_2_random_flip_2_map_while_stateless_random_flip_up_down_false_20723*#
output_shapes
:��*`
then_branchQRO
Msequential_2_random_flip_2_map_while_stateless_random_flip_up_down_true_20722�
Ksequential_2/random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentityKsequential_2/random_flip_2/map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:���
Isequential_2/random_flip_2/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem2sequential_2_random_flip_2_map_while_placeholder_10sequential_2_random_flip_2_map_while_placeholderTsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���l
*sequential_2/random_flip_2/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
(sequential_2/random_flip_2/map/while/addAddV20sequential_2_random_flip_2_map_while_placeholder3sequential_2/random_flip_2/map/while/add/y:output:0*
T0*
_output_shapes
: n
,sequential_2/random_flip_2/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
*sequential_2/random_flip_2/map/while/add_1AddV2Vsequential_2_random_flip_2_map_while_sequential_2_random_flip_2_map_while_loop_counter5sequential_2/random_flip_2/map/while/add_1/y:output:0*
T0*
_output_shapes
: �
-sequential_2/random_flip_2/map/while/IdentityIdentity.sequential_2/random_flip_2/map/while/add_1:z:0*^sequential_2/random_flip_2/map/while/NoOp*
T0*
_output_shapes
: �
/sequential_2/random_flip_2/map/while/Identity_1IdentityQsequential_2_random_flip_2_map_while_sequential_2_random_flip_2_map_strided_slice*^sequential_2/random_flip_2/map/while/NoOp*
T0*
_output_shapes
: �
/sequential_2/random_flip_2/map/while/Identity_2Identity,sequential_2/random_flip_2/map/while/add:z:0*^sequential_2/random_flip_2/map/while/NoOp*
T0*
_output_shapes
: �
/sequential_2/random_flip_2/map/while/Identity_3IdentityYsequential_2/random_flip_2/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^sequential_2/random_flip_2/map/while/NoOp*
T0*
_output_shapes
: �
)sequential_2/random_flip_2/map/while/NoOpNoOpN^sequential_2/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkipP^sequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "g
-sequential_2_random_flip_2_map_while_identity6sequential_2/random_flip_2/map/while/Identity:output:0"k
/sequential_2_random_flip_2_map_while_identity_18sequential_2/random_flip_2/map/while/Identity_1:output:0"k
/sequential_2_random_flip_2_map_while_identity_28sequential_2/random_flip_2/map/while/Identity_2:output:0"k
/sequential_2_random_flip_2_map_while_identity_38sequential_2/random_flip_2/map/while/Identity_3:output:0"�
Ssequential_2_random_flip_2_map_while_sequential_2_random_flip_2_map_strided_slice_1Usequential_2_random_flip_2_map_while_sequential_2_random_flip_2_map_strided_slice_1_0"�
Vsequential_2_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resourceXsequential_2_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
�sequential_2_random_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_sequential_2_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor�sequential_2_random_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_sequential_2_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2�
Msequential_2/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkipMsequential_2/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip2�
Osequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkipOsequential_2/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
c
G__inference_sequential_2_layer_call_and_return_conditional_losses_20974

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
5map_while_stateless_random_flip_left_right_true_19713v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:��"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
2map_while_stateless_random_flip_up_down_true_21611p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:��"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
`
D__inference_rescaling_layer_call_and_return_conditional_losses_21471

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
I
-__inference_random_flip_2_layer_call_fn_21476

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_19487j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_18_layer_call_and_return_conditional_losses_20002

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
D__inference_conv2d_18_layer_call_and_return_conditional_losses_21386

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
i
E__inference_sequential_layer_call_and_return_conditional_losses_19470
resizing_input
identity�
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_19415�
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_19425t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:a ]
1
_output_shapes
:�����������
(
_user_specified_nameresizing_input
�
D
(__inference_resizing_layer_call_fn_21452

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_19415j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
,__inference_sequential_5_layer_call_fn_20526

inputs
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	�@

unknown_12:@

unknown_13:@

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_20245o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
N
*__inference_sequential_layer_call_fn_19464
resizing_input
identity�
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_19456j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:a ]
1
_output_shapes
:�����������
(
_user_specified_nameresizing_input
�<
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_20052

inputs)
conv2d_14_19931: 
conv2d_14_19933: )
conv2d_15_19949: @
conv2d_15_19951:@)
conv2d_16_19967:@@
conv2d_16_19969:@)
conv2d_17_19985:@@
conv2d_17_19987:@)
conv2d_18_20003:@@
conv2d_18_20005:@ 
dense_4_20029:	�@
dense_4_20031:@
dense_5_20046:@
dense_5_20048:
identity��!conv2d_14/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�!conv2d_18/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_19428�
sequential_2/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_19496�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall%sequential_2/PartitionedCall:output:0conv2d_14_19931conv2d_14_19933*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_19930�
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_19859�
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_15_19949conv2d_15_19951*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_19948�
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_19871�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_16_19967conv2d_16_19969*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_19966�
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_19883�
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_19985conv2d_17_19987*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_19984�
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_19895�
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_20003conv2d_18_20005*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_20002�
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_19907�
flatten_2/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_20015�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_20029dense_4_20031*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_20028�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_20046dense_5_20048*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_20045w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
M
1__inference_random_rotation_1_layer_call_fn_21650

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_19493j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
h
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_19493

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
}
-__inference_random_flip_2_layer_call_fn_21483

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_19796y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
h
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_21661

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
,__inference_sequential_2_layer_call_fn_20970

inputs
unknown:	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_19818y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�c
�
 __inference__wrapped_model_19402
sequential_inputO
5sequential_5_conv2d_14_conv2d_readvariableop_resource: D
6sequential_5_conv2d_14_biasadd_readvariableop_resource: O
5sequential_5_conv2d_15_conv2d_readvariableop_resource: @D
6sequential_5_conv2d_15_biasadd_readvariableop_resource:@O
5sequential_5_conv2d_16_conv2d_readvariableop_resource:@@D
6sequential_5_conv2d_16_biasadd_readvariableop_resource:@O
5sequential_5_conv2d_17_conv2d_readvariableop_resource:@@D
6sequential_5_conv2d_17_biasadd_readvariableop_resource:@O
5sequential_5_conv2d_18_conv2d_readvariableop_resource:@@D
6sequential_5_conv2d_18_biasadd_readvariableop_resource:@F
3sequential_5_dense_4_matmul_readvariableop_resource:	�@B
4sequential_5_dense_4_biasadd_readvariableop_resource:@E
3sequential_5_dense_5_matmul_readvariableop_resource:@B
4sequential_5_dense_5_biasadd_readvariableop_resource:
identity��-sequential_5/conv2d_14/BiasAdd/ReadVariableOp�,sequential_5/conv2d_14/Conv2D/ReadVariableOp�-sequential_5/conv2d_15/BiasAdd/ReadVariableOp�,sequential_5/conv2d_15/Conv2D/ReadVariableOp�-sequential_5/conv2d_16/BiasAdd/ReadVariableOp�,sequential_5/conv2d_16/Conv2D/ReadVariableOp�-sequential_5/conv2d_17/BiasAdd/ReadVariableOp�,sequential_5/conv2d_17/Conv2D/ReadVariableOp�-sequential_5/conv2d_18/BiasAdd/ReadVariableOp�,sequential_5/conv2d_18/Conv2D/ReadVariableOp�+sequential_5/dense_4/BiasAdd/ReadVariableOp�*sequential_5/dense_4/MatMul/ReadVariableOp�+sequential_5/dense_5/BiasAdd/ReadVariableOp�*sequential_5/dense_5/MatMul/ReadVariableOp}
,sequential_5/sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
6sequential_5/sequential/resizing/resize/ResizeBilinearResizeBilinearsequential_input5sequential_5/sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(m
(sequential_5/sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;o
*sequential_5/sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%sequential_5/sequential/rescaling/mulMulGsequential_5/sequential/resizing/resize/ResizeBilinear:resized_images:01sequential_5/sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:������������
%sequential_5/sequential/rescaling/addAddV2)sequential_5/sequential/rescaling/mul:z:03sequential_5/sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
,sequential_5/conv2d_14/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
sequential_5/conv2d_14/Conv2DConv2D)sequential_5/sequential/rescaling/add:z:04sequential_5/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
-sequential_5/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_5/conv2d_14/BiasAddBiasAdd&sequential_5/conv2d_14/Conv2D:output:05sequential_5/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� �
sequential_5/conv2d_14/ReluRelu'sequential_5/conv2d_14/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
%sequential_5/max_pooling2d_14/MaxPoolMaxPool)sequential_5/conv2d_14/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
,sequential_5/conv2d_15/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
sequential_5/conv2d_15/Conv2DConv2D.sequential_5/max_pooling2d_14/MaxPool:output:04sequential_5/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
�
-sequential_5/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_5/conv2d_15/BiasAddBiasAdd&sequential_5/conv2d_15/Conv2D:output:05sequential_5/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@�
sequential_5/conv2d_15/ReluRelu'sequential_5/conv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:���������}}@�
%sequential_5/max_pooling2d_15/MaxPoolMaxPool)sequential_5/conv2d_15/Relu:activations:0*/
_output_shapes
:���������>>@*
ksize
*
paddingVALID*
strides
�
,sequential_5/conv2d_16/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
sequential_5/conv2d_16/Conv2DConv2D.sequential_5/max_pooling2d_15/MaxPool:output:04sequential_5/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@*
paddingVALID*
strides
�
-sequential_5/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_5/conv2d_16/BiasAddBiasAdd&sequential_5/conv2d_16/Conv2D:output:05sequential_5/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@�
sequential_5/conv2d_16/ReluRelu'sequential_5/conv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:���������<<@�
%sequential_5/max_pooling2d_16/MaxPoolMaxPool)sequential_5/conv2d_16/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
,sequential_5/conv2d_17/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
sequential_5/conv2d_17/Conv2DConv2D.sequential_5/max_pooling2d_16/MaxPool:output:04sequential_5/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
-sequential_5/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_5/conv2d_17/BiasAddBiasAdd&sequential_5/conv2d_17/Conv2D:output:05sequential_5/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential_5/conv2d_17/ReluRelu'sequential_5/conv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
%sequential_5/max_pooling2d_17/MaxPoolMaxPool)sequential_5/conv2d_17/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
,sequential_5/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
sequential_5/conv2d_18/Conv2DConv2D.sequential_5/max_pooling2d_17/MaxPool:output:04sequential_5/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
-sequential_5/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_5/conv2d_18/BiasAddBiasAdd&sequential_5/conv2d_18/Conv2D:output:05sequential_5/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential_5/conv2d_18/ReluRelu'sequential_5/conv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
%sequential_5/max_pooling2d_18/MaxPoolMaxPool)sequential_5/conv2d_18/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
m
sequential_5/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 	  �
sequential_5/flatten_2/ReshapeReshape.sequential_5/max_pooling2d_18/MaxPool:output:0%sequential_5/flatten_2/Const:output:0*
T0*(
_output_shapes
:�����������
*sequential_5/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_4_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
sequential_5/dense_4/MatMulMatMul'sequential_5/flatten_2/Reshape:output:02sequential_5/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
+sequential_5/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_5/dense_4/BiasAddBiasAdd%sequential_5/dense_4/MatMul:product:03sequential_5/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@z
sequential_5/dense_4/ReluRelu%sequential_5/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
*sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
sequential_5/dense_5/MatMulMatMul'sequential_5/dense_4/Relu:activations:02sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_5/dense_5/BiasAddBiasAdd%sequential_5/dense_5/MatMul:product:03sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_5/dense_5/SoftmaxSoftmax%sequential_5/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������u
IdentityIdentity&sequential_5/dense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^sequential_5/conv2d_14/BiasAdd/ReadVariableOp-^sequential_5/conv2d_14/Conv2D/ReadVariableOp.^sequential_5/conv2d_15/BiasAdd/ReadVariableOp-^sequential_5/conv2d_15/Conv2D/ReadVariableOp.^sequential_5/conv2d_16/BiasAdd/ReadVariableOp-^sequential_5/conv2d_16/Conv2D/ReadVariableOp.^sequential_5/conv2d_17/BiasAdd/ReadVariableOp-^sequential_5/conv2d_17/Conv2D/ReadVariableOp.^sequential_5/conv2d_18/BiasAdd/ReadVariableOp-^sequential_5/conv2d_18/Conv2D/ReadVariableOp,^sequential_5/dense_4/BiasAdd/ReadVariableOp+^sequential_5/dense_4/MatMul/ReadVariableOp,^sequential_5/dense_5/BiasAdd/ReadVariableOp+^sequential_5/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2^
-sequential_5/conv2d_14/BiasAdd/ReadVariableOp-sequential_5/conv2d_14/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_14/Conv2D/ReadVariableOp,sequential_5/conv2d_14/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_15/BiasAdd/ReadVariableOp-sequential_5/conv2d_15/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_15/Conv2D/ReadVariableOp,sequential_5/conv2d_15/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_16/BiasAdd/ReadVariableOp-sequential_5/conv2d_16/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_16/Conv2D/ReadVariableOp,sequential_5/conv2d_16/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_17/BiasAdd/ReadVariableOp-sequential_5/conv2d_17/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_17/Conv2D/ReadVariableOp,sequential_5/conv2d_17/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_18/BiasAdd/ReadVariableOp-sequential_5/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_18/Conv2D/ReadVariableOp,sequential_5/conv2d_18/Conv2D/ReadVariableOp2Z
+sequential_5/dense_4/BiasAdd/ReadVariableOp+sequential_5/dense_4/BiasAdd/ReadVariableOp2X
*sequential_5/dense_4/MatMul/ReadVariableOp*sequential_5/dense_4/MatMul/ReadVariableOp2Z
+sequential_5/dense_5/BiasAdd/ReadVariableOp+sequential_5/dense_5/BiasAdd/ReadVariableOp2X
*sequential_5/dense_5/MatMul/ReadVariableOp*sequential_5/dense_5/MatMul/ReadVariableOp:c _
1
_output_shapes
:�����������
*
_user_specified_namesequential_input
�
F
*__inference_sequential_layer_call_fn_20931

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_19428j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
G__inference_sequential_2_layer_call_and_return_conditional_losses_19818

inputs!
random_flip_2_19811:	%
random_rotation_1_19814:	
identity��%random_flip_2/StatefulPartitionedCall�)random_rotation_1/StatefulPartitionedCall�
%random_flip_2/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_2_19811*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_19796�
)random_rotation_1/StatefulPartitionedCallStatefulPartitionedCall.random_flip_2/StatefulPartitionedCall:output:0random_rotation_1_19814*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_19625�
IdentityIdentity2random_rotation_1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp&^random_flip_2/StatefulPartitionedCall*^random_rotation_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2N
%random_flip_2/StatefulPartitionedCall%random_flip_2/StatefulPartitionedCall2V
)random_rotation_1/StatefulPartitionedCall)random_rotation_1/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
1__inference_random_rotation_1_layer_call_fn_21657

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_19625y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
_
C__inference_resizing_layer_call_and_return_conditional_losses_21458

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
B__inference_dense_5_layer_call_and_return_conditional_losses_21447

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
i
E__inference_sequential_layer_call_and_return_conditional_losses_19476
resizing_input
identity�
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_19415�
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_19425t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:a ]
1
_output_shapes
:�����������
(
_user_specified_nameresizing_input
�

�
B__inference_dense_4_layer_call_and_return_conditional_losses_20028

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Drandom_flip_2_map_while_stateless_random_flip_left_right_false_21050�
�random_flip_2_map_while_stateless_random_flip_left_right_identity_random_flip_2_map_while_stateless_random_flip_left_right_control_dependencyE
Arandom_flip_2_map_while_stateless_random_flip_left_right_identity�
Arandom_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentity�random_flip_2_map_while_stateless_random_flip_left_right_identity_random_flip_2_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:��"�
Arandom_flip_2_map_while_stateless_random_flip_left_right_identityJrandom_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
'__inference_dense_5_layer_call_fn_21436

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_20045o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
L
0__inference_max_pooling2d_14_layer_call_fn_21271

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
GPU 2J 8� *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_19859�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_15_layer_call_and_return_conditional_losses_21296

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
H__inference_random_flip_2_layer_call_and_return_conditional_losses_21645

inputs
map_while_input_6:	
identity��	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( * 
bodyR
map_while_body_21503* 
condR
map_while_cond_21502*!
output_shapes
: : : : : : : �
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:�����������*
element_dtype0�
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:�����������R
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2
	map/while	map/while:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
6map_while_stateless_random_flip_left_right_false_19714u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:��"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�	
�
@random_flip_2_map_while_stateless_random_flip_up_down_true_21098�
�random_flip_2_map_while_stateless_random_flip_up_down_reversev2_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyB
>random_flip_2_map_while_stateless_random_flip_up_down_identity�
Drandom_flip_2/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
?random_flip_2/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2�random_flip_2_map_while_stateless_random_flip_up_down_reversev2_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyMrandom_flip_2/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
>random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentityHrandom_flip_2/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:��"�
>random_flip_2_map_while_stateless_random_flip_up_down_identityGrandom_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�=
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_20364
sequential_input)
conv2d_14_20322: 
conv2d_14_20324: )
conv2d_15_20328: @
conv2d_15_20330:@)
conv2d_16_20334:@@
conv2d_16_20336:@)
conv2d_17_20340:@@
conv2d_17_20342:@)
conv2d_18_20346:@@
conv2d_18_20348:@ 
dense_4_20353:	�@
dense_4_20355:@
dense_5_20358:@
dense_5_20360:
identity��!conv2d_14/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�!conv2d_18/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_19428�
sequential_2/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_19496�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall%sequential_2/PartitionedCall:output:0conv2d_14_20322conv2d_14_20324*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_19930�
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_19859�
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_15_20328conv2d_15_20330*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_19948�
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_19871�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_16_20334conv2d_16_20336*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_19966�
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_19883�
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_20340conv2d_17_20342*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_19984�
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_19895�
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_20346conv2d_18_20348*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_20002�
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_19907�
flatten_2/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_20015�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_20353dense_4_20355*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_20028�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_20358dense_5_20360*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_20045w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_namesequential_input
��
�
map_while_body_21503$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	��2map/while/stateful_uniform_full_int/RngReadAndSkip�4map/while/stateful_uniform_full_int_1/RngReadAndSkip�
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:��*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:���
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_left_right_false_21563*#
output_shapes
:��*H
then_branch9R7
5map_while_stateless_random_flip_left_right_true_21562�
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:��u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
map/while/stack_1Pack.map/while/stateful_uniform_full_int_1:output:0map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:p
map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:���
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *F
else_branch7R5
3map_while_stateless_random_flip_up_down_false_21612*#
output_shapes
:��*E
then_branch6R4
2map_while_stateless_random_flip_up_down_true_21611�
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:���
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���Q
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: �
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: �
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip2l
4map/while/stateful_uniform_full_int_1/RngReadAndSkip4map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
L
0__inference_max_pooling2d_15_layer_call_fn_21301

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
GPU 2J 8� *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_19871�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_16_layer_call_fn_21315

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_19966w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<<@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>>@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������>>@
 
_user_specified_nameinputs
�
c
G__inference_sequential_2_layer_call_and_return_conditional_losses_19496

inputs
identity�
random_flip_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_19487�
!random_rotation_1/PartitionedCallPartitionedCall&random_flip_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_19493|
IdentityIdentity*random_rotation_1/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
� 
!__inference__traced_restore_22140
file_prefix;
!assignvariableop_conv2d_14_kernel: /
!assignvariableop_1_conv2d_14_bias: =
#assignvariableop_2_conv2d_15_kernel: @/
!assignvariableop_3_conv2d_15_bias:@=
#assignvariableop_4_conv2d_16_kernel:@@/
!assignvariableop_5_conv2d_16_bias:@=
#assignvariableop_6_conv2d_17_kernel:@@/
!assignvariableop_7_conv2d_17_bias:@=
#assignvariableop_8_conv2d_18_kernel:@@/
!assignvariableop_9_conv2d_18_bias:@5
"assignvariableop_10_dense_4_kernel:	�@.
 assignvariableop_11_dense_4_bias:@4
"assignvariableop_12_dense_5_kernel:@.
 assignvariableop_13_dense_5_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: #
assignvariableop_21_total: #
assignvariableop_22_count: ,
assignvariableop_23_statevar_1:	*
assignvariableop_24_statevar:	E
+assignvariableop_25_adam_conv2d_14_kernel_m: 7
)assignvariableop_26_adam_conv2d_14_bias_m: E
+assignvariableop_27_adam_conv2d_15_kernel_m: @7
)assignvariableop_28_adam_conv2d_15_bias_m:@E
+assignvariableop_29_adam_conv2d_16_kernel_m:@@7
)assignvariableop_30_adam_conv2d_16_bias_m:@E
+assignvariableop_31_adam_conv2d_17_kernel_m:@@7
)assignvariableop_32_adam_conv2d_17_bias_m:@E
+assignvariableop_33_adam_conv2d_18_kernel_m:@@7
)assignvariableop_34_adam_conv2d_18_bias_m:@<
)assignvariableop_35_adam_dense_4_kernel_m:	�@5
'assignvariableop_36_adam_dense_4_bias_m:@;
)assignvariableop_37_adam_dense_5_kernel_m:@5
'assignvariableop_38_adam_dense_5_bias_m:E
+assignvariableop_39_adam_conv2d_14_kernel_v: 7
)assignvariableop_40_adam_conv2d_14_bias_v: E
+assignvariableop_41_adam_conv2d_15_kernel_v: @7
)assignvariableop_42_adam_conv2d_15_bias_v:@E
+assignvariableop_43_adam_conv2d_16_kernel_v:@@7
)assignvariableop_44_adam_conv2d_16_bias_v:@E
+assignvariableop_45_adam_conv2d_17_kernel_v:@@7
)assignvariableop_46_adam_conv2d_17_bias_v:@E
+assignvariableop_47_adam_conv2d_18_kernel_v:@@7
)assignvariableop_48_adam_conv2d_18_bias_v:@<
)assignvariableop_49_adam_dense_4_kernel_v:	�@5
'assignvariableop_50_adam_dense_4_bias_v:@;
)assignvariableop_51_adam_dense_5_kernel_v:@5
'assignvariableop_52_adam_dense_5_bias_v:
identity_54��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*�
value�B�6B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*
valuevBt6B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::*D
dtypes:
826			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_14_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_14_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_15_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_15_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_16_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_16_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_17_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_17_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_18_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_18_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_4_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_4_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_5_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_5_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_statevar_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_statevarIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_14_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_14_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_15_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_15_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_16_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_16_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_17_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_17_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_18_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_18_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_4_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_4_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_5_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_5_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_conv2d_14_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_conv2d_14_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_15_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_15_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_16_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_16_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_17_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_17_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_18_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_18_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_4_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_4_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_5_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_dense_5_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �	
Identity_53Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_54IdentityIdentity_53:output:0^NoOp_1*
T0*
_output_shapes
: �	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_54Identity_54:output:0*
_input_shapesn
l: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
_
C__inference_resizing_layer_call_and_return_conditional_losses_19415

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
G__inference_sequential_2_layer_call_and_return_conditional_losses_21246

inputs-
random_flip_2_map_while_input_6:	H
:random_rotation_1_stateful_uniform_rngreadandskip_resource:	
identity��random_flip_2/map/while�1random_rotation_1/stateful_uniform/RngReadAndSkipM
random_flip_2/map/ShapeShapeinputs*
T0*
_output_shapes
:o
%random_flip_2/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_flip_2/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_flip_2/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_flip_2/map/strided_sliceStridedSlice random_flip_2/map/Shape:output:0.random_flip_2/map/strided_slice/stack:output:00random_flip_2/map/strided_slice/stack_1:output:00random_flip_2/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
-random_flip_2/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
random_flip_2/map/TensorArrayV2TensorListReserve6random_flip_2/map/TensorArrayV2/element_shape:output:0(random_flip_2/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Grandom_flip_2/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
9random_flip_2/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsPrandom_flip_2/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���Y
random_flip_2/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : z
/random_flip_2/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
!random_flip_2/map/TensorArrayV2_1TensorListReserve8random_flip_2/map/TensorArrayV2_1/element_shape:output:0(random_flip_2/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���f
$random_flip_2/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
random_flip_2/map/whileWhile-random_flip_2/map/while/loop_counter:output:0(random_flip_2/map/strided_slice:output:0 random_flip_2/map/Const:output:0*random_flip_2/map/TensorArrayV2_1:handle:0(random_flip_2/map/strided_slice:output:0Irandom_flip_2/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0random_flip_2_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *.
body&R$
"random_flip_2_map_while_body_20990*.
cond&R$
"random_flip_2_map_while_cond_20989*!
output_shapes
: : : : : : : �
Brandom_flip_2/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
4random_flip_2/map/TensorArrayV2Stack/TensorListStackTensorListStack random_flip_2/map/while:output:3Krandom_flip_2/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:�����������*
element_dtype0�
random_rotation_1/ShapeShape=random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:o
%random_rotation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_rotation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_rotation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_rotation_1/strided_sliceStridedSlice random_rotation_1/Shape:output:0.random_rotation_1/strided_slice/stack:output:00random_rotation_1/strided_slice/stack_1:output:00random_rotation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
'random_rotation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������|
)random_rotation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������s
)random_rotation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!random_rotation_1/strided_slice_1StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_1/stack:output:02random_rotation_1/strided_slice_1/stack_1:output:02random_rotation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
random_rotation_1/CastCast*random_rotation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: z
'random_rotation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������|
)random_rotation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������s
)random_rotation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!random_rotation_1/strided_slice_2StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_2/stack:output:02random_rotation_1/strided_slice_2/stack_1:output:02random_rotation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
random_rotation_1/Cast_1Cast*random_rotation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: �
(random_rotation_1/stateful_uniform/shapePack(random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:k
&random_rotation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�k
&random_rotation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?r
(random_rotation_1/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
'random_rotation_1/stateful_uniform/ProdProd1random_rotation_1/stateful_uniform/shape:output:01random_rotation_1/stateful_uniform/Const:output:0*
T0*
_output_shapes
: k
)random_rotation_1/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
)random_rotation_1/stateful_uniform/Cast_1Cast0random_rotation_1/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
1random_rotation_1/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_1_stateful_uniform_rngreadandskip_resource2random_rotation_1/stateful_uniform/Cast/x:output:0-random_rotation_1/stateful_uniform/Cast_1:y:0*
_output_shapes
:�
6random_rotation_1/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8random_rotation_1/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8random_rotation_1/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0random_rotation_1/stateful_uniform/strided_sliceStridedSlice9random_rotation_1/stateful_uniform/RngReadAndSkip:value:0?random_rotation_1/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_1/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_1/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
*random_rotation_1/stateful_uniform/BitcastBitcast9random_rotation_1/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
8random_rotation_1/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
:random_rotation_1/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
:random_rotation_1/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
2random_rotation_1/stateful_uniform/strided_slice_1StridedSlice9random_rotation_1/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_1/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_1/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_1/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
,random_rotation_1/stateful_uniform/Bitcast_1Bitcast;random_rotation_1/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
?random_rotation_1/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
;random_rotation_1/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_1/stateful_uniform/shape:output:05random_rotation_1/stateful_uniform/Bitcast_1:output:03random_rotation_1/stateful_uniform/Bitcast:output:0Hrandom_rotation_1/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
&random_rotation_1/stateful_uniform/subSub/random_rotation_1/stateful_uniform/max:output:0/random_rotation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
&random_rotation_1/stateful_uniform/mulMulDrandom_rotation_1/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_1/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
"random_rotation_1/stateful_uniformAddV2*random_rotation_1/stateful_uniform/mul:z:0/random_rotation_1/stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������l
'random_rotation_1/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation_1/rotation_matrix/subSubrandom_rotation_1/Cast_1:y:00random_rotation_1/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: �
%random_rotation_1/rotation_matrix/CosCos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:���������n
)random_rotation_1/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'random_rotation_1/rotation_matrix/sub_1Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: �
%random_rotation_1/rotation_matrix/mulMul)random_rotation_1/rotation_matrix/Cos:y:0+random_rotation_1/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:����������
%random_rotation_1/rotation_matrix/SinSin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:���������n
)random_rotation_1/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'random_rotation_1/rotation_matrix/sub_2Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: �
'random_rotation_1/rotation_matrix/mul_1Mul)random_rotation_1/rotation_matrix/Sin:y:0+random_rotation_1/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:����������
'random_rotation_1/rotation_matrix/sub_3Sub)random_rotation_1/rotation_matrix/mul:z:0+random_rotation_1/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:����������
'random_rotation_1/rotation_matrix/sub_4Sub)random_rotation_1/rotation_matrix/sub:z:0+random_rotation_1/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������p
+random_rotation_1/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
)random_rotation_1/rotation_matrix/truedivRealDiv+random_rotation_1/rotation_matrix/sub_4:z:04random_rotation_1/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������n
)random_rotation_1/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'random_rotation_1/rotation_matrix/sub_5Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: �
'random_rotation_1/rotation_matrix/Sin_1Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:���������n
)random_rotation_1/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'random_rotation_1/rotation_matrix/sub_6Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
'random_rotation_1/rotation_matrix/mul_2Mul+random_rotation_1/rotation_matrix/Sin_1:y:0+random_rotation_1/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:����������
'random_rotation_1/rotation_matrix/Cos_1Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:���������n
)random_rotation_1/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'random_rotation_1/rotation_matrix/sub_7Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
'random_rotation_1/rotation_matrix/mul_3Mul+random_rotation_1/rotation_matrix/Cos_1:y:0+random_rotation_1/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
%random_rotation_1/rotation_matrix/addAddV2+random_rotation_1/rotation_matrix/mul_2:z:0+random_rotation_1/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:����������
'random_rotation_1/rotation_matrix/sub_8Sub+random_rotation_1/rotation_matrix/sub_5:z:0)random_rotation_1/rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������r
-random_rotation_1/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
+random_rotation_1/rotation_matrix/truediv_1RealDiv+random_rotation_1/rotation_matrix/sub_8:z:06random_rotation_1/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������}
'random_rotation_1/rotation_matrix/ShapeShape&random_rotation_1/stateful_uniform:z:0*
T0*
_output_shapes
:
5random_rotation_1/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7random_rotation_1/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7random_rotation_1/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/random_rotation_1/rotation_matrix/strided_sliceStridedSlice0random_rotation_1/rotation_matrix/Shape:output:0>random_rotation_1/rotation_matrix/strided_slice/stack:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
'random_rotation_1/rotation_matrix/Cos_2Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
7random_rotation_1/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_1/rotation_matrix/strided_slice_1StridedSlice+random_rotation_1/rotation_matrix/Cos_2:y:0@random_rotation_1/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
'random_rotation_1/rotation_matrix/Sin_2Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
7random_rotation_1/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_1/rotation_matrix/strided_slice_2StridedSlice+random_rotation_1/rotation_matrix/Sin_2:y:0@random_rotation_1/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
%random_rotation_1/rotation_matrix/NegNeg:random_rotation_1/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
7random_rotation_1/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_1/rotation_matrix/strided_slice_3StridedSlice-random_rotation_1/rotation_matrix/truediv:z:0@random_rotation_1/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
'random_rotation_1/rotation_matrix/Sin_3Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
7random_rotation_1/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_1/rotation_matrix/strided_slice_4StridedSlice+random_rotation_1/rotation_matrix/Sin_3:y:0@random_rotation_1/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
'random_rotation_1/rotation_matrix/Cos_3Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
7random_rotation_1/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_1/rotation_matrix/strided_slice_5StridedSlice+random_rotation_1/rotation_matrix/Cos_3:y:0@random_rotation_1/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
7random_rotation_1/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_1/rotation_matrix/strided_slice_6StridedSlice/random_rotation_1/rotation_matrix/truediv_1:z:0@random_rotation_1/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskr
0random_rotation_1/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
.random_rotation_1/rotation_matrix/zeros/packedPack8random_rotation_1/rotation_matrix/strided_slice:output:09random_rotation_1/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:r
-random_rotation_1/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'random_rotation_1/rotation_matrix/zerosFill7random_rotation_1/rotation_matrix/zeros/packed:output:06random_rotation_1/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������o
-random_rotation_1/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
(random_rotation_1/rotation_matrix/concatConcatV2:random_rotation_1/rotation_matrix/strided_slice_1:output:0)random_rotation_1/rotation_matrix/Neg:y:0:random_rotation_1/rotation_matrix/strided_slice_3:output:0:random_rotation_1/rotation_matrix/strided_slice_4:output:0:random_rotation_1/rotation_matrix/strided_slice_5:output:0:random_rotation_1/rotation_matrix/strided_slice_6:output:00random_rotation_1/rotation_matrix/zeros:output:06random_rotation_1/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
!random_rotation_1/transform/ShapeShape=random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:y
/random_rotation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)random_rotation_1/transform/strided_sliceStridedSlice*random_rotation_1/transform/Shape:output:08random_rotation_1/transform/strided_slice/stack:output:0:random_rotation_1/transform/strided_slice/stack_1:output:0:random_rotation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:k
&random_rotation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
6random_rotation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3=random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:01random_rotation_1/rotation_matrix/concat:output:02random_rotation_1/transform/strided_slice:output:0/random_rotation_1/transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentityKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^random_flip_2/map/while2^random_rotation_1/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
random_flip_2/map/whilerandom_flip_2/map/while2f
1random_rotation_1/stateful_uniform/RngReadAndSkip1random_rotation_1/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
N
*__inference_sequential_layer_call_fn_19431
resizing_input
identity�
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_19428j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:a ]
1
_output_shapes
:�����������
(
_user_specified_nameresizing_input
�
E
)__inference_rescaling_layer_call_fn_21463

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_19425j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�j
�
__inference__traced_save_21971
file_prefix/
+savev2_conv2d_14_kernel_read_readvariableop-
)savev2_conv2d_14_bias_read_readvariableop/
+savev2_conv2d_15_kernel_read_readvariableop-
)savev2_conv2d_15_bias_read_readvariableop/
+savev2_conv2d_16_kernel_read_readvariableop-
)savev2_conv2d_16_bias_read_readvariableop/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop)
%savev2_statevar_1_read_readvariableop	'
#savev2_statevar_read_readvariableop	6
2savev2_adam_conv2d_14_kernel_m_read_readvariableop4
0savev2_adam_conv2d_14_bias_m_read_readvariableop6
2savev2_adam_conv2d_15_kernel_m_read_readvariableop4
0savev2_adam_conv2d_15_bias_m_read_readvariableop6
2savev2_adam_conv2d_16_kernel_m_read_readvariableop4
0savev2_adam_conv2d_16_bias_m_read_readvariableop6
2savev2_adam_conv2d_17_kernel_m_read_readvariableop4
0savev2_adam_conv2d_17_bias_m_read_readvariableop6
2savev2_adam_conv2d_18_kernel_m_read_readvariableop4
0savev2_adam_conv2d_18_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop6
2savev2_adam_conv2d_14_kernel_v_read_readvariableop4
0savev2_adam_conv2d_14_bias_v_read_readvariableop6
2savev2_adam_conv2d_15_kernel_v_read_readvariableop4
0savev2_adam_conv2d_15_bias_v_read_readvariableop6
2savev2_adam_conv2d_16_kernel_v_read_readvariableop4
0savev2_adam_conv2d_16_bias_v_read_readvariableop6
2savev2_adam_conv2d_17_kernel_v_read_readvariableop4
0savev2_adam_conv2d_17_bias_v_read_readvariableop6
2savev2_adam_conv2d_18_kernel_v_read_readvariableop4
0savev2_adam_conv2d_18_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*�
value�B�6B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*
valuevBt6B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_14_kernel_read_readvariableop)savev2_conv2d_14_bias_read_readvariableop+savev2_conv2d_15_kernel_read_readvariableop)savev2_conv2d_15_bias_read_readvariableop+savev2_conv2d_16_kernel_read_readvariableop)savev2_conv2d_16_bias_read_readvariableop+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop%savev2_statevar_1_read_readvariableop#savev2_statevar_read_readvariableop2savev2_adam_conv2d_14_kernel_m_read_readvariableop0savev2_adam_conv2d_14_bias_m_read_readvariableop2savev2_adam_conv2d_15_kernel_m_read_readvariableop0savev2_adam_conv2d_15_bias_m_read_readvariableop2savev2_adam_conv2d_16_kernel_m_read_readvariableop0savev2_adam_conv2d_16_bias_m_read_readvariableop2savev2_adam_conv2d_17_kernel_m_read_readvariableop0savev2_adam_conv2d_17_bias_m_read_readvariableop2savev2_adam_conv2d_18_kernel_m_read_readvariableop0savev2_adam_conv2d_18_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop2savev2_adam_conv2d_14_kernel_v_read_readvariableop0savev2_adam_conv2d_14_bias_v_read_readvariableop2savev2_adam_conv2d_15_kernel_v_read_readvariableop0savev2_adam_conv2d_15_bias_v_read_readvariableop2savev2_adam_conv2d_16_kernel_v_read_readvariableop0savev2_adam_conv2d_16_bias_v_read_readvariableop2savev2_adam_conv2d_17_kernel_v_read_readvariableop0savev2_adam_conv2d_17_bias_v_read_readvariableop2savev2_adam_conv2d_18_kernel_v_read_readvariableop0savev2_adam_conv2d_18_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *D
dtypes:
826			�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: : : : @:@:@@:@:@@:@:@@:@:	�@:@:@:: : : : : : : : : ::: : : @:@:@@:@:@@:@:@@:@:	�@:@:@:: : : @:@:@@:@:@@:@:@@:@:	�@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:%!

_output_shapes
:	�@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:, (
&
_output_shapes
:@@: !

_output_shapes
:@:,"(
&
_output_shapes
:@@: #

_output_shapes
:@:%$!

_output_shapes
:	�@: %

_output_shapes
:@:$& 

_output_shapes

:@: '

_output_shapes
::,((
&
_output_shapes
: : )

_output_shapes
: :,*(
&
_output_shapes
: @: +

_output_shapes
:@:,,(
&
_output_shapes
:@@: -

_output_shapes
:@:,.(
&
_output_shapes
:@@: /

_output_shapes
:@:,0(
&
_output_shapes
:@@: 1

_output_shapes
:@:%2!

_output_shapes
:	�@: 3

_output_shapes
:@:$4 

_output_shapes

:@: 5

_output_shapes
::6

_output_shapes
: 
ީ
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_20926

inputs:
,sequential_2_random_flip_2_map_while_input_6:	U
Gsequential_2_random_rotation_1_stateful_uniform_rngreadandskip_resource:	B
(conv2d_14_conv2d_readvariableop_resource: 7
)conv2d_14_biasadd_readvariableop_resource: B
(conv2d_15_conv2d_readvariableop_resource: @7
)conv2d_15_biasadd_readvariableop_resource:@B
(conv2d_16_conv2d_readvariableop_resource:@@7
)conv2d_16_biasadd_readvariableop_resource:@B
(conv2d_17_conv2d_readvariableop_resource:@@7
)conv2d_17_biasadd_readvariableop_resource:@B
(conv2d_18_conv2d_readvariableop_resource:@@7
)conv2d_18_biasadd_readvariableop_resource:@9
&dense_4_matmul_readvariableop_resource:	�@5
'dense_4_biasadd_readvariableop_resource:@8
&dense_5_matmul_readvariableop_resource:@5
'dense_5_biasadd_readvariableop_resource:
identity�� conv2d_14/BiasAdd/ReadVariableOp�conv2d_14/Conv2D/ReadVariableOp� conv2d_15/BiasAdd/ReadVariableOp�conv2d_15/Conv2D/ReadVariableOp� conv2d_16/BiasAdd/ReadVariableOp�conv2d_16/Conv2D/ReadVariableOp� conv2d_17/BiasAdd/ReadVariableOp�conv2d_17/Conv2D/ReadVariableOp� conv2d_18/BiasAdd/ReadVariableOp�conv2d_18/Conv2D/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�$sequential_2/random_flip_2/map/while�>sequential_2/random_rotation_1/stateful_uniform/RngReadAndSkipp
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:������������
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:�����������p
$sequential_2/random_flip_2/map/ShapeShapesequential/rescaling/add:z:0*
T0*
_output_shapes
:|
2sequential_2/random_flip_2/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_2/random_flip_2/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_2/random_flip_2/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,sequential_2/random_flip_2/map/strided_sliceStridedSlice-sequential_2/random_flip_2/map/Shape:output:0;sequential_2/random_flip_2/map/strided_slice/stack:output:0=sequential_2/random_flip_2/map/strided_slice/stack_1:output:0=sequential_2/random_flip_2/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
:sequential_2/random_flip_2/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
,sequential_2/random_flip_2/map/TensorArrayV2TensorListReserveCsequential_2/random_flip_2/map/TensorArrayV2/element_shape:output:05sequential_2/random_flip_2/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Tsequential_2/random_flip_2/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
Fsequential_2/random_flip_2/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/rescaling/add:z:0]sequential_2/random_flip_2/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���f
$sequential_2/random_flip_2/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
<sequential_2/random_flip_2/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
.sequential_2/random_flip_2/map/TensorArrayV2_1TensorListReserveEsequential_2/random_flip_2/map/TensorArrayV2_1/element_shape:output:05sequential_2/random_flip_2/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���s
1sequential_2/random_flip_2/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
$sequential_2/random_flip_2/map/whileWhile:sequential_2/random_flip_2/map/while/loop_counter:output:05sequential_2/random_flip_2/map/strided_slice:output:0-sequential_2/random_flip_2/map/Const:output:07sequential_2/random_flip_2/map/TensorArrayV2_1:handle:05sequential_2/random_flip_2/map/strided_slice:output:0Vsequential_2/random_flip_2/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0,sequential_2_random_flip_2_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *;
body3R1
/sequential_2_random_flip_2_map_while_body_20614*;
cond3R1
/sequential_2_random_flip_2_map_while_cond_20613*!
output_shapes
: : : : : : : �
Osequential_2/random_flip_2/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
Asequential_2/random_flip_2/map/TensorArrayV2Stack/TensorListStackTensorListStack-sequential_2/random_flip_2/map/while:output:3Xsequential_2/random_flip_2/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:�����������*
element_dtype0�
$sequential_2/random_rotation_1/ShapeShapeJsequential_2/random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:|
2sequential_2/random_rotation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_2/random_rotation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_2/random_rotation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,sequential_2/random_rotation_1/strided_sliceStridedSlice-sequential_2/random_rotation_1/Shape:output:0;sequential_2/random_rotation_1/strided_slice/stack:output:0=sequential_2/random_rotation_1/strided_slice/stack_1:output:0=sequential_2/random_rotation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
4sequential_2/random_rotation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
6sequential_2/random_rotation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
6sequential_2/random_rotation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.sequential_2/random_rotation_1/strided_slice_1StridedSlice-sequential_2/random_rotation_1/Shape:output:0=sequential_2/random_rotation_1/strided_slice_1/stack:output:0?sequential_2/random_rotation_1/strided_slice_1/stack_1:output:0?sequential_2/random_rotation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
#sequential_2/random_rotation_1/CastCast7sequential_2/random_rotation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
4sequential_2/random_rotation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
6sequential_2/random_rotation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
6sequential_2/random_rotation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.sequential_2/random_rotation_1/strided_slice_2StridedSlice-sequential_2/random_rotation_1/Shape:output:0=sequential_2/random_rotation_1/strided_slice_2/stack:output:0?sequential_2/random_rotation_1/strided_slice_2/stack_1:output:0?sequential_2/random_rotation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
%sequential_2/random_rotation_1/Cast_1Cast7sequential_2/random_rotation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: �
5sequential_2/random_rotation_1/stateful_uniform/shapePack5sequential_2/random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:x
3sequential_2/random_rotation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�x
3sequential_2/random_rotation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?
5sequential_2/random_rotation_1/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
4sequential_2/random_rotation_1/stateful_uniform/ProdProd>sequential_2/random_rotation_1/stateful_uniform/shape:output:0>sequential_2/random_rotation_1/stateful_uniform/Const:output:0*
T0*
_output_shapes
: x
6sequential_2/random_rotation_1/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
6sequential_2/random_rotation_1/stateful_uniform/Cast_1Cast=sequential_2/random_rotation_1/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
>sequential_2/random_rotation_1/stateful_uniform/RngReadAndSkipRngReadAndSkipGsequential_2_random_rotation_1_stateful_uniform_rngreadandskip_resource?sequential_2/random_rotation_1/stateful_uniform/Cast/x:output:0:sequential_2/random_rotation_1/stateful_uniform/Cast_1:y:0*
_output_shapes
:�
Csequential_2/random_rotation_1/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Esequential_2/random_rotation_1/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Esequential_2/random_rotation_1/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=sequential_2/random_rotation_1/stateful_uniform/strided_sliceStridedSliceFsequential_2/random_rotation_1/stateful_uniform/RngReadAndSkip:value:0Lsequential_2/random_rotation_1/stateful_uniform/strided_slice/stack:output:0Nsequential_2/random_rotation_1/stateful_uniform/strided_slice/stack_1:output:0Nsequential_2/random_rotation_1/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
7sequential_2/random_rotation_1/stateful_uniform/BitcastBitcastFsequential_2/random_rotation_1/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Esequential_2/random_rotation_1/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Gsequential_2/random_rotation_1/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Gsequential_2/random_rotation_1/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?sequential_2/random_rotation_1/stateful_uniform/strided_slice_1StridedSliceFsequential_2/random_rotation_1/stateful_uniform/RngReadAndSkip:value:0Nsequential_2/random_rotation_1/stateful_uniform/strided_slice_1/stack:output:0Psequential_2/random_rotation_1/stateful_uniform/strided_slice_1/stack_1:output:0Psequential_2/random_rotation_1/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
9sequential_2/random_rotation_1/stateful_uniform/Bitcast_1BitcastHsequential_2/random_rotation_1/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Lsequential_2/random_rotation_1/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Hsequential_2/random_rotation_1/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2>sequential_2/random_rotation_1/stateful_uniform/shape:output:0Bsequential_2/random_rotation_1/stateful_uniform/Bitcast_1:output:0@sequential_2/random_rotation_1/stateful_uniform/Bitcast:output:0Usequential_2/random_rotation_1/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
3sequential_2/random_rotation_1/stateful_uniform/subSub<sequential_2/random_rotation_1/stateful_uniform/max:output:0<sequential_2/random_rotation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
3sequential_2/random_rotation_1/stateful_uniform/mulMulQsequential_2/random_rotation_1/stateful_uniform/StatelessRandomUniformV2:output:07sequential_2/random_rotation_1/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
/sequential_2/random_rotation_1/stateful_uniformAddV27sequential_2/random_rotation_1/stateful_uniform/mul:z:0<sequential_2/random_rotation_1/stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������y
4sequential_2/random_rotation_1/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2sequential_2/random_rotation_1/rotation_matrix/subSub)sequential_2/random_rotation_1/Cast_1:y:0=sequential_2/random_rotation_1/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: �
2sequential_2/random_rotation_1/rotation_matrix/CosCos3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:���������{
6sequential_2/random_rotation_1/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
4sequential_2/random_rotation_1/rotation_matrix/sub_1Sub)sequential_2/random_rotation_1/Cast_1:y:0?sequential_2/random_rotation_1/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: �
2sequential_2/random_rotation_1/rotation_matrix/mulMul6sequential_2/random_rotation_1/rotation_matrix/Cos:y:08sequential_2/random_rotation_1/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:����������
2sequential_2/random_rotation_1/rotation_matrix/SinSin3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:���������{
6sequential_2/random_rotation_1/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
4sequential_2/random_rotation_1/rotation_matrix/sub_2Sub'sequential_2/random_rotation_1/Cast:y:0?sequential_2/random_rotation_1/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: �
4sequential_2/random_rotation_1/rotation_matrix/mul_1Mul6sequential_2/random_rotation_1/rotation_matrix/Sin:y:08sequential_2/random_rotation_1/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:����������
4sequential_2/random_rotation_1/rotation_matrix/sub_3Sub6sequential_2/random_rotation_1/rotation_matrix/mul:z:08sequential_2/random_rotation_1/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:����������
4sequential_2/random_rotation_1/rotation_matrix/sub_4Sub6sequential_2/random_rotation_1/rotation_matrix/sub:z:08sequential_2/random_rotation_1/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������}
8sequential_2/random_rotation_1/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
6sequential_2/random_rotation_1/rotation_matrix/truedivRealDiv8sequential_2/random_rotation_1/rotation_matrix/sub_4:z:0Asequential_2/random_rotation_1/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������{
6sequential_2/random_rotation_1/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
4sequential_2/random_rotation_1/rotation_matrix/sub_5Sub'sequential_2/random_rotation_1/Cast:y:0?sequential_2/random_rotation_1/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: �
4sequential_2/random_rotation_1/rotation_matrix/Sin_1Sin3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:���������{
6sequential_2/random_rotation_1/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
4sequential_2/random_rotation_1/rotation_matrix/sub_6Sub)sequential_2/random_rotation_1/Cast_1:y:0?sequential_2/random_rotation_1/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
4sequential_2/random_rotation_1/rotation_matrix/mul_2Mul8sequential_2/random_rotation_1/rotation_matrix/Sin_1:y:08sequential_2/random_rotation_1/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:����������
4sequential_2/random_rotation_1/rotation_matrix/Cos_1Cos3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:���������{
6sequential_2/random_rotation_1/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
4sequential_2/random_rotation_1/rotation_matrix/sub_7Sub'sequential_2/random_rotation_1/Cast:y:0?sequential_2/random_rotation_1/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
4sequential_2/random_rotation_1/rotation_matrix/mul_3Mul8sequential_2/random_rotation_1/rotation_matrix/Cos_1:y:08sequential_2/random_rotation_1/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
2sequential_2/random_rotation_1/rotation_matrix/addAddV28sequential_2/random_rotation_1/rotation_matrix/mul_2:z:08sequential_2/random_rotation_1/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:����������
4sequential_2/random_rotation_1/rotation_matrix/sub_8Sub8sequential_2/random_rotation_1/rotation_matrix/sub_5:z:06sequential_2/random_rotation_1/rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������
:sequential_2/random_rotation_1/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
8sequential_2/random_rotation_1/rotation_matrix/truediv_1RealDiv8sequential_2/random_rotation_1/rotation_matrix/sub_8:z:0Csequential_2/random_rotation_1/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:����������
4sequential_2/random_rotation_1/rotation_matrix/ShapeShape3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*
_output_shapes
:�
Bsequential_2/random_rotation_1/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
<sequential_2/random_rotation_1/rotation_matrix/strided_sliceStridedSlice=sequential_2/random_rotation_1/rotation_matrix/Shape:output:0Ksequential_2/random_rotation_1/rotation_matrix/strided_slice/stack:output:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_1:output:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
4sequential_2/random_rotation_1/rotation_matrix/Cos_2Cos3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_1StridedSlice8sequential_2/random_rotation_1/rotation_matrix/Cos_2:y:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
4sequential_2/random_rotation_1/rotation_matrix/Sin_2Sin3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_2StridedSlice8sequential_2/random_rotation_1/rotation_matrix/Sin_2:y:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
2sequential_2/random_rotation_1/rotation_matrix/NegNegGsequential_2/random_rotation_1/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_3StridedSlice:sequential_2/random_rotation_1/rotation_matrix/truediv:z:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
4sequential_2/random_rotation_1/rotation_matrix/Sin_3Sin3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_4StridedSlice8sequential_2/random_rotation_1/rotation_matrix/Sin_3:y:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
4sequential_2/random_rotation_1/rotation_matrix/Cos_3Cos3sequential_2/random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_5StridedSlice8sequential_2/random_rotation_1/rotation_matrix/Cos_3:y:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
Dsequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
>sequential_2/random_rotation_1/rotation_matrix/strided_slice_6StridedSlice<sequential_2/random_rotation_1/rotation_matrix/truediv_1:z:0Msequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_1:output:0Osequential_2/random_rotation_1/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask
=sequential_2/random_rotation_1/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
;sequential_2/random_rotation_1/rotation_matrix/zeros/packedPackEsequential_2/random_rotation_1/rotation_matrix/strided_slice:output:0Fsequential_2/random_rotation_1/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
:sequential_2/random_rotation_1/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
4sequential_2/random_rotation_1/rotation_matrix/zerosFillDsequential_2/random_rotation_1/rotation_matrix/zeros/packed:output:0Csequential_2/random_rotation_1/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������|
:sequential_2/random_rotation_1/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
5sequential_2/random_rotation_1/rotation_matrix/concatConcatV2Gsequential_2/random_rotation_1/rotation_matrix/strided_slice_1:output:06sequential_2/random_rotation_1/rotation_matrix/Neg:y:0Gsequential_2/random_rotation_1/rotation_matrix/strided_slice_3:output:0Gsequential_2/random_rotation_1/rotation_matrix/strided_slice_4:output:0Gsequential_2/random_rotation_1/rotation_matrix/strided_slice_5:output:0Gsequential_2/random_rotation_1/rotation_matrix/strided_slice_6:output:0=sequential_2/random_rotation_1/rotation_matrix/zeros:output:0Csequential_2/random_rotation_1/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
.sequential_2/random_rotation_1/transform/ShapeShapeJsequential_2/random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:�
<sequential_2/random_rotation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
>sequential_2/random_rotation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
>sequential_2/random_rotation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential_2/random_rotation_1/transform/strided_sliceStridedSlice7sequential_2/random_rotation_1/transform/Shape:output:0Esequential_2/random_rotation_1/transform/strided_slice/stack:output:0Gsequential_2/random_rotation_1/transform/strided_slice/stack_1:output:0Gsequential_2/random_rotation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:x
3sequential_2/random_rotation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Csequential_2/random_rotation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Jsequential_2/random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:0>sequential_2/random_rotation_1/rotation_matrix/concat:output:0?sequential_2/random_rotation_1/transform/strided_slice:output:0<sequential_2/random_rotation_1/transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_14/Conv2DConv2DXsequential_2/random_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� n
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
max_pooling2d_14/MaxPoolMaxPoolconv2d_14/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_15/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
�
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@l
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:���������}}@�
max_pooling2d_15/MaxPoolMaxPoolconv2d_15/Relu:activations:0*/
_output_shapes
:���������>>@*
ksize
*
paddingVALID*
strides
�
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_16/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@*
paddingVALID*
strides
�
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@l
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:���������<<@�
max_pooling2d_16/MaxPoolMaxPoolconv2d_16/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_17/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_17/MaxPoolMaxPoolconv2d_17/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_18/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_18/MaxPoolMaxPoolconv2d_18/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 	  �
flatten_2/ReshapeReshape!max_pooling2d_18/MaxPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:�����������
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@`
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp%^sequential_2/random_flip_2/map/while?^sequential_2/random_rotation_1/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2L
$sequential_2/random_flip_2/map/while$sequential_2/random_flip_2/map/while2�
>sequential_2/random_rotation_1/stateful_uniform/RngReadAndSkip>sequential_2/random_rotation_1/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_20015

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
map_while_cond_19653$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice;
7map_while_map_while_cond_19653___redundant_placeholder0;
7map_while_map_while_cond_19653___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
�
�
Qsequential_2_random_flip_2_map_while_stateless_random_flip_left_right_false_20674�
�sequential_2_random_flip_2_map_while_stateless_random_flip_left_right_identity_sequential_2_random_flip_2_map_while_stateless_random_flip_left_right_control_dependencyR
Nsequential_2_random_flip_2_map_while_stateless_random_flip_left_right_identity�
Nsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentity�sequential_2_random_flip_2_map_while_stateless_random_flip_left_right_identity_sequential_2_random_flip_2_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:��"�
Nsequential_2_random_flip_2_map_while_stateless_random_flip_left_right_identityWsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
G__inference_sequential_2_layer_call_and_return_conditional_losses_19850
random_flip_2_input!
random_flip_2_19843:	%
random_rotation_1_19846:	
identity��%random_flip_2/StatefulPartitionedCall�)random_rotation_1/StatefulPartitionedCall�
%random_flip_2/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_2_inputrandom_flip_2_19843*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_19796�
)random_rotation_1/StatefulPartitionedCallStatefulPartitionedCall.random_flip_2/StatefulPartitionedCall:output:0random_rotation_1_19846*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_19625�
IdentityIdentity2random_rotation_1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp&^random_flip_2/StatefulPartitionedCall*^random_rotation_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2N
%random_flip_2/StatefulPartitionedCall%random_flip_2/StatefulPartitionedCall2V
)random_rotation_1/StatefulPartitionedCall)random_rotation_1/StatefulPartitionedCall:f b
1
_output_shapes
:�����������
-
_user_specified_namerandom_flip_2_input
�
g
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_19883

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
U
,__inference_sequential_2_layer_call_fn_19499
random_flip_2_input
identity�
PartitionedCallPartitionedCallrandom_flip_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_19496j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:f b
1
_output_shapes
:�����������
-
_user_specified_namerandom_flip_2_input
�
�
Nsequential_2_random_flip_2_map_while_stateless_random_flip_up_down_false_20723�
�sequential_2_random_flip_2_map_while_stateless_random_flip_up_down_identity_sequential_2_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyO
Ksequential_2_random_flip_2_map_while_stateless_random_flip_up_down_identity�
Ksequential_2/random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentity�sequential_2_random_flip_2_map_while_stateless_random_flip_up_down_identity_sequential_2_random_flip_2_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:��"�
Ksequential_2_random_flip_2_map_while_stateless_random_flip_up_down_identityTsequential_2/random_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
g
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_19859

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_19625

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
"random_flip_2_map_while_cond_20989@
<random_flip_2_map_while_random_flip_2_map_while_loop_counter;
7random_flip_2_map_while_random_flip_2_map_strided_slice'
#random_flip_2_map_while_placeholder)
%random_flip_2_map_while_placeholder_1@
<random_flip_2_map_while_less_random_flip_2_map_strided_sliceW
Srandom_flip_2_map_while_random_flip_2_map_while_cond_20989___redundant_placeholder0W
Srandom_flip_2_map_while_random_flip_2_map_while_cond_20989___redundant_placeholder1$
 random_flip_2_map_while_identity
�
random_flip_2/map/while/LessLess#random_flip_2_map_while_placeholder<random_flip_2_map_while_less_random_flip_2_map_strided_slice*
T0*
_output_shapes
: �
random_flip_2/map/while/Less_1Less<random_flip_2_map_while_random_flip_2_map_while_loop_counter7random_flip_2_map_while_random_flip_2_map_strided_slice*
T0*
_output_shapes
: �
"random_flip_2/map/while/LogicalAnd
LogicalAnd"random_flip_2/map/while/Less_1:z:0 random_flip_2/map/while/Less:z:0*
_output_shapes
: u
 random_flip_2/map/while/IdentityIdentity&random_flip_2/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "M
 random_flip_2_map_while_identity)random_flip_2/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
�
g
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_21306

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
L
0__inference_max_pooling2d_16_layer_call_fn_21331

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
GPU 2J 8� *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_19883�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
B__inference_dense_5_layer_call_and_return_conditional_losses_20045

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_21396

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
E
)__inference_flatten_2_layer_call_fn_21401

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
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_20015a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
g
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_19871

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
Crandom_flip_2_map_while_stateless_random_flip_left_right_true_21049�
�random_flip_2_map_while_stateless_random_flip_left_right_reversev2_random_flip_2_map_while_stateless_random_flip_left_right_control_dependencyE
Arandom_flip_2_map_while_stateless_random_flip_left_right_identity�
Grandom_flip_2/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
Brandom_flip_2/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2�random_flip_2_map_while_stateless_random_flip_left_right_reversev2_random_flip_2_map_while_stateless_random_flip_left_right_control_dependencyPrandom_flip_2/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
Arandom_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentityKrandom_flip_2/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:��"�
Arandom_flip_2_map_while_stateless_random_flip_left_right_identityJrandom_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
Arandom_flip_2_map_while_stateless_random_flip_up_down_false_21099�
�random_flip_2_map_while_stateless_random_flip_up_down_identity_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyB
>random_flip_2_map_while_stateless_random_flip_up_down_identity�
>random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentity�random_flip_2_map_while_stateless_random_flip_up_down_identity_random_flip_2_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:��"�
>random_flip_2_map_while_stateless_random_flip_up_down_identityGrandom_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
)__inference_conv2d_15_layer_call_fn_21285

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_19948w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������}}@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
,__inference_sequential_5_layer_call_fn_20083
sequential_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_20052o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_namesequential_input
�
g
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_19895

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_19930

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
2map_while_stateless_random_flip_up_down_true_19762p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:��"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
,__inference_sequential_5_layer_call_fn_20317
sequential_input
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	�@

unknown_12:@

unknown_13:@

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_20245o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:�����������
*
_user_specified_namesequential_input
�
L
0__inference_max_pooling2d_18_layer_call_fn_21391

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
GPU 2J 8� *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_19907�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
p
G__inference_sequential_2_layer_call_and_return_conditional_losses_19840
random_flip_2_input
identity�
random_flip_2/PartitionedCallPartitionedCallrandom_flip_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_19487�
!random_rotation_1/PartitionedCallPartitionedCall&random_flip_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_19493|
IdentityIdentity*random_rotation_1/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:f b
1
_output_shapes
:�����������
-
_user_specified_namerandom_flip_2_input
�
�
3map_while_stateless_random_flip_up_down_false_19763o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:��"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
,__inference_sequential_2_layer_call_fn_19834
random_flip_2_input
unknown:	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_2_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_19818y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:�����������
-
_user_specified_namerandom_flip_2_input
�
d
H__inference_random_flip_2_layer_call_and_return_conditional_losses_21487

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
map_while_cond_21502$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice;
7map_while_map_while_cond_21502___redundant_placeholder0;
7map_while_map_while_cond_21502___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
�
�
)__inference_conv2d_14_layer_call_fn_21255

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_19930y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_21779

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
g
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_21366

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
'__inference_dense_4_layer_call_fn_21416

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_20028o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_17_layer_call_and_return_conditional_losses_19984

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
d
H__inference_random_flip_2_layer_call_and_return_conditional_losses_19487

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
a
E__inference_sequential_layer_call_and_return_conditional_losses_19428

inputs
identity�
resizing/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_19415�
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_19425t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
a
E__inference_sequential_layer_call_and_return_conditional_losses_20956

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:������������
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:�����������c
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
/sequential_2_random_flip_2_map_while_cond_20613Z
Vsequential_2_random_flip_2_map_while_sequential_2_random_flip_2_map_while_loop_counterU
Qsequential_2_random_flip_2_map_while_sequential_2_random_flip_2_map_strided_slice4
0sequential_2_random_flip_2_map_while_placeholder6
2sequential_2_random_flip_2_map_while_placeholder_1Z
Vsequential_2_random_flip_2_map_while_less_sequential_2_random_flip_2_map_strided_sliceq
msequential_2_random_flip_2_map_while_sequential_2_random_flip_2_map_while_cond_20613___redundant_placeholder0q
msequential_2_random_flip_2_map_while_sequential_2_random_flip_2_map_while_cond_20613___redundant_placeholder11
-sequential_2_random_flip_2_map_while_identity
�
)sequential_2/random_flip_2/map/while/LessLess0sequential_2_random_flip_2_map_while_placeholderVsequential_2_random_flip_2_map_while_less_sequential_2_random_flip_2_map_strided_slice*
T0*
_output_shapes
: �
+sequential_2/random_flip_2/map/while/Less_1LessVsequential_2_random_flip_2_map_while_sequential_2_random_flip_2_map_while_loop_counterQsequential_2_random_flip_2_map_while_sequential_2_random_flip_2_map_strided_slice*
T0*
_output_shapes
: �
/sequential_2/random_flip_2/map/while/LogicalAnd
LogicalAnd/sequential_2/random_flip_2/map/while/Less_1:z:0-sequential_2/random_flip_2/map/while/Less:z:0*
_output_shapes
: �
-sequential_2/random_flip_2/map/while/IdentityIdentity3sequential_2/random_flip_2/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "g
-sequential_2_random_flip_2_map_while_identity6sequential_2/random_flip_2/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
�?
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_20245

inputs 
sequential_2_20198:	 
sequential_2_20200:	)
conv2d_14_20203: 
conv2d_14_20205: )
conv2d_15_20209: @
conv2d_15_20211:@)
conv2d_16_20215:@@
conv2d_16_20217:@)
conv2d_17_20221:@@
conv2d_17_20223:@)
conv2d_18_20227:@@
conv2d_18_20229:@ 
dense_4_20234:	�@
dense_4_20236:@
dense_5_20239:@
dense_5_20241:
identity��!conv2d_14/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�!conv2d_18/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�$sequential_2/StatefulPartitionedCall�
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_19456�
$sequential_2/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0sequential_2_20198sequential_2_20200*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_19818�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0conv2d_14_20203conv2d_14_20205*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_19930�
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_19859�
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_15_20209conv2d_15_20211*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_19948�
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_19871�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_16_20215conv2d_16_20217*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_19966�
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_19883�
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_20221conv2d_17_20223*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_19984�
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_19895�
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_20227conv2d_18_20229*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_20002�
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_19907�
flatten_2/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_20015�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_20234dense_4_20236*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_20028�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_20239dense_5_20241*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_20045w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
ٯ
�
"random_flip_2_map_while_body_20990@
<random_flip_2_map_while_random_flip_2_map_while_loop_counter;
7random_flip_2_map_while_random_flip_2_map_strided_slice'
#random_flip_2_map_while_placeholder)
%random_flip_2_map_while_placeholder_1?
;random_flip_2_map_while_random_flip_2_map_strided_slice_1_0{
wrandom_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_0Y
Krandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	$
 random_flip_2_map_while_identity&
"random_flip_2_map_while_identity_1&
"random_flip_2_map_while_identity_2&
"random_flip_2_map_while_identity_3=
9random_flip_2_map_while_random_flip_2_map_strided_slice_1y
urandom_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_2_map_tensorarrayunstack_tensorlistfromtensorW
Irandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource:	��@random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip�Brandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip�
Irandom_flip_2/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
;random_flip_2/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemwrandom_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_0#random_flip_2_map_while_placeholderRrandom_flip_2/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:��*
element_dtype0�
7random_flip_2/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
7random_flip_2/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
6random_flip_2/map/while/stateful_uniform_full_int/ProdProd@random_flip_2/map/while/stateful_uniform_full_int/shape:output:0@random_flip_2/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: z
8random_flip_2/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
8random_flip_2/map/while/stateful_uniform_full_int/Cast_1Cast?random_flip_2/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
@random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipKrandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Arandom_flip_2/map/while/stateful_uniform_full_int/Cast/x:output:0<random_flip_2/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
Erandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Grandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Grandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?random_flip_2/map/while/stateful_uniform_full_int/strided_sliceStridedSliceHrandom_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Nrandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack:output:0Prandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Prandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
9random_flip_2/map/while/stateful_uniform_full_int/BitcastBitcastHrandom_flip_2/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Grandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Irandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Irandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Arandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceHrandom_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Prandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Rrandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Rrandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
;random_flip_2/map/while/stateful_uniform_full_int/Bitcast_1BitcastJrandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0w
5random_flip_2/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
1random_flip_2/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2@random_flip_2/map/while/stateful_uniform_full_int/shape:output:0Drandom_flip_2/map/while/stateful_uniform_full_int/Bitcast_1:output:0Brandom_flip_2/map/while/stateful_uniform_full_int/Bitcast:output:0>random_flip_2/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	l
"random_flip_2/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
random_flip_2/map/while/stackPack:random_flip_2/map/while/stateful_uniform_full_int:output:0+random_flip_2/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:|
+random_flip_2/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ~
-random_flip_2/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ~
-random_flip_2/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
%random_flip_2/map/while/strided_sliceStridedSlice&random_flip_2/map/while/stack:output:04random_flip_2/map/while/strided_slice/stack:output:06random_flip_2/map/while/strided_slice/stack_1:output:06random_flip_2/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Krandom_flip_2/map/while/stateless_random_flip_left_right/control_dependencyIdentityBrandom_flip_2/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*N
_classD
B@loc:@random_flip_2/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:���
Wrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Urandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Urandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
nrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.random_flip_2/map/while/strided_slice:output:0* 
_output_shapes
::�
nrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
jrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2`random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0trandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0xrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0wrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Urandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSub^random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0^random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Urandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulsrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Yrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Qrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Yrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0^random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
?random_flip_2/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
=random_flip_2/map/while/stateless_random_flip_left_right/LessLessUrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Hrandom_flip_2/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
8random_flip_2/map/while/stateless_random_flip_left_rightStatelessIfArandom_flip_2/map/while/stateless_random_flip_left_right/Less:z:0Trandom_flip_2/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *W
else_branchHRF
Drandom_flip_2_map_while_stateless_random_flip_left_right_false_21050*#
output_shapes
:��*V
then_branchGRE
Crandom_flip_2_map_while_stateless_random_flip_left_right_true_21049�
Arandom_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentityArandom_flip_2/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:���
9random_flip_2/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
9random_flip_2/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
8random_flip_2/map/while/stateful_uniform_full_int_1/ProdProdBrandom_flip_2/map/while/stateful_uniform_full_int_1/shape:output:0Brandom_flip_2/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: |
:random_flip_2/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
:random_flip_2/map/while/stateful_uniform_full_int_1/Cast_1CastArandom_flip_2/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Brandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipKrandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Crandom_flip_2/map/while/stateful_uniform_full_int_1/Cast/x:output:0>random_flip_2/map/while/stateful_uniform_full_int_1/Cast_1:y:0A^random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
Grandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Irandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Irandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Arandom_flip_2/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceJrandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Prandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Rrandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Rrandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
;random_flip_2/map/while/stateful_uniform_full_int_1/BitcastBitcastJrandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Irandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Krandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Krandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Crandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceJrandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Rrandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Trandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Trandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
=random_flip_2/map/while/stateful_uniform_full_int_1/Bitcast_1BitcastLrandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0y
7random_flip_2/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
3random_flip_2/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Brandom_flip_2/map/while/stateful_uniform_full_int_1/shape:output:0Frandom_flip_2/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Drandom_flip_2/map/while/stateful_uniform_full_int_1/Bitcast:output:0@random_flip_2/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	n
$random_flip_2/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
random_flip_2/map/while/stack_1Pack<random_flip_2/map/while/stateful_uniform_full_int_1:output:0-random_flip_2/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:~
-random_flip_2/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
/random_flip_2/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
/random_flip_2/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
'random_flip_2/map/while/strided_slice_1StridedSlice(random_flip_2/map/while/stack_1:output:06random_flip_2/map/while/strided_slice_1/stack:output:08random_flip_2/map/while/strided_slice_1/stack_1:output:08random_flip_2/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Hrandom_flip_2/map/while/stateless_random_flip_up_down/control_dependencyIdentityJrandom_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*T
_classJ
HFloc:@random_flip_2/map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:���
Trandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Rrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Rrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
krandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0random_flip_2/map/while/strided_slice_1:output:0* 
_output_shapes
::�
krandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
grandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2]random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0qrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0urandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0trandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Rrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSub[random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0[random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Rrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulprandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Vrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Nrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Vrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0[random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
<random_flip_2/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
:random_flip_2/map/while/stateless_random_flip_up_down/LessLessRrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Erandom_flip_2/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
5random_flip_2/map/while/stateless_random_flip_up_downStatelessIf>random_flip_2/map/while/stateless_random_flip_up_down/Less:z:0Qrandom_flip_2/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *T
else_branchERC
Arandom_flip_2_map_while_stateless_random_flip_up_down_false_21099*#
output_shapes
:��*S
then_branchDRB
@random_flip_2_map_while_stateless_random_flip_up_down_true_21098�
>random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentity>random_flip_2/map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:���
<random_flip_2/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem%random_flip_2_map_while_placeholder_1#random_flip_2_map_while_placeholderGrandom_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���_
random_flip_2/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
random_flip_2/map/while/addAddV2#random_flip_2_map_while_placeholder&random_flip_2/map/while/add/y:output:0*
T0*
_output_shapes
: a
random_flip_2/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
random_flip_2/map/while/add_1AddV2<random_flip_2_map_while_random_flip_2_map_while_loop_counter(random_flip_2/map/while/add_1/y:output:0*
T0*
_output_shapes
: �
 random_flip_2/map/while/IdentityIdentity!random_flip_2/map/while/add_1:z:0^random_flip_2/map/while/NoOp*
T0*
_output_shapes
: �
"random_flip_2/map/while/Identity_1Identity7random_flip_2_map_while_random_flip_2_map_strided_slice^random_flip_2/map/while/NoOp*
T0*
_output_shapes
: �
"random_flip_2/map/while/Identity_2Identityrandom_flip_2/map/while/add:z:0^random_flip_2/map/while/NoOp*
T0*
_output_shapes
: �
"random_flip_2/map/while/Identity_3IdentityLrandom_flip_2/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^random_flip_2/map/while/NoOp*
T0*
_output_shapes
: �
random_flip_2/map/while/NoOpNoOpA^random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkipC^random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "M
 random_flip_2_map_while_identity)random_flip_2/map/while/Identity:output:0"Q
"random_flip_2_map_while_identity_1+random_flip_2/map/while/Identity_1:output:0"Q
"random_flip_2_map_while_identity_2+random_flip_2/map/while/Identity_2:output:0"Q
"random_flip_2_map_while_identity_3+random_flip_2/map/while/Identity_3:output:0"x
9random_flip_2_map_while_random_flip_2_map_strided_slice_1;random_flip_2_map_while_random_flip_2_map_strided_slice_1_0"�
Irandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resourceKrandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
urandom_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_2_map_tensorarrayunstack_tensorlistfromtensorwrandom_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2�
@random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip@random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip2�
Brandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkipBrandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
a
E__inference_sequential_layer_call_and_return_conditional_losses_20946

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:������������
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:�����������c
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_16_layer_call_and_return_conditional_losses_19966

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������>>@
 
_user_specified_nameinputs
�
�
Psequential_2_random_flip_2_map_while_stateless_random_flip_left_right_true_20673�
�sequential_2_random_flip_2_map_while_stateless_random_flip_left_right_reversev2_sequential_2_random_flip_2_map_while_stateless_random_flip_left_right_control_dependencyR
Nsequential_2_random_flip_2_map_while_stateless_random_flip_left_right_identity�
Tsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
Osequential_2/random_flip_2/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2�sequential_2_random_flip_2_map_while_stateless_random_flip_left_right_reversev2_sequential_2_random_flip_2_map_while_stateless_random_flip_left_right_control_dependency]sequential_2/random_flip_2/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
Nsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentityXsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:��"�
Nsequential_2_random_flip_2_map_while_stateless_random_flip_left_right_identityWsequential_2/random_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�Q
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_20592

inputsB
(conv2d_14_conv2d_readvariableop_resource: 7
)conv2d_14_biasadd_readvariableop_resource: B
(conv2d_15_conv2d_readvariableop_resource: @7
)conv2d_15_biasadd_readvariableop_resource:@B
(conv2d_16_conv2d_readvariableop_resource:@@7
)conv2d_16_biasadd_readvariableop_resource:@B
(conv2d_17_conv2d_readvariableop_resource:@@7
)conv2d_17_biasadd_readvariableop_resource:@B
(conv2d_18_conv2d_readvariableop_resource:@@7
)conv2d_18_biasadd_readvariableop_resource:@9
&dense_4_matmul_readvariableop_resource:	�@5
'dense_4_biasadd_readvariableop_resource:@8
&dense_5_matmul_readvariableop_resource:@5
'dense_5_biasadd_readvariableop_resource:
identity�� conv2d_14/BiasAdd/ReadVariableOp�conv2d_14/Conv2D/ReadVariableOp� conv2d_15/BiasAdd/ReadVariableOp�conv2d_15/Conv2D/ReadVariableOp� conv2d_16/BiasAdd/ReadVariableOp�conv2d_16/Conv2D/ReadVariableOp� conv2d_17/BiasAdd/ReadVariableOp�conv2d_17/Conv2D/ReadVariableOp� conv2d_18/BiasAdd/ReadVariableOp�conv2d_18/Conv2D/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOpp
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:������������
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_14/Conv2DConv2Dsequential/rescaling/add:z:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� n
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
max_pooling2d_14/MaxPoolMaxPoolconv2d_14/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_15/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
�
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@l
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:���������}}@�
max_pooling2d_15/MaxPoolMaxPoolconv2d_15/Relu:activations:0*/
_output_shapes
:���������>>@*
ksize
*
paddingVALID*
strides
�
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_16/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@*
paddingVALID*
strides
�
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@l
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:���������<<@�
max_pooling2d_16/MaxPoolMaxPoolconv2d_16/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_17/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_17/MaxPoolMaxPoolconv2d_17/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_18/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_18/MaxPoolMaxPoolconv2d_18/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 	  �
flatten_2/ReshapeReshape!max_pooling2d_18/MaxPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:�����������
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@`
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_16_layer_call_and_return_conditional_losses_21326

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������>>@
 
_user_specified_nameinputs
�
`
D__inference_rescaling_layer_call_and_return_conditional_losses_19425

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
F
*__inference_sequential_layer_call_fn_20936

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_19456j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_21266

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_18_layer_call_fn_21375

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_20002w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
H__inference_random_flip_2_layer_call_and_return_conditional_losses_19796

inputs
map_while_input_6:	
identity��	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( * 
bodyR
map_while_body_19654* 
condR
map_while_cond_19653*!
output_shapes
: : : : : : : �
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:�����������*
element_dtype0�
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:�����������R
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2
	map/while	map/while:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_15_layer_call_and_return_conditional_losses_19948

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
)__inference_conv2d_17_layer_call_fn_21345

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_19984w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
3map_while_stateless_random_flip_up_down_false_21612o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:��"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
g
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_21276

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
5map_while_stateless_random_flip_left_right_true_21562v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:��"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
g
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_21336

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
W
sequential_inputC
"serving_default_sequential_input:0�����������;
dense_50
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer_with_weights-5
layer-13
layer_with_weights-6
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_sequential
�
!layer-0
"layer-1
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
 1_jit_compiled_convolution_op"
_tf_keras_layer
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
�
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias
 @_jit_compiled_convolution_op"
_tf_keras_layer
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias
 O_jit_compiled_convolution_op"
_tf_keras_layer
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel
]bias
 ^_jit_compiled_convolution_op"
_tf_keras_layer
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layer
�
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias
 m_jit_compiled_convolution_op"
_tf_keras_layer
�
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
�
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
�
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
/0
01
>2
?3
M4
N5
\6
]7
k8
l9
�10
�11
�12
�13"
trackable_list_wrapper
�
/0
01
>2
?3
M4
N5
\6
]7
k8
l9
�10
�11
�12
�13"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
,__inference_sequential_5_layer_call_fn_20083
,__inference_sequential_5_layer_call_fn_20489
,__inference_sequential_5_layer_call_fn_20526
,__inference_sequential_5_layer_call_fn_20317�
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
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
G__inference_sequential_5_layer_call_and_return_conditional_losses_20592
G__inference_sequential_5_layer_call_and_return_conditional_losses_20926
G__inference_sequential_5_layer_call_and_return_conditional_losses_20364
G__inference_sequential_5_layer_call_and_return_conditional_losses_20415�
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
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
 __inference__wrapped_model_19402sequential_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate/m�0m�>m�?m�Mm�Nm�\m�]m�km�lm�	�m�	�m�	�m�	�m�/v�0v�>v�?v�Mv�Nv�\v�]v�kv�lv�	�v�	�v�	�v�	�v�"
	optimizer
-
�serving_default"
signature_map
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
*__inference_sequential_layer_call_fn_19431
*__inference_sequential_layer_call_fn_20931
*__inference_sequential_layer_call_fn_20936
*__inference_sequential_layer_call_fn_19464�
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
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
E__inference_sequential_layer_call_and_return_conditional_losses_20946
E__inference_sequential_layer_call_and_return_conditional_losses_20956
E__inference_sequential_layer_call_and_return_conditional_losses_19470
E__inference_sequential_layer_call_and_return_conditional_losses_19476�
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
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
,__inference_sequential_2_layer_call_fn_19499
,__inference_sequential_2_layer_call_fn_20961
,__inference_sequential_2_layer_call_fn_20970
,__inference_sequential_2_layer_call_fn_19834�
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
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
G__inference_sequential_2_layer_call_and_return_conditional_losses_20974
G__inference_sequential_2_layer_call_and_return_conditional_losses_21246
G__inference_sequential_2_layer_call_and_return_conditional_losses_19840
G__inference_sequential_2_layer_call_and_return_conditional_losses_19850�
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
 z�trace_0z�trace_1z�trace_2z�trace_3
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_14_layer_call_fn_21255�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_21266�
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
 z�trace_0
*:( 2conv2d_14/kernel
: 2conv2d_14/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_14_layer_call_fn_21271�
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
 z�trace_0
�
�trace_02�
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_21276�
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
 z�trace_0
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_15_layer_call_fn_21285�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_15_layer_call_and_return_conditional_losses_21296�
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
 z�trace_0
*:( @2conv2d_15/kernel
:@2conv2d_15/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_15_layer_call_fn_21301�
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
 z�trace_0
�
�trace_02�
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_21306�
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
 z�trace_0
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_16_layer_call_fn_21315�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_16_layer_call_and_return_conditional_losses_21326�
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
 z�trace_0
*:(@@2conv2d_16/kernel
:@2conv2d_16/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_16_layer_call_fn_21331�
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
 z�trace_0
�
�trace_02�
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_21336�
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
 z�trace_0
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_17_layer_call_fn_21345�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_17_layer_call_and_return_conditional_losses_21356�
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
 z�trace_0
*:(@@2conv2d_17/kernel
:@2conv2d_17/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_17_layer_call_fn_21361�
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
 z�trace_0
�
�trace_02�
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_21366�
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
 z�trace_0
.
k0
l1"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_18_layer_call_fn_21375�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_18_layer_call_and_return_conditional_losses_21386�
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
 z�trace_0
*:(@@2conv2d_18/kernel
:@2conv2d_18/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_18_layer_call_fn_21391�
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
 z�trace_0
�
�trace_02�
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_21396�
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
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_flatten_2_layer_call_fn_21401�
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
 z�trace_0
�
�trace_02�
D__inference_flatten_2_layer_call_and_return_conditional_losses_21407�
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
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_4_layer_call_fn_21416�
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
 z�trace_0
�
�trace_02�
B__inference_dense_4_layer_call_and_return_conditional_losses_21427�
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
 z�trace_0
!:	�@2dense_4/kernel
:@2dense_4/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_5_layer_call_fn_21436�
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
 z�trace_0
�
�trace_02�
B__inference_dense_5_layer_call_and_return_conditional_losses_21447�
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
 z�trace_0
 :@2dense_5/kernel
:2dense_5/bias
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_sequential_5_layer_call_fn_20083sequential_input"�
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
�B�
,__inference_sequential_5_layer_call_fn_20489inputs"�
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
�B�
,__inference_sequential_5_layer_call_fn_20526inputs"�
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
�B�
,__inference_sequential_5_layer_call_fn_20317sequential_input"�
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
�B�
G__inference_sequential_5_layer_call_and_return_conditional_losses_20592inputs"�
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
�B�
G__inference_sequential_5_layer_call_and_return_conditional_losses_20926inputs"�
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
�B�
G__inference_sequential_5_layer_call_and_return_conditional_losses_20364sequential_input"�
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
�B�
G__inference_sequential_5_layer_call_and_return_conditional_losses_20415sequential_input"�
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
#__inference_signature_wrapper_20456sequential_input"�
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
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_resizing_layer_call_fn_21452�
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
 z�trace_0
�
�trace_02�
C__inference_resizing_layer_call_and_return_conditional_losses_21458�
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
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_rescaling_layer_call_fn_21463�
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
 z�trace_0
�
�trace_02�
D__inference_rescaling_layer_call_and_return_conditional_losses_21471�
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
 z�trace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_sequential_layer_call_fn_19431resizing_input"�
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
�B�
*__inference_sequential_layer_call_fn_20931inputs"�
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
�B�
*__inference_sequential_layer_call_fn_20936inputs"�
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
�B�
*__inference_sequential_layer_call_fn_19464resizing_input"�
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
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_20946inputs"�
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
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_20956inputs"�
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
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_19470resizing_input"�
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
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_19476resizing_input"�
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
-__inference_random_flip_2_layer_call_fn_21476
-__inference_random_flip_2_layer_call_fn_21483�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
H__inference_random_flip_2_layer_call_and_return_conditional_losses_21487
H__inference_random_flip_2_layer_call_and_return_conditional_losses_21645�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
1__inference_random_rotation_1_layer_call_fn_21650
1__inference_random_rotation_1_layer_call_fn_21657�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_21661
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_21779�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_sequential_2_layer_call_fn_19499random_flip_2_input"�
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
�B�
,__inference_sequential_2_layer_call_fn_20961inputs"�
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
�B�
,__inference_sequential_2_layer_call_fn_20970inputs"�
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
�B�
,__inference_sequential_2_layer_call_fn_19834random_flip_2_input"�
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
�B�
G__inference_sequential_2_layer_call_and_return_conditional_losses_20974inputs"�
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
�B�
G__inference_sequential_2_layer_call_and_return_conditional_losses_21246inputs"�
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
�B�
G__inference_sequential_2_layer_call_and_return_conditional_losses_19840random_flip_2_input"�
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
�B�
G__inference_sequential_2_layer_call_and_return_conditional_losses_19850random_flip_2_input"�
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
�B�
)__inference_conv2d_14_layer_call_fn_21255inputs"�
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
D__inference_conv2d_14_layer_call_and_return_conditional_losses_21266inputs"�
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
�B�
0__inference_max_pooling2d_14_layer_call_fn_21271inputs"�
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
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_21276inputs"�
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
�B�
)__inference_conv2d_15_layer_call_fn_21285inputs"�
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
D__inference_conv2d_15_layer_call_and_return_conditional_losses_21296inputs"�
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
�B�
0__inference_max_pooling2d_15_layer_call_fn_21301inputs"�
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
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_21306inputs"�
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
�B�
)__inference_conv2d_16_layer_call_fn_21315inputs"�
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
D__inference_conv2d_16_layer_call_and_return_conditional_losses_21326inputs"�
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
�B�
0__inference_max_pooling2d_16_layer_call_fn_21331inputs"�
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
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_21336inputs"�
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
�B�
)__inference_conv2d_17_layer_call_fn_21345inputs"�
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
D__inference_conv2d_17_layer_call_and_return_conditional_losses_21356inputs"�
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
�B�
0__inference_max_pooling2d_17_layer_call_fn_21361inputs"�
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
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_21366inputs"�
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
�B�
)__inference_conv2d_18_layer_call_fn_21375inputs"�
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
D__inference_conv2d_18_layer_call_and_return_conditional_losses_21386inputs"�
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
�B�
0__inference_max_pooling2d_18_layer_call_fn_21391inputs"�
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
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_21396inputs"�
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
�B�
)__inference_flatten_2_layer_call_fn_21401inputs"�
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
D__inference_flatten_2_layer_call_and_return_conditional_losses_21407inputs"�
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
�B�
'__inference_dense_4_layer_call_fn_21416inputs"�
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
B__inference_dense_4_layer_call_and_return_conditional_losses_21427inputs"�
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
�B�
'__inference_dense_5_layer_call_fn_21436inputs"�
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
B__inference_dense_5_layer_call_and_return_conditional_losses_21447inputs"�
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
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
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
�B�
(__inference_resizing_layer_call_fn_21452inputs"�
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
C__inference_resizing_layer_call_and_return_conditional_losses_21458inputs"�
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
�B�
)__inference_rescaling_layer_call_fn_21463inputs"�
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
D__inference_rescaling_layer_call_and_return_conditional_losses_21471inputs"�
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
�B�
-__inference_random_flip_2_layer_call_fn_21476inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
-__inference_random_flip_2_layer_call_fn_21483inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
H__inference_random_flip_2_layer_call_and_return_conditional_losses_21487inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
H__inference_random_flip_2_layer_call_and_return_conditional_losses_21645inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
/
�
_state_var"
_generic_user_object
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
�B�
1__inference_random_rotation_1_layer_call_fn_21650inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
1__inference_random_rotation_1_layer_call_fn_21657inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_21661inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_21779inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
/
�
_state_var"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
:	2StateVar
:	2StateVar
/:- 2Adam/conv2d_14/kernel/m
!: 2Adam/conv2d_14/bias/m
/:- @2Adam/conv2d_15/kernel/m
!:@2Adam/conv2d_15/bias/m
/:-@@2Adam/conv2d_16/kernel/m
!:@2Adam/conv2d_16/bias/m
/:-@@2Adam/conv2d_17/kernel/m
!:@2Adam/conv2d_17/bias/m
/:-@@2Adam/conv2d_18/kernel/m
!:@2Adam/conv2d_18/bias/m
&:$	�@2Adam/dense_4/kernel/m
:@2Adam/dense_4/bias/m
%:#@2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
/:- 2Adam/conv2d_14/kernel/v
!: 2Adam/conv2d_14/bias/v
/:- @2Adam/conv2d_15/kernel/v
!:@2Adam/conv2d_15/bias/v
/:-@@2Adam/conv2d_16/kernel/v
!:@2Adam/conv2d_16/bias/v
/:-@@2Adam/conv2d_17/kernel/v
!:@2Adam/conv2d_17/bias/v
/:-@@2Adam/conv2d_18/kernel/v
!:@2Adam/conv2d_18/bias/v
&:$	�@2Adam/dense_4/kernel/v
:@2Adam/dense_4/bias/v
%:#@2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v�
 __inference__wrapped_model_19402�/0>?MN\]kl����C�@
9�6
4�1
sequential_input�����������
� "1�.
,
dense_5!�
dense_5����������
D__inference_conv2d_14_layer_call_and_return_conditional_losses_21266p/09�6
/�,
*�'
inputs�����������
� "/�,
%�"
0����������� 
� �
)__inference_conv2d_14_layer_call_fn_21255c/09�6
/�,
*�'
inputs�����������
� ""������������ �
D__inference_conv2d_15_layer_call_and_return_conditional_losses_21296l>?7�4
-�*
(�%
inputs��������� 
� "-�*
#� 
0���������}}@
� �
)__inference_conv2d_15_layer_call_fn_21285_>?7�4
-�*
(�%
inputs��������� 
� " ����������}}@�
D__inference_conv2d_16_layer_call_and_return_conditional_losses_21326lMN7�4
-�*
(�%
inputs���������>>@
� "-�*
#� 
0���������<<@
� �
)__inference_conv2d_16_layer_call_fn_21315_MN7�4
-�*
(�%
inputs���������>>@
� " ����������<<@�
D__inference_conv2d_17_layer_call_and_return_conditional_losses_21356l\]7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
)__inference_conv2d_17_layer_call_fn_21345_\]7�4
-�*
(�%
inputs���������@
� " ����������@�
D__inference_conv2d_18_layer_call_and_return_conditional_losses_21386lkl7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
)__inference_conv2d_18_layer_call_fn_21375_kl7�4
-�*
(�%
inputs���������@
� " ����������@�
B__inference_dense_4_layer_call_and_return_conditional_losses_21427_��0�-
&�#
!�
inputs����������
� "%�"
�
0���������@
� }
'__inference_dense_4_layer_call_fn_21416R��0�-
&�#
!�
inputs����������
� "����������@�
B__inference_dense_5_layer_call_and_return_conditional_losses_21447^��/�,
%�"
 �
inputs���������@
� "%�"
�
0���������
� |
'__inference_dense_5_layer_call_fn_21436Q��/�,
%�"
 �
inputs���������@
� "�����������
D__inference_flatten_2_layer_call_and_return_conditional_losses_21407a7�4
-�*
(�%
inputs���������@
� "&�#
�
0����������
� �
)__inference_flatten_2_layer_call_fn_21401T7�4
-�*
(�%
inputs���������@
� "������������
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_21276�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
0__inference_max_pooling2d_14_layer_call_fn_21271�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_21306�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
0__inference_max_pooling2d_15_layer_call_fn_21301�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_21336�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
0__inference_max_pooling2d_16_layer_call_fn_21331�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_21366�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
0__inference_max_pooling2d_17_layer_call_fn_21361�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_21396�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
0__inference_max_pooling2d_18_layer_call_fn_21391�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
H__inference_random_flip_2_layer_call_and_return_conditional_losses_21487p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
H__inference_random_flip_2_layer_call_and_return_conditional_losses_21645t�=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
-__inference_random_flip_2_layer_call_fn_21476c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
-__inference_random_flip_2_layer_call_fn_21483g�=�:
3�0
*�'
inputs�����������
p
� ""�������������
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_21661p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_21779t�=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
1__inference_random_rotation_1_layer_call_fn_21650c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
1__inference_random_rotation_1_layer_call_fn_21657g�=�:
3�0
*�'
inputs�����������
p
� ""�������������
D__inference_rescaling_layer_call_and_return_conditional_losses_21471l9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
)__inference_rescaling_layer_call_fn_21463_9�6
/�,
*�'
inputs�����������
� ""�������������
C__inference_resizing_layer_call_and_return_conditional_losses_21458l9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
(__inference_resizing_layer_call_fn_21452_9�6
/�,
*�'
inputs�����������
� ""�������������
G__inference_sequential_2_layer_call_and_return_conditional_losses_19840�N�K
D�A
7�4
random_flip_2_input�����������
p 

 
� "/�,
%�"
0�����������
� �
G__inference_sequential_2_layer_call_and_return_conditional_losses_19850���N�K
D�A
7�4
random_flip_2_input�����������
p

 
� "/�,
%�"
0�����������
� �
G__inference_sequential_2_layer_call_and_return_conditional_losses_20974tA�>
7�4
*�'
inputs�����������
p 

 
� "/�,
%�"
0�����������
� �
G__inference_sequential_2_layer_call_and_return_conditional_losses_21246z��A�>
7�4
*�'
inputs�����������
p

 
� "/�,
%�"
0�����������
� �
,__inference_sequential_2_layer_call_fn_19499tN�K
D�A
7�4
random_flip_2_input�����������
p 

 
� ""�������������
,__inference_sequential_2_layer_call_fn_19834z��N�K
D�A
7�4
random_flip_2_input�����������
p

 
� ""�������������
,__inference_sequential_2_layer_call_fn_20961gA�>
7�4
*�'
inputs�����������
p 

 
� ""�������������
,__inference_sequential_2_layer_call_fn_20970m��A�>
7�4
*�'
inputs�����������
p

 
� ""�������������
G__inference_sequential_5_layer_call_and_return_conditional_losses_20364�/0>?MN\]kl����K�H
A�>
4�1
sequential_input�����������
p 

 
� "%�"
�
0���������
� �
G__inference_sequential_5_layer_call_and_return_conditional_losses_20415���/0>?MN\]kl����K�H
A�>
4�1
sequential_input�����������
p

 
� "%�"
�
0���������
� �
G__inference_sequential_5_layer_call_and_return_conditional_losses_20592~/0>?MN\]kl����A�>
7�4
*�'
inputs�����������
p 

 
� "%�"
�
0���������
� �
G__inference_sequential_5_layer_call_and_return_conditional_losses_20926���/0>?MN\]kl����A�>
7�4
*�'
inputs�����������
p

 
� "%�"
�
0���������
� �
,__inference_sequential_5_layer_call_fn_20083{/0>?MN\]kl����K�H
A�>
4�1
sequential_input�����������
p 

 
� "�����������
,__inference_sequential_5_layer_call_fn_20317��/0>?MN\]kl����K�H
A�>
4�1
sequential_input�����������
p

 
� "�����������
,__inference_sequential_5_layer_call_fn_20489q/0>?MN\]kl����A�>
7�4
*�'
inputs�����������
p 

 
� "�����������
,__inference_sequential_5_layer_call_fn_20526u��/0>?MN\]kl����A�>
7�4
*�'
inputs�����������
p

 
� "�����������
E__inference_sequential_layer_call_and_return_conditional_losses_19470|I�F
?�<
2�/
resizing_input�����������
p 

 
� "/�,
%�"
0�����������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_19476|I�F
?�<
2�/
resizing_input�����������
p

 
� "/�,
%�"
0�����������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_20946tA�>
7�4
*�'
inputs�����������
p 

 
� "/�,
%�"
0�����������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_20956tA�>
7�4
*�'
inputs�����������
p

 
� "/�,
%�"
0�����������
� �
*__inference_sequential_layer_call_fn_19431oI�F
?�<
2�/
resizing_input�����������
p 

 
� ""�������������
*__inference_sequential_layer_call_fn_19464oI�F
?�<
2�/
resizing_input�����������
p

 
� ""�������������
*__inference_sequential_layer_call_fn_20931gA�>
7�4
*�'
inputs�����������
p 

 
� ""�������������
*__inference_sequential_layer_call_fn_20936gA�>
7�4
*�'
inputs�����������
p

 
� ""�������������
#__inference_signature_wrapper_20456�/0>?MN\]kl����W�T
� 
M�J
H
sequential_input4�1
sequential_input�����������"1�.
,
dense_5!�
dense_5���������