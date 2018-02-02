.class Lcom/oneplus/camera/FlashControllerImpl$5$1;
.super Ljava/lang/Object;
.source "FlashControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/FlashControllerImpl$5;->onComponentFound(Lcom/oneplus/camera/ExposureController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-media-MediaTypeSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$media$MediaType:[I

.field final synthetic this$1:Lcom/oneplus/camera/FlashControllerImpl$5;


# direct methods
.method private static synthetic -getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl$5$1;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl$5$1;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/media/MediaType;->values()[Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/FlashControllerImpl$5$1;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/camera/FlashControllerImpl$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/FlashControllerImpl$5;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/oneplus/camera/FlashControllerImpl$5$1;->this$1:Lcom/oneplus/camera/FlashControllerImpl$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/oneplus/camera/FlashControllerImpl$5$1;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$5$1;->this$1:Lcom/oneplus/camera/FlashControllerImpl$5;

    iget-object v0, v0, Lcom/oneplus/camera/FlashControllerImpl$5;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/FlashControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 434
    :goto_0
    return-void

    .line 439
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$5$1;->this$1:Lcom/oneplus/camera/FlashControllerImpl$5;

    iget-object v0, v0, Lcom/oneplus/camera/FlashControllerImpl$5;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/FlashControllerImpl;->-wrap6(Lcom/oneplus/camera/FlashControllerImpl;)V

    goto :goto_0

    .line 442
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$5$1;->this$1:Lcom/oneplus/camera/FlashControllerImpl$5;

    iget-object v0, v0, Lcom/oneplus/camera/FlashControllerImpl$5;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/FlashControllerImpl;->-get0(Lcom/oneplus/camera/FlashControllerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPropertyChanged() - video mode, do nothing"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
