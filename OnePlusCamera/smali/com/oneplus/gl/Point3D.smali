.class public Lcom/oneplus/gl/Point3D;
.super Ljava/lang/Object;
.source "Point3D.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gl/Point3D;-><init>(FFF)V

    .line 36
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/oneplus/gl/Point3D;->x:F

    .line 51
    iput p2, p0, Lcom/oneplus/gl/Point3D;->y:F

    .line 52
    iput p3, p0, Lcom/oneplus/gl/Point3D;->z:F

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gl/Point3D;)V
    .locals 1
    .param p1, "point"    # Lcom/oneplus/gl/Point3D;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-eqz p1, :cond_0

    .line 64
    iget v0, p1, Lcom/oneplus/gl/Point3D;->x:F

    iput v0, p0, Lcom/oneplus/gl/Point3D;->x:F

    .line 65
    iget v0, p1, Lcom/oneplus/gl/Point3D;->y:F

    iput v0, p0, Lcom/oneplus/gl/Point3D;->y:F

    .line 66
    iget v0, p1, Lcom/oneplus/gl/Point3D;->z:F

    iput v0, p0, Lcom/oneplus/gl/Point3D;->z:F

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/gl/Point3D;
    .locals 5

    .prologue
    .line 76
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gl/Point3D;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Lcom/oneplus/gl/Point3D;

    iget v2, p0, Lcom/oneplus/gl/Point3D;->x:F

    iget v3, p0, Lcom/oneplus/gl/Point3D;->y:F

    iget v4, p0, Lcom/oneplus/gl/Point3D;->z:F

    invoke-direct {v1, v2, v3, v4}, Lcom/oneplus/gl/Point3D;-><init>(FFF)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/oneplus/gl/Point3D;->clone()Lcom/oneplus/gl/Point3D;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/oneplus/gl/Point3D;)Z
    .locals 3
    .param p1, "point"    # Lcom/oneplus/gl/Point3D;

    .prologue
    const/4 v0, 0x0

    .line 101
    if-eqz p1, :cond_1

    .line 102
    iget v1, p0, Lcom/oneplus/gl/Point3D;->x:F

    iget v2, p1, Lcom/oneplus/gl/Point3D;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/oneplus/gl/Point3D;->y:F

    iget v2, p1, Lcom/oneplus/gl/Point3D;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/oneplus/gl/Point3D;->z:F

    iget v2, p1, Lcom/oneplus/gl/Point3D;->z:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 103
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 88
    instance-of v0, p1, Lcom/oneplus/gl/Point3D;

    if-eqz v0, :cond_0

    .line 89
    check-cast p1, Lcom/oneplus/gl/Point3D;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gl/Point3D;->equals(Lcom/oneplus/gl/Point3D;)Z

    move-result v0

    return v0

    .line 90
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final set(FFF)Lcom/oneplus/gl/Point3D;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 139
    iput p1, p0, Lcom/oneplus/gl/Point3D;->x:F

    .line 140
    iput p2, p0, Lcom/oneplus/gl/Point3D;->y:F

    .line 141
    iput p3, p0, Lcom/oneplus/gl/Point3D;->z:F

    .line 142
    return-object p0
.end method

.method public final set(Lcom/oneplus/gl/Point3D;)Lcom/oneplus/gl/Point3D;
    .locals 1
    .param p1, "point"    # Lcom/oneplus/gl/Point3D;

    .prologue
    const/4 v0, 0x0

    .line 114
    if-eqz p1, :cond_0

    .line 116
    iget v0, p1, Lcom/oneplus/gl/Point3D;->x:F

    iput v0, p0, Lcom/oneplus/gl/Point3D;->x:F

    .line 117
    iget v0, p1, Lcom/oneplus/gl/Point3D;->y:F

    iput v0, p0, Lcom/oneplus/gl/Point3D;->y:F

    .line 118
    iget v0, p1, Lcom/oneplus/gl/Point3D;->z:F

    iput v0, p0, Lcom/oneplus/gl/Point3D;->z:F

    .line 126
    :goto_0
    return-object p0

    .line 122
    :cond_0
    iput v0, p0, Lcom/oneplus/gl/Point3D;->x:F

    .line 123
    iput v0, p0, Lcom/oneplus/gl/Point3D;->y:F

    .line 124
    iput v0, p0, Lcom/oneplus/gl/Point3D;->z:F

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 150
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "(%.4f, %.4f, %.4f)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/oneplus/gl/Point3D;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/oneplus/gl/Point3D;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcom/oneplus/gl/Point3D;->z:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
