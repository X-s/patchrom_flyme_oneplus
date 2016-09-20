.class synthetic Lcom/oneplus/camera/scene/PhotoFaceBeautyScene$1;
.super Ljava/lang/Object;
.source "PhotoFaceBeautyScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$camera$scene$Scene$ImageUsage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Lcom/oneplus/camera/scene/Scene$ImageUsage;->values()[Lcom/oneplus/camera/scene/Scene$ImageUsage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene$1;->$SwitchMap$com$oneplus$camera$scene$Scene$ImageUsage:[I

    :try_start_0
    sget-object v0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene$1;->$SwitchMap$com$oneplus$camera$scene$Scene$ImageUsage:[I

    sget-object v1, Lcom/oneplus/camera/scene/Scene$ImageUsage;->OPTIONS_PANEL_ICON:Lcom/oneplus/camera/scene/Scene$ImageUsage;

    invoke-virtual {v1}, Lcom/oneplus/camera/scene/Scene$ImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
