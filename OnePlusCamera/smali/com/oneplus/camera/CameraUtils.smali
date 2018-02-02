.class public final Lcom/oneplus/camera/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findCamera(Ljava/util/List;Lcom/oneplus/camera/Camera$LensFacing;Z)Lcom/oneplus/camera/Camera;
    .locals 4
    .param p1, "facing"    # Lcom/oneplus/camera/Camera$LensFacing;
    .param p2, "isRemovable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;",
            "Lcom/oneplus/camera/Camera$LensFacing;",
            "Z)",
            "Lcom/oneplus/camera/Camera;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    const/4 v3, 0x0

    .line 24
    if-eqz p0, :cond_1

    .line 26
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 28
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 29
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    .line 30
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 31
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/oneplus/camera/CameraUtils;->isNonRemovableCamera(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, p2, :cond_0

    .line 33
    return-object v0

    .line 26
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 37
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    .end local v1    # "i":I
    :cond_1
    return-object v3
.end method

.method public static findCamera(Ljava/util/List;Ljava/lang/String;)Lcom/oneplus/camera/Camera;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oneplus/camera/Camera;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    const/4 v3, 0x0

    .line 49
    if-eqz p0, :cond_1

    .line 51
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 53
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 54
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    return-object v0

    .line 51
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 58
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    .end local v1    # "i":I
    :cond_1
    return-object v3
.end method

.method public static isNonRemovableCamera(Ljava/lang/String;)Z
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 72
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    .line 73
    :cond_0
    return v3

    .line 69
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 75
    .end local v0    # "c":C
    :cond_2
    const/4 v2, 0x1

    return v2
.end method
