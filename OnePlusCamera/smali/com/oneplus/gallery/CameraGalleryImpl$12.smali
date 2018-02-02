.class Lcom/oneplus/gallery/CameraGalleryImpl$12;
.super Lcom/oneplus/widget/FilmstripView$Adapter;
.source "CameraGalleryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

.field private static final synthetic -com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

.field final synthetic $SWITCH_TABLE$com$oneplus$camera$ui$CameraGallery$UIState:[I

.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method private static synthetic -getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->values()[Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->EMPTY_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->-com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->-com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I

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

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->DRAGGING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->-com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I

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

.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 902
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    return v0
.end method

.method public getItemWidth(II)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "filmstripWidth"    # I

    .prologue
    .line 915
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$12;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 954
    :pswitch_0
    return p2

    .line 915
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public prepareItemView(ILandroid/view/ViewGroup;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0x2710

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 960
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get2(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "prepareItemView() - Position: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 963
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap15(Lcom/oneplus/gallery/CameraGalleryImpl;I)I

    move-result v2

    .line 964
    .local v2, "mediaListIndex":I
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 967
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap12(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    move-result-object v0

    .line 970
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 971
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 974
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/widget/ScaleImageView;->setTag(Ljava/lang/Object;)V

    .line 977
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get36(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/PictureProcessService;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get36(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/PictureProcessService;

    move-result-object v3

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/oneplus/camera/PictureProcessService;->isPictureProcessing(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 978
    invoke-virtual {v0, v7}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->setProcessingBarVisibility(Z)V

    .line 985
    :goto_0
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get15(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 988
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 989
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get20(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setScrollingState(Z)V

    .line 990
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$12;->-getcom-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues()[I

    move-result-object v4

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 998
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 999
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 958
    :cond_0
    :goto_1
    return-void

    .line 980
    :cond_1
    invoke-virtual {v0, v6}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->setProcessingBarVisibility(Z)V

    goto :goto_0

    .line 995
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3, v1, v7, v6}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap22(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;ZZ)V

    goto :goto_1

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public releaseItemView(ILandroid/view/ViewGroup;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x2710

    .line 1008
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 1009
    .local v0, "reusedItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    if-eqz v0, :cond_0

    .line 1011
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap52(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 1012
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get15(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1016
    :cond_0
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1019
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1020
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$12;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1023
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/widget/FilmstripView$Adapter;->releaseItemView(ILandroid/view/ViewGroup;)V

    .line 1005
    return-void
.end method
