.class Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
.super Landroid/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntPropertyValuesHolder"
.end annotation


# static fields
.field private static final sJNISetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mIntAnimatedValue:I

.field mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

.field private mIntProperty:Landroid/util/IntProperty;

.field mJniSetter:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1079
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/util/Property;Landroid/animation/Keyframes$IntKeyframes;)V
    .locals 1
    .param p1, "property"    # Landroid/util/Property;
    .param p2, "keyframes"    # Landroid/animation/Keyframes$IntKeyframes;

    .prologue
    .line 1095
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder$1;)V

    .line 1096
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 1097
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 1098
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    .line 1099
    instance-of v0, p1, Landroid/util/IntProperty;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/util/IntProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    .line 1102
    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Landroid/util/Property;[I)V
    .locals 1
    .param p1, "property"    # Landroid/util/Property;
    .param p2, "values"    # [I

    .prologue
    .line 1110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder$1;)V

    .line 1111
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    .line 1112
    instance-of v0, p1, Landroid/util/IntProperty;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/util/IntProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    .line 1115
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/animation/Keyframes$IntKeyframes;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "keyframes"    # Landroid/animation/Keyframes$IntKeyframes;

    .prologue
    .line 1088
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder$1;)V

    .line 1089
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 1090
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 1091
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    .line 1092
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 1105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder$1;)V

    .line 1106
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    .line 1107
    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 1125
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    invoke-interface {v0, p1}, Landroid/animation/Keyframes$IntKeyframes;->getIntValue(F)I

    move-result v0

    iput v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    .line 1126
    return-void
.end method

.method public clone()Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    .locals 2

    .prologue
    .line 1135
    invoke-super {p0}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    .line 1136
    .local v0, "newPVH":Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    iget-object v1, v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    check-cast v1, Landroid/animation/Keyframes$IntKeyframes;

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    .line 1137
    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 1076
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1076
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1130
    iget v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 1149
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    if-eqz v1, :cond_1

    .line 1150
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    iget v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-virtual {v1, p1, v2}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_2

    .line 1154
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    iget v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1157
    :cond_2
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 1158
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    iget v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    # invokes: Landroid/animation/PropertyValuesHolder;->nCallIntMethod(Ljava/lang/Object;JI)V
    invoke-static {p1, v2, v3, v1}, Landroid/animation/PropertyValuesHolder;->access$200(Ljava/lang/Object;JI)V

    goto :goto_0

    .line 1161
    :cond_3
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 1163
    :try_start_0
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1164
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1165
    :catch_0
    move-exception v0

    .line 1166
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1167
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 1168
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 1
    .param p1, "values"    # [I

    .prologue
    .line 1119
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 1120
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    check-cast v0, Landroid/animation/Keyframes$IntKeyframes;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    .line 1121
    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 8
    .param p1, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 1175
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v4, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1179
    :cond_1
    sget-object v5, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 1180
    :try_start_0
    sget-object v4, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 1181
    .local v2, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 1182
    .local v3, "wasInMap":Z
    if-eqz v2, :cond_2

    .line 1183
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 1184
    if-eqz v3, :cond_2

    .line 1185
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1186
    .local v0, "jniSetter":Ljava/lang/Long;
    if-eqz v0, :cond_2

    .line 1187
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    .line 1191
    .end local v0    # "jniSetter":Ljava/lang/Long;
    :cond_2
    if-nez v3, :cond_4

    .line 1192
    const-string/jumbo v4, "set"

    iget-object v6, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1194
    .local v1, "methodName":Ljava/lang/String;
    :try_start_1
    # invokes: Landroid/animation/PropertyValuesHolder;->nGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)J
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->access$300(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1200
    :goto_1
    if-nez v2, :cond_3

    .line 1201
    :try_start_2
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1202
    .restart local v2    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v4, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    :cond_3
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-wide v6, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    .end local v1    # "methodName":Ljava/lang/String;
    :cond_4
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1207
    iget-wide v4, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1209
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    goto :goto_0

    .line 1206
    .end local v2    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "wasInMap":Z
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1195
    .restart local v1    # "methodName":Ljava/lang/String;
    .restart local v2    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v3    # "wasInMap":Z
    :catch_0
    move-exception v4

    goto :goto_1
.end method
