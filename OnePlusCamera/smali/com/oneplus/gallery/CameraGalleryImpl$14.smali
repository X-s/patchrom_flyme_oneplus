.class Lcom/oneplus/gallery/CameraGalleryImpl$14;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I

.field private static final synthetic -com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$ui$CameraGallery$UIState:[I

.field final synthetic $SWITCH_TABLE$com$oneplus$camera$ui$PreviewCover$UIState:[I

.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method private static synthetic -getcom-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->-com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->-com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->values()[Lcom/oneplus/camera/ui/CameraGallery$UIState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->DRAGGING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->-com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->values()[Lcom/oneplus/camera/ui/PreviewCover$UIState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_CLOSE:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_OPEN:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->-com-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 1715
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1721
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$14;->-getcom-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues()[I

    move-result-object v2

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1719
    :cond_0
    :goto_0
    return-void

    .line 1726
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap15(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 1729
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap56(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 1732
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1735
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setRotationDelayTime(J)V

    .line 1737
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap8(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    .line 1739
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get32(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/ui/PreviewCover;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1741
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$14;->-getcom-oneplus-camera-ui-PreviewCover$UIStateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get32(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/ui/PreviewCover;

    move-result-object v2

    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get2()Lcom/oneplus/camera/ui/PreviewCover$Style;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ui/PreviewCover;->getPreviewCoverState(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCover$UIState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1747
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1748
    .local v0, "previewReceived":Z
    if-eqz v0, :cond_0

    .line 1749
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get33(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 1744
    .end local v0    # "previewReceived":Z
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get33(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 1759
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get11(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/FlashController;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1760
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    const-class v3, Lcom/oneplus/camera/FlashController;

    invoke-static {v1, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap10(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/FlashController;

    invoke-static {v2, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set1(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/FlashController;)Lcom/oneplus/camera/FlashController;

    .line 1761
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get11(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/FlashController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1763
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get12(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1764
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get11(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/FlashController;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->CAMERA_GALLERY_OPENING:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/FlashController;->disableFlash(Lcom/oneplus/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set2(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1768
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get38(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/ui/CameraGallery$UIState;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v1, v2, :cond_4

    .line 1770
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap56(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 1774
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-static {v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap7(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 1780
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1, v5, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap61(Lcom/oneplus/gallery/CameraGalleryImpl;ZZ)V

    .line 1783
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1784
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get33(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1785
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get32(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/ui/PreviewCover;

    move-result-object v2

    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get2()Lcom/oneplus/camera/ui/PreviewCover$Style;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ui/PreviewCover;->showPreviewCover(Lcom/oneplus/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set10(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1788
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap22(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    goto/16 :goto_0

    .line 1777
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap55(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    goto :goto_1

    .line 1721
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1741
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
