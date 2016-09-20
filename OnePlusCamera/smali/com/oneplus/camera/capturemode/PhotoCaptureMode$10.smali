.class synthetic Lcom/oneplus/camera/capturemode/PhotoCaptureMode$10;
.super Ljava/lang/Object;
.source "PhotoCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/capturemode/PhotoCaptureMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$base$BaseActivity$State:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$capturemode$CaptureMode$ImageUsage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 234
    invoke-static {}, Lcom/oneplus/base/BaseActivity$State;->values()[Lcom/oneplus/base/BaseActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$10;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    :try_start_0
    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$10;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    :goto_0
    invoke-static {}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->values()[Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$10;->$SwitchMap$com$oneplus$camera$capturemode$CaptureMode$ImageUsage:[I

    :try_start_1
    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$10;->$SwitchMap$com$oneplus$camera$capturemode$CaptureMode$ImageUsage:[I

    sget-object v1, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->CAPTURE_MODES_PANEL_ICON:Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    invoke-virtual {v1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    .line 234
    :catch_1
    move-exception v0

    goto :goto_0
.end method
