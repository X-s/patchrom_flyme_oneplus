.class Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;
.super Lcom/oneplus/widget/ScaleImageView$GestureCallback;
.source "CameraGalleryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I

.field private static final synthetic -com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$base$Rotation:[I

.field final synthetic $SWITCH_TABLE$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

.field final synthetic this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;


# direct methods
.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

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

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->EMPTY_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

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

.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTapUp(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1139
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1160
    return v4

    .line 1144
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap4(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap7(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 1147
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, v3, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap61(Lcom/oneplus/gallery/CameraGalleryImpl;ZZ)V

    .line 1151
    :goto_0
    return v3

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, p1, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap59(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;Z)V

    goto :goto_0

    .line 1153
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->isStretchedImage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1155
    :cond_1
    :goto_1
    return v4

    .line 1154
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap7(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_1

    .line 1157
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap7(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 1158
    return v4

    .line 1139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onFling(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e1"    # Landroid/view/MotionEvent;
    .param p3, "e2"    # Landroid/view/MotionEvent;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap6(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onGestureEnd(Lcom/oneplus/widget/ScaleImageView;)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-wrap0(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 1108
    return-void
.end method

.method public onGestureStart(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1117
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap11(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get3(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onGestureStart() - Disable gesture: "

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-virtual {v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1120
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set2(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z

    .line 1121
    return-void

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set1(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F

    .line 1125
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set5(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F

    .line 1126
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set2(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z

    .line 1127
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set3(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z

    .line 1128
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set4(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1129
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set0(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z

    .line 1132
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v0, v1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap46(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;)V

    .line 1114
    return-void
.end method

.method public onScale(Lcom/oneplus/widget/ScaleImageView;FFF)Z
    .locals 6
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "factor"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    .line 1168
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-get1(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    return v3

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get17(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    return v3

    .line 1176
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap4(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1177
    return v3

    .line 1180
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set3(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z

    .line 1181
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-get3(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set5(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F

    .line 1184
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1217
    return v5

    .line 1189
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-get3(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 1191
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set0(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z

    .line 1192
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v0, v1, :cond_3

    .line 1193
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap7(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 1201
    :goto_0
    return v5

    .line 1196
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->isStretchedImage()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1197
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap7(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_0

    .line 1199
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap7(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_0

    .line 1203
    :cond_5
    return v3

    .line 1205
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-get3(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    .line 1207
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v0, v1, :cond_6

    .line 1215
    :cond_6
    :goto_1
    return v5

    .line 1210
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-get3(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_6

    .line 1212
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-eq v0, v1, :cond_6

    .line 1213
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap7(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_1

    .line 1184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onScroll(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e1"    # Landroid/view/MotionEvent;
    .param p3, "e2"    # Landroid/view/MotionEvent;
    .param p4, "distanceX"    # F
    .param p5, "distanceY"    # F

    .prologue
    const/4 v8, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1225
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-get1(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1226
    return v4

    .line 1229
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get17(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1230
    return v4

    .line 1233
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get5(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1234
    return v4

    .line 1237
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-get2(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1239
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 1240
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set4(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1244
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-get2(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1245
    return v4

    .line 1242
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set4(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 1248
    :cond_5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v5, :cond_6

    .line 1251
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set4(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1252
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1253
    return v4

    .line 1257
    :cond_6
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v2

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1299
    return v4

    .line 1261
    :pswitch_0
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v2, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap9(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 1278
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-get0(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_7

    .line 1279
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v1, v6}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set1(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F

    .line 1283
    :cond_7
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get10(Lcom/oneplus/gallery/CameraGalleryImpl;)I

    move-result v1

    if-eq v1, v8, :cond_8

    .line 1285
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-get0(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    .line 1286
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1, v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap60(Lcom/oneplus/gallery/CameraGalleryImpl;I)V

    .line 1293
    :cond_8
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-get0(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1294
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/ScreenSize;

    .line 1295
    .local v0, "screenSize":Lcom/oneplus/base/ScreenSize;
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-get0(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap9(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v1

    :goto_2
    int-to-float v1, v1

    div-float v1, v3, v1

    sub-float v1, v7, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1296
    return v5

    .line 1264
    .end local v0    # "screenSize":Lcom/oneplus/base/ScreenSize;
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set1(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F

    goto/16 :goto_1

    .line 1267
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set1(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F

    goto/16 :goto_1

    .line 1270
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set1(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F

    goto/16 :goto_1

    .line 1273
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-set1(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F

    goto/16 :goto_1

    .line 1289
    :cond_9
    return v5

    .line 1295
    .restart local v0    # "screenSize":Lcom/oneplus/base/ScreenSize;
    :cond_a
    invoke-virtual {v0}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v1

    goto :goto_2

    .line 1257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1261
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onSingleTapUp(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1307
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v3

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 1326
    return v1

    .line 1312
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap4(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap7(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 1315
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, v2, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap61(Lcom/oneplus/gallery/CameraGalleryImpl;ZZ)V

    .line 1319
    :goto_0
    return v2

    .line 1318
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, p1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap59(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;Z)V

    goto :goto_0

    .line 1322
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get39(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    move-result-object v0

    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    if-eq v0, v3, :cond_1

    .line 1323
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get19(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v3, v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap61(Lcom/oneplus/gallery/CameraGalleryImpl;ZZ)V

    .line 1324
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 1323
    goto :goto_1

    .line 1307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
