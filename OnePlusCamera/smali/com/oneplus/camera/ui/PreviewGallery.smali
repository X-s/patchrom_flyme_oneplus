.class final Lcom/oneplus/camera/ui/PreviewGallery;
.super Lcom/oneplus/camera/UIComponent;
.source "PreviewGallery.java"

# interfaces
.implements Lcom/oneplus/camera/KeyEventHandler;
.implements Lcom/oneplus/camera/ui/GalleryUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;
    }
.end annotation


# static fields
.field private static final ALPHA_MAX:F = 1.0f

.field private static final ALPHA_MIN:F = 0.0f

.field private static final DEFAULT_GALLERY:Ljava/lang/String; = "com.android.gallery3d"

.field private static final DELAY_DELETED_PHOTO:I = 0x1388

.field private static final KEY_FILES_LIST:Ljava/lang/String; = "FILES_LIST"

.field private static final KEY_SECURE_MODE:Ljava/lang/String; = "SECURE_MODE"

.field private static final MESSAGE_LAUNCH_PENDING:I = 0x3eb

.field private static final MESSAGE_REDECODE:I = 0x3ec

.field private static final MESSAGE_TRULY_DELETED:I = 0x3ed

.field private static final MESSAGE_UNDO_DELETED:I = 0x3ee

.field private static final MESSAGE_UPDATE_ADDED:I = 0x3e9

.field public static final MESSAGE_UPDATE_DELETED:I = 0x3ea

.field private static final MESSAGE_UPDATE_RESET:I = 0x3e8

.field private static final PAGE_OFFSET:I = 0x2

.field private static final REQUEST_GALLERY_URI:I = 0x64

.field private static final SECURE_MODE_MAX_SIZE:I = 0x64

.field private static final TARGET:I = 0x3


# instance fields
.field private m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

.field private m_Animator:Landroid/view/ViewPropertyAnimator;

.field private m_AnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private m_BG:Landroid/view/View;

.field private m_CameraUndoDeletion:Lcom/oneplus/camera/widget/RotateRelativeLayout;

.field private m_CaptureModeChangeCUDHandle:Lcom/oneplus/base/Handle;

.field private m_DeletedCountString:Ljava/lang/String;

.field private m_DeletedFilePath:Ljava/lang/String;

.field private m_DeletedIndex:I

.field private m_FileManager:Lcom/oneplus/camera/io/FileManager;

.field private m_FlashDisableHandle:Lcom/oneplus/base/Handle;

.field private m_Front:Z

.field private m_HandleByActivity:Z

.field private m_HasDefaultGallery:Z

.field private m_ImageHeight:I

.field private m_ImageLandHeight:I

.field private m_ImageLandWidth:I

.field private m_ImageWidth:I

.field private m_KeyEventHandle:Lcom/oneplus/base/Handle;

.field private m_LockPreviewGallery:Z

.field private m_MultiTouch:Z

.field private m_OffsetX:I

.field private m_OffsetY:I

.field private m_OrignalZ:I

.field private m_PendingUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_PhotoDeletedCountView:Landroid/widget/TextView;

.field private m_PhotoDeletedCurrent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_PhotoDeletedUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

.field private m_PreviousPosition:I

.field private m_Res:Landroid/content/res/Resources;

.field private m_ResetFromLaunch:Z

.field private m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

.field private m_UndoDeletionBar:Landroid/view/ViewGroup;

.field private m_UndoDeletionBtton:Landroid/widget/TextView;

.field private m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

.field private m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

.field private m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v2, 0x0

    .line 124
    const-string v0, "Preview Gallery"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 104
    iput-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedCountString:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PhotoDeletedCountView:Landroid/widget/TextView;

    .line 106
    iput-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBtton:Landroid/widget/TextView;

    .line 109
    iput-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PhotoDeletedUrls:Ljava/util/List;

    .line 110
    iput-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PhotoDeletedCurrent:Ljava/util/List;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ResetFromLaunch:Z

    .line 340
    new-instance v0, Lcom/oneplus/camera/ui/PreviewGallery$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/PreviewGallery$1;-><init>(Lcom/oneplus/camera/ui/PreviewGallery;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_AnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 125
    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/camera/ui/PreviewGallery;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/PreviewGallery;->resetCache(IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/io/FileManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/io/FileManager;)Lcom/oneplus/camera/io/FileManager;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p1, "x1"    # Lcom/oneplus/camera/io/FileManager;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/ui/CameraPager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/ui/CameraPager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/camera/ui/PreviewGallery;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewGallery;->lockPreviewGallery(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewGallery;->initPortrait(Lcom/oneplus/camera/CameraActivity;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p1, "x1"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewGallery;->initLandscape(Lcom/oneplus/camera/CameraActivity;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/oneplus/camera/ui/PreviewGallery;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_BG:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/oneplus/camera/ui/PreviewGallery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Front:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/oneplus/camera/ui/PreviewGallery;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->bringToBack()V

    return-void
.end method

.method static synthetic access$3300(Lcom/oneplus/camera/ui/PreviewGallery;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewGallery;->bringToFront(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/oneplus/camera/ui/PreviewGallery;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->bringToFront()V

    return-void
.end method

.method static synthetic access$3500(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/oneplus/camera/ui/PreviewGallery;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->enableCamera()V

    return-void
.end method

.method static synthetic access$3700(Lcom/oneplus/camera/ui/PreviewGallery;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->disableCamera()V

    return-void
.end method

.method static synthetic access$3800(Lcom/oneplus/camera/ui/PreviewGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I

    return v0
.end method

.method static synthetic access$3802(Lcom/oneplus/camera/ui/PreviewGallery;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I

    return p1
.end method

.method static synthetic access$3900(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/PreviewGallery;->preFetch(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V

    return-void
.end method

.method static synthetic access$4000(Lcom/oneplus/camera/ui/PreviewGallery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_LockPreviewGallery:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/oneplus/camera/ui/PreviewGallery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_HandleByActivity:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/oneplus/camera/ui/PreviewGallery;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_HandleByActivity:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/oneplus/camera/ui/PreviewGallery;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewGallery;->finishPagerScroll(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/oneplus/camera/ui/PreviewGallery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_MultiTouch:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/oneplus/camera/ui/PreviewGallery;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_MultiTouch:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/oneplus/camera/ui/PreviewGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageLandWidth:I

    return v0
.end method

.method static synthetic access$4700(Lcom/oneplus/camera/ui/PreviewGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageLandHeight:I

    return v0
.end method

.method static synthetic access$4800(Lcom/oneplus/camera/ui/PreviewGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageWidth:I

    return v0
.end method

.method static synthetic access$4900(Lcom/oneplus/camera/ui/PreviewGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageHeight:I

    return v0
.end method

.method static synthetic access$5200(Lcom/oneplus/camera/ui/PreviewGallery;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/oneplus/camera/ui/PreviewGallery;->launchGallery(Lcom/oneplus/camera/ui/PreviewGallery;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/camera/ui/PreviewGallery;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/camera/ui/PreviewGallery;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Animator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method static synthetic access$802(Lcom/oneplus/camera/ui/PreviewGallery;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Animator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$900(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private animatePhotograph(Landroid/view/View;FJII)V
    .locals 9
    .param p1, "image"    # Landroid/view/View;
    .param p2, "angel"    # F
    .param p3, "duration"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Animator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/ui/PreviewGallery$2;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/camera/ui/PreviewGallery$2;-><init>(Lcom/oneplus/camera/ui/PreviewGallery;Landroid/view/View;JII)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Animator:Landroid/view/ViewPropertyAnimator;

    .line 437
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Animator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private bringToBack()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 949
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_BG:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 950
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Front:Z

    if-nez v1, :cond_0

    .line 962
    :goto_0
    return-void

    .line 953
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    const-string v2, "bringToBack()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Front:Z

    .line 955
    sget-object v1, Lcom/oneplus/camera/ui/PreviewGallery;->PROP_IS_GALLERY_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-boolean v2, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Front:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/PreviewGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 956
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 957
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 958
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iget v2, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_OrignalZ:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 959
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/PreviewGallery;->hideUndoDeletionBar(Z)V

    .line 960
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_KeyEventHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 961
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private bringToFront()V
    .locals 1

    .prologue
    .line 975
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/PreviewGallery;->bringToFront(Z)V

    .line 976
    return-void
.end method

.method private bringToFront(Z)V
    .locals 3
    .param p1, "updateBG"    # Z

    .prologue
    .line 979
    if-eqz p1, :cond_0

    .line 980
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_BG:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 982
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Front:Z

    if-eqz v1, :cond_2

    .line 998
    :cond_1
    :goto_0
    return-void

    .line 985
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    const-string v2, "bringToFront()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Front:Z

    .line 987
    sget-object v1, Lcom/oneplus/camera/ui/PreviewGallery;->PROP_IS_GALLERY_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-boolean v2, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Front:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/PreviewGallery;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 988
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->bringToFront()V

    .line 989
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_KeyEventHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 990
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oneplus/camera/CameraActivity;->setKeyEventHandler(Lcom/oneplus/camera/KeyEventHandler;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_KeyEventHandle:Lcom/oneplus/base/Handle;

    .line 993
    :cond_3
    const/4 v0, 0x0

    .line 994
    .local v0, "m_FlashController":Lcom/oneplus/camera/FlashController;
    if-nez v0, :cond_4

    .line 995
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const-class v2, Lcom/oneplus/camera/FlashController;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    .end local v0    # "m_FlashController":Lcom/oneplus/camera/FlashController;
    check-cast v0, Lcom/oneplus/camera/FlashController;

    .line 996
    .restart local v0    # "m_FlashController":Lcom/oneplus/camera/FlashController;
    :cond_4
    if-eqz v0, :cond_1

    .line 997
    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_SCENE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/FlashController;->disableFlash(Lcom/oneplus/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private disableCamera()V
    .locals 3

    .prologue
    .line 965
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_CaptureModeChangeCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 966
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-string v1, "PreviewGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_CaptureModeChangeCUDHandle:Lcom/oneplus/base/Handle;

    .line 968
    :cond_0
    return-void
.end method

.method private enableCamera()V
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_CaptureModeChangeCUDHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_CaptureModeChangeCUDHandle:Lcom/oneplus/base/Handle;

    .line 972
    return-void
.end method

.method private finishPagerScroll(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 942
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 943
    .local v0, "finishEvent":Landroid/view/MotionEvent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 944
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v1, v0}, Lcom/oneplus/camera/ui/CameraPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 945
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v1, v0}, Lcom/oneplus/camera/ui/CameraPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 946
    return-void
.end method

.method private initLandscape(Lcom/oneplus/camera/CameraActivity;)V
    .locals 4
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 781
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraPager;

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    .line 782
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/ui/CameraPager;->setOverScrollMode(I)V

    .line 783
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/ui/CameraPager;->setOffscreenPageLimit(I)V

    .line 784
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f070052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/CameraPager;->setPageMargin(I)V

    .line 785
    new-instance v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-direct {v0, v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;-><init>(Z)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    .line 790
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/PreviewGallery;->setOnPageChangeListener(Lcom/oneplus/camera/ui/CameraPager;Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V

    .line 791
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/oneplus/camera/ui/PreviewGallery;->preFetch(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V

    .line 792
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/PreviewGallery;->setOnTouchListener(Lcom/oneplus/camera/ui/CameraPager;)V

    .line 793
    return-void
.end method

.method private initPager(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    const-class v1, Lcom/oneplus/camera/io/FileManager;

    new-instance v2, Lcom/oneplus/camera/ui/PreviewGallery$8;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/camera/ui/PreviewGallery$8;-><init>(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/CameraActivity;)V

    invoke-static {v0, v1, p0, v2}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 763
    return-void
.end method

.method private initPortrait(Lcom/oneplus/camera/CameraActivity;)V
    .locals 4
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 766
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraPager;

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    .line 767
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/ui/CameraPager;->setOverScrollMode(I)V

    .line 768
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/ui/CameraPager;->setOffscreenPageLimit(I)V

    .line 769
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Res:Landroid/content/res/Resources;

    const v2, 0x7f070052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/CameraPager;->setPageMargin(I)V

    .line 770
    new-instance v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-direct {v0, v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;-><init>(Z)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    .line 775
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/PreviewGallery;->setOnPageChangeListener(Lcom/oneplus/camera/ui/CameraPager;Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V

    .line 776
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1}, Lcom/oneplus/camera/ui/PreviewGallery;->preFetch(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V

    .line 777
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/PreviewGallery;->setOnTouchListener(Lcom/oneplus/camera/ui/CameraPager;)V

    .line 778
    return-void
.end method

.method private static launchGallery(Lcom/oneplus/camera/ui/PreviewGallery;Ljava/lang/String;Z)V
    .locals 11
    .param p0, "gallery"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "pending"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1001
    iget-object v6, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    invoke-interface {v6, p1}, Lcom/oneplus/camera/io/FileManager;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1002
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    if-eqz p2, :cond_0

    if-nez v5, :cond_0

    .line 1004
    iget-object v6, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PendingUris:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    :goto_0
    return-void

    .line 1007
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1008
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1010
    iget-object v6, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    if-nez v6, :cond_1

    .line 1011
    const-class v6, Lcom/oneplus/camera/ui/ToastManager;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/ui/PreviewGallery;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/ui/ToastManager;

    iput-object v6, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    .line 1012
    :cond_1
    iget-object v6, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    if-eqz v6, :cond_2

    .line 1014
    iget-object v6, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ToastManager:Lcom/oneplus/camera/ui/ToastManager;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    const v8, 0x7f09006d

    invoke-virtual {v7, v8}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v9}, Lcom/oneplus/camera/ui/ToastManager;->showToast(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    .line 1015
    iput-boolean v10, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ResetFromLaunch:Z

    .line 1017
    :cond_2
    iget-object v6, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    invoke-interface {v6}, Lcom/oneplus/camera/io/FileManager;->scanFiles()V

    goto :goto_0

    .line 1021
    :cond_3
    iget-object v6, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PendingUris:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1022
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1023
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1025
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    iget-boolean v6, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_HasDefaultGallery:Z

    if-eqz v6, :cond_4

    .line 1027
    const-string v6, "com.android.gallery3d"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1029
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1030
    .local v1, "bData":Landroid/os/Bundle;
    const-string v6, "SECURE_MODE"

    invoke-virtual {v1, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1031
    const-string v7, "FILES_LIST"

    iget-object v6, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;
    invoke-static {v6}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$400(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/io/Serializable;

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1032
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1035
    .end local v1    # "bData":Landroid/os/Bundle;
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1036
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    const/high16 v6, 0x10000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1038
    const/16 v6, 0x64

    :try_start_0
    invoke-virtual {v0, v4, v6}, Lcom/oneplus/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1039
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/oneplus/camera/CameraActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1040
    :catch_0
    move-exception v2

    .line 1041
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startActivityForResult - Fail to launch gallery, file path :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private lockPreviewGallery(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 558
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_LockPreviewGallery:Z

    .line 559
    return-void
.end method

.method private preFetch(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V
    .locals 4
    .param p1, "adapter"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;
    .param p2, "position"    # I
    .param p3, "clean"    # Z

    .prologue
    .line 796
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    invoke-interface {v3, p2}, Lcom/oneplus/camera/io/FileManager;->setCurrent(I)V

    .line 798
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_3

    .line 799
    if-nez v0, :cond_1

    .line 800
    if-eqz p2, :cond_0

    .line 801
    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->setPageData(IZ)V
    invoke-static {p1, p2, p3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$500(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V

    .line 798
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 804
    :cond_1
    add-int v2, p2, v0

    .line 805
    .local v2, "right":I
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 806
    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->setPageData(IZ)V
    invoke-static {p1, v2, p3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$500(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V

    .line 808
    :cond_2
    sub-int v1, p2, v0

    .line 809
    .local v1, "left":I
    if-lez v1, :cond_0

    .line 810
    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->setPageData(IZ)V
    invoke-static {p1, v1, p3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$500(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V

    goto :goto_1

    .line 814
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_3
    return-void
.end method

.method private resetCache(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "clean"    # Z

    .prologue
    .line 368
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Map:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$700(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 378
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Map:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$700(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 379
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/camera/ui/PreviewGallery;->preFetch(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V

    goto :goto_0

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/camera/ui/PreviewGallery;->preFetch(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V

    goto :goto_0
.end method

.method private setOnPageChangeListener(Lcom/oneplus/camera/ui/CameraPager;Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V
    .locals 1
    .param p1, "pager"    # Lcom/oneplus/camera/ui/CameraPager;
    .param p2, "adapter"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    .prologue
    .line 817
    new-instance v0, Lcom/oneplus/camera/ui/PreviewGallery$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/oneplus/camera/ui/PreviewGallery$9;-><init>(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Lcom/oneplus/camera/ui/CameraPager;)V

    invoke-interface {p1, v0}, Lcom/oneplus/camera/ui/CameraPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 864
    return-void
.end method

.method private setOnTouchListener(Lcom/oneplus/camera/ui/CameraPager;)V
    .locals 1
    .param p1, "pager"    # Lcom/oneplus/camera/ui/CameraPager;

    .prologue
    .line 868
    new-instance v0, Lcom/oneplus/camera/ui/PreviewGallery$10;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/ui/PreviewGallery$10;-><init>(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/ui/CameraPager;)V

    invoke-interface {p1, v0}, Lcom/oneplus/camera/ui/CameraPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 939
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    if-nez v3, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 335
    invoke-super/range {p0 .. p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 134
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    move-object v14, v3

    check-cast v14, Ljava/io/File;

    .line 136
    .local v14, "file":Ljava/io/File;
    sget-object v3, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v6

    if-eq v3, v6, :cond_2

    sget-object v3, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v6

    if-ne v3, v6, :cond_4

    .line 137
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v3}, Lcom/oneplus/camera/ui/CameraPager;->getCurrentItem()I

    move-result v11

    .line 142
    .local v11, "current":I
    :goto_1
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedIndex:I

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/oneplus/camera/ui/CameraPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/oneplus/camera/ui/CameraPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->deleteFile(Ljava/io/File;)V
    invoke-static {v3, v14}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$000(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Ljava/io/File;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->deleteFile(Ljava/io/File;)V
    invoke-static {v3, v14}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$000(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Ljava/io/File;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-interface {v3, v6}, Lcom/oneplus/camera/ui/CameraPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-interface {v3, v6}, Lcom/oneplus/camera/ui/CameraPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    const/4 v6, 0x0

    invoke-interface {v3, v11, v6}, Lcom/oneplus/camera/ui/CameraPager;->setCurrentItem(IZ)V

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    const/4 v6, 0x0

    invoke-interface {v3, v11, v6}, Lcom/oneplus/camera/ui/CameraPager;->setCurrentItem(IZ)V

    .line 153
    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->getCount()I

    move-result v3

    const/4 v6, 0x1

    if-gt v3, v6, :cond_5

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    const-string v6, "handleMessage() - All items are deleted"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->bringToBack()V

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->enableCamera()V

    .line 168
    :cond_3
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/oneplus/camera/ui/PreviewGallery;->resetCache(IZ)V

    .line 169
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedFilePath:Ljava/lang/String;

    .line 170
    const/16 v4, 0x3ed

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x1388

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    goto/16 :goto_0

    .line 139
    .end local v11    # "current":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v3}, Lcom/oneplus/camera/ui/CameraPager;->getCurrentItem()I

    move-result v11

    .restart local v11    # "current":I
    goto/16 :goto_1

    .line 158
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PhotoDeletedCountView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedCountString:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f070091

    :goto_3
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 161
    .local v21, "margin":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_CameraUndoDeletion:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Rotation;

    invoke-virtual {v6, v3}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->setRotation(Lcom/oneplus/base/Rotation;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v21

    move/from16 v1, v21

    invoke-virtual {v3, v0, v6, v1, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2

    .line 160
    .end local v21    # "margin":I
    :cond_6
    const v3, 0x7f070092

    goto :goto_3

    .line 174
    .end local v11    # "current":I
    .end local v14    # "file":Ljava/io/File;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 177
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/oneplus/camera/ui/CameraPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/oneplus/camera/ui/CameraPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    move-object/from16 v0, p0

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->initialize(Lcom/oneplus/camera/ui/PreviewGallery;)V
    invoke-static {v3, v0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$100(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Lcom/oneplus/camera/ui/PreviewGallery;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    move-object/from16 v0, p0

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->initialize(Lcom/oneplus/camera/ui/PreviewGallery;)V
    invoke-static {v3, v0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$100(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Lcom/oneplus/camera/ui/PreviewGallery;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-interface {v3, v6}, Lcom/oneplus/camera/ui/CameraPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-interface {v3, v6}, Lcom/oneplus/camera/ui/CameraPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 184
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ResetFromLaunch:Z

    if-nez v3, :cond_a

    .line 186
    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lcom/oneplus/camera/ui/PreviewGallery;->resetCache(IZ)V

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    if-eqz v3, :cond_8

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Lcom/oneplus/camera/ui/CameraPager;->setCurrentItem(IZ)V

    .line 190
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    if-eqz v3, :cond_9

    .line 191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Lcom/oneplus/camera/ui/CameraPager;->setCurrentItem(IZ)V

    .line 193
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->bringToBack()V

    .line 195
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->enableCamera()V

    goto/16 :goto_0

    .line 199
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-virtual {v6}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 200
    .restart local v11    # "current":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    const/4 v6, 0x0

    invoke-interface {v3, v11, v6}, Lcom/oneplus/camera/ui/CameraPager;->setCurrentItem(IZ)V

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    const/4 v6, 0x0

    invoke-interface {v3, v11, v6}, Lcom/oneplus/camera/ui/CameraPager;->setCurrentItem(IZ)V

    .line 202
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/oneplus/camera/ui/PreviewGallery;->resetCache(IZ)V

    .line 203
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ResetFromLaunch:Z

    .line 204
    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->getCount()I

    move-result v3

    const/4 v6, 0x1

    if-gt v3, v6, :cond_0

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->bringToBack()V

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->enableCamera()V

    goto/16 :goto_0

    .line 213
    .end local v11    # "current":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    const-string v6, "MESSAGE_UPDATE_ADDED"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/camera/media/MediaEventArgs;

    move-object v13, v3

    check-cast v13, Lcom/oneplus/camera/media/MediaEventArgs;

    .line 215
    .local v13, "e":Lcom/oneplus/camera/media/MediaEventArgs;
    invoke-virtual {v13}, Lcom/oneplus/camera/media/MediaEventArgs;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 216
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-nez v10, :cond_b

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    const-string v6, "bitmap null "

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :cond_b
    invoke-virtual {v13}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v22

    .line 221
    .local v22, "path":Ljava/lang/String;
    if-nez v22, :cond_c

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    const-string v6, "path null "

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :cond_c
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .restart local v14    # "file":Ljava/io/File;
    const/16 v12, 0x64

    .line 228
    .local v12, "duration":I
    const/high16 v5, -0x3f600000    # -5.0f

    .line 229
    .local v5, "angel":F
    sget-object v3, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v6

    if-eq v3, v6, :cond_d

    sget-object v3, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v6

    if-ne v3, v6, :cond_e

    .line 230
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v3}, Lcom/oneplus/camera/ui/CameraPager;->getCurrentItem()I

    move-result v11

    .line 231
    .restart local v11    # "current":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    const/4 v6, 0x0

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->addFile(Ljava/io/File;I)V
    invoke-static {v3, v14, v6}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$200(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Ljava/io/File;I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    const/4 v6, 0x0

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->addFile(Ljava/io/File;I)V
    invoke-static {v3, v14, v6}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$200(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Ljava/io/File;I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;
    invoke-static {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$300(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v6, 0x7f0b0076

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ui/ScaleImageView;

    .line 235
    .local v4, "image":Lcom/oneplus/camera/ui/ScaleImageView;
    const/4 v3, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v4, v10, v0, v1, v3}, Lcom/oneplus/camera/ui/ScaleImageView;->setPhoto(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/oneplus/camera/ui/PreviewGallery;Z)Z

    .line 236
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_OffsetX:I

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Lcom/oneplus/camera/ui/ScaleImageView;->scrollTo(II)V

    .line 237
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/oneplus/camera/ui/ScaleImageView;->setPivotX(F)V

    .line 238
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageHeight:I

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Lcom/oneplus/camera/ui/ScaleImageView;->setPivotY(F)V

    .line 240
    const-wide/16 v6, 0x64

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageHeight:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/oneplus/camera/ui/PreviewGallery;->animatePhotograph(Landroid/view/View;FJII)V

    goto/16 :goto_0

    .line 242
    .end local v4    # "image":Lcom/oneplus/camera/ui/ScaleImageView;
    .end local v11    # "current":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v3}, Lcom/oneplus/camera/ui/CameraPager;->getCurrentItem()I

    move-result v11

    .line 243
    .restart local v11    # "current":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    const/4 v6, 0x0

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->addFile(Ljava/io/File;I)V
    invoke-static {v3, v14, v6}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$200(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Ljava/io/File;I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    const/4 v6, 0x0

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->addFile(Ljava/io/File;I)V
    invoke-static {v3, v14, v6}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$200(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Ljava/io/File;I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;
    invoke-static {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$300(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v6, 0x7f0b0076

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ui/ScaleImageView;

    .line 247
    .restart local v4    # "image":Lcom/oneplus/camera/ui/ScaleImageView;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .line 248
    .local v24, "width":I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 249
    .local v17, "height":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageLandHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageLandWidth:I

    int-to-float v6, v6

    move/from16 v0, v24

    int-to-float v7, v0

    move/from16 v0, v17

    int-to-float v8, v0

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_OffsetY:I

    .line 251
    const/4 v3, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v4, v10, v0, v1, v3}, Lcom/oneplus/camera/ui/ScaleImageView;->setPhoto(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/oneplus/camera/ui/PreviewGallery;Z)Z

    .line 252
    sget-object v3, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v6

    if-ne v3, v6, :cond_f

    .line 253
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_OffsetY:I

    invoke-virtual {v4, v3, v6}, Lcom/oneplus/camera/ui/ScaleImageView;->scrollTo(II)V

    .line 254
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/oneplus/camera/ui/ScaleImageView;->setPivotX(F)V

    .line 255
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/oneplus/camera/ui/ScaleImageView;->setPivotY(F)V

    .line 256
    const/high16 v5, -0x3ee00000    # -10.0f

    .line 264
    :goto_4
    const-wide/16 v6, 0x64

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageLandWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageLandHeight:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/oneplus/camera/ui/PreviewGallery;->animatePhotograph(Landroid/view/View;FJII)V

    goto/16 :goto_0

    .line 258
    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_OffsetY:I

    neg-int v6, v6

    invoke-virtual {v4, v3, v6}, Lcom/oneplus/camera/ui/ScaleImageView;->scrollTo(II)V

    .line 259
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/oneplus/camera/ui/ScaleImageView;->setPivotX(F)V

    .line 260
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageLandHeight:I

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Lcom/oneplus/camera/ui/ScaleImageView;->setPivotY(F)V

    .line 261
    const/high16 v5, 0x41200000    # 10.0f

    goto :goto_4

    .line 269
    .end local v4    # "image":Lcom/oneplus/camera/ui/ScaleImageView;
    .end local v5    # "angel":F
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "current":I
    .end local v12    # "duration":I
    .end local v13    # "e":Lcom/oneplus/camera/media/MediaEventArgs;
    .end local v14    # "file":Ljava/io/File;
    .end local v17    # "height":I
    .end local v22    # "path":Ljava/lang/String;
    .end local v24    # "width":I
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/camera/media/MediaEventArgs;

    move-object v13, v3

    check-cast v13, Lcom/oneplus/camera/media/MediaEventArgs;

    .line 270
    .restart local v13    # "e":Lcom/oneplus/camera/media/MediaEventArgs;
    const/16 v23, 0x0

    .line 271
    .local v23, "result":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PendingUris:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 272
    .restart local v22    # "path":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 273
    const/16 v23, 0x1

    .line 277
    .end local v22    # "path":Ljava/lang/String;
    :cond_11
    if-eqz v23, :cond_0

    .line 278
    invoke-virtual {v13}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v6}, Lcom/oneplus/camera/ui/PreviewGallery;->launchGallery(Lcom/oneplus/camera/ui/PreviewGallery;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 283
    .end local v13    # "e":Lcom/oneplus/camera/media/MediaEventArgs;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v23    # "result":Z
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/camera/media/MediaEventArgs;

    move-object v13, v3

    check-cast v13, Lcom/oneplus/camera/media/MediaEventArgs;

    .line 286
    .restart local v13    # "e":Lcom/oneplus/camera/media/MediaEventArgs;
    sget-object v3, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v6

    if-eq v3, v6, :cond_12

    sget-object v3, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v6

    if-ne v3, v6, :cond_13

    .line 287
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    .line 291
    .local v2, "adatper":Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;
    :goto_5
    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;
    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$400(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Ljava/util/List;

    move-result-object v16

    .line 292
    .local v16, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    .line 293
    .local v20, "len":I
    const/4 v14, 0x0

    .line 294
    .restart local v14    # "file":Ljava/io/File;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 295
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "file":Ljava/io/File;
    check-cast v14, Ljava/io/File;

    .line 296
    .restart local v14    # "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 297
    add-int/lit8 v3, v18, 0x1

    const/4 v6, 0x0

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->setPageData(IZ)V
    invoke-static {v2, v3, v6}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$500(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "redecode success position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    .end local v2    # "adatper":Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;
    .end local v14    # "file":Ljava/io/File;
    .end local v16    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v18    # "i":I
    .end local v20    # "len":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    .restart local v2    # "adatper":Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;
    goto :goto_5

    .line 294
    .restart local v14    # "file":Ljava/io/File;
    .restart local v16    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v18    # "i":I
    .restart local v20    # "len":I
    :cond_14
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 305
    .end local v2    # "adatper":Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;
    .end local v13    # "e":Lcom/oneplus/camera/media/MediaEventArgs;
    .end local v14    # "file":Ljava/io/File;
    .end local v16    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v18    # "i":I
    .end local v20    # "len":I
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 306
    .local v15, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    invoke-interface {v3, v15}, Lcom/oneplus/camera/io/FileManager;->deleteFile(Ljava/lang/String;)V

    .line 307
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedFilePath:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedFilePath:Ljava/lang/String;

    .line 310
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedIndex:I

    .line 311
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/ui/PreviewGallery;->hideUndoDeletionBar(Z)V

    goto/16 :goto_0

    .line 316
    .end local v15    # "filePath":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;
    invoke-static {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$400(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedIndex:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;
    invoke-static {v6}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$400(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-gt v3, v6, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedIndex:I

    if-ltz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedFilePath:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 319
    const/16 v3, 0x3ed

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v6}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)V

    .line 320
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedFilePath:Ljava/lang/String;

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .restart local v14    # "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedIndex:I

    add-int/lit8 v6, v6, -0x1

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->addFile(Ljava/io/File;I)V
    invoke-static {v3, v14, v6}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$200(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Ljava/io/File;I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedIndex:I

    add-int/lit8 v6, v6, -0x1

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->addFile(Ljava/io/File;I)V
    invoke-static {v3, v14, v6}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$200(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Ljava/io/File;I)V

    .line 324
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedIndex:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-virtual {v6}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedIndex:I

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedIndex:I

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Lcom/oneplus/camera/ui/CameraPager;->setCurrentItem(IZ)V

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedIndex:I

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Lcom/oneplus/camera/ui/CameraPager;->setCurrentItem(IZ)V

    .line 328
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedIndex:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lcom/oneplus/camera/ui/PreviewGallery;->resetCache(IZ)V

    .line 329
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedFilePath:Ljava/lang/String;

    .line 330
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedIndex:I

    .line 331
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/ui/PreviewGallery;->hideUndoDeletionBar(Z)V

    goto/16 :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public hideUndoDeletionBar(Z)V
    .locals 4
    .param p1, "withAnimation"    # Z

    .prologue
    .line 351
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 352
    if-eqz p1, :cond_2

    .line 353
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_AnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 358
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 360
    const/16 v0, 0x3ed

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedFilePath:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedFilePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/io/FileManager;->deleteFile(Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedFilePath:Ljava/lang/String;

    .line 363
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedIndex:I

    .line 365
    :cond_1
    return-void

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDeinitialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 563
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/CameraPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/CameraPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v0}, Lcom/oneplus/camera/ui/CameraPager;->removeAllViews()V

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    if-eqz v0, :cond_3

    .line 570
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v0}, Lcom/oneplus/camera/ui/CameraPager;->removeAllViews()V

    .line 571
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    if-eqz v0, :cond_4

    .line 572
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->deinitialize()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$1500(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V

    .line 573
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    if-eqz v0, :cond_5

    .line 574
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->deinitialize()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$1500(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V

    .line 575
    :cond_5
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 576
    return-void
.end method

.method protected onInitialize()V
    .locals 9

    .prologue
    const v7, 0x7f0b006e

    const/4 v8, 0x1

    .line 444
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 447
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 448
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v0, v7}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iput-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    .line 449
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v6, 0x7f0b006f

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_BG:Landroid/view/View;

    .line 450
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v6, 0x7f0b0072

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iput-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_CameraUndoDeletion:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    .line 451
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Res:Landroid/content/res/Resources;

    .line 452
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v4

    .line 453
    .local v4, "size":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v4}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageWidth:I

    .line 454
    invoke-virtual {v4}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageHeight:I

    .line 455
    invoke-virtual {v4}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageLandWidth:I

    .line 456
    invoke-virtual {v4}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageLandHeight:I

    .line 457
    invoke-virtual {v4}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_OffsetX:I

    .line 458
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PendingUris:Ljava/util/List;

    .line 460
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v6, 0x7f0b0073

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    .line 461
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 462
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    const v6, 0x7f09006c

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_DeletedCountString:Ljava/lang/String;

    .line 463
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v6, 0x7f0b0074

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PhotoDeletedCountView:Landroid/widget/TextView;

    .line 464
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v6, 0x7f0b0075

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBtton:Landroid/widget/TextView;

    .line 465
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBtton:Landroid/widget/TextView;

    new-instance v6, Lcom/oneplus/camera/ui/PreviewGallery$3;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/PreviewGallery$3;-><init>(Lcom/oneplus/camera/ui/PreviewGallery;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v5}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 472
    .local v2, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 473
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 474
    iput v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_OrignalZ:I

    .line 472
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oneplus/camera/ui/PreviewGallery;->initPager(Lcom/oneplus/camera/CameraActivity;)V

    .line 480
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/oneplus/camera/ui/PreviewGallery$4;

    invoke-direct {v6, p0, v0}, Lcom/oneplus/camera/ui/PreviewGallery$4;-><init>(Lcom/oneplus/camera/ui/PreviewGallery;Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 504
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/oneplus/camera/ui/PreviewGallery$5;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/PreviewGallery$5;-><init>(Lcom/oneplus/camera/ui/PreviewGallery;)V

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 510
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/oneplus/camera/ui/PreviewGallery$6;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/PreviewGallery$6;-><init>(Lcom/oneplus/camera/ui/PreviewGallery;)V

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 519
    const-class v5, Lcom/oneplus/camera/ui/CaptureButtons;

    new-instance v6, Lcom/oneplus/camera/ui/PreviewGallery$7;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/PreviewGallery$7;-><init>(Lcom/oneplus/camera/ui/PreviewGallery;)V

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/ui/PreviewGallery;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 547
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v5}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.android.gallery3d"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x10000

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 549
    .local v3, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 550
    iput-boolean v8, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_HasDefaultGallery:Z

    .line 552
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 583
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 584
    :cond_0
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    .line 586
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 594
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    .line 595
    .local v0, "result":Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 597
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v1}, Lcom/oneplus/camera/ui/CameraPager;->getCurrentItem()I

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    .line 600
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->resetPages()V
    invoke-static {v1}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$1600(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V

    .line 601
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/CameraPager;->setCurrentItem(IZ)V

    .line 603
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v1}, Lcom/oneplus/camera/ui/CameraPager;->getCurrentItem()I

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    .line 606
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->resetPages()V
    invoke-static {v1}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$1600(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V

    .line 607
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/CameraPager;->setCurrentItem(IZ)V

    .line 613
    :cond_1
    :goto_0
    return-object v0

    .line 610
    :cond_2
    const/16 v1, 0x19

    if-eq p1, v1, :cond_3

    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 612
    :cond_3
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    goto :goto_0
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 8
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const v7, 0x7f0b0076

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 624
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 626
    sget-object v3, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    if-eq v3, p2, :cond_0

    sget-object v3, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    if-ne v3, p2, :cond_5

    .line 627
    :cond_0
    sget-object v3, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    if-eq v3, p1, :cond_1

    sget-object v3, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    if-ne v3, p1, :cond_3

    .line 628
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/ui/CameraPager;->setVisibility(I)V

    .line 629
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v3}, Lcom/oneplus/camera/ui/CameraPager;->getCurrentItem()I

    move-result v3

    iput v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I

    .line 630
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    iget v4, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I

    invoke-direct {p0, v3, v4, v6}, Lcom/oneplus/camera/ui/PreviewGallery;->preFetch(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V

    .line 631
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v3, v5}, Lcom/oneplus/camera/ui/CameraPager;->setVisibility(I)V

    .line 632
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    iget v4, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I

    invoke-interface {v3, v4, v6}, Lcom/oneplus/camera/ui/CameraPager;->setCurrentItem(IZ)V

    .line 634
    iget v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I

    add-int/lit8 v0, v3, -0x2

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I

    if-gt v0, v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;
    invoke-static {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$300(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 635
    if-gez v0, :cond_2

    .line 634
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 636
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;
    invoke-static {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$300(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/ScaleImageView;

    .line 637
    .local v1, "image":Lcom/oneplus/camera/ui/ScaleImageView;
    invoke-virtual {v1}, Lcom/oneplus/camera/ui/ScaleImageView;->cancelDeocdingFullSizeImage()V

    goto :goto_1

    .line 642
    .end local v0    # "i":I
    .end local v1    # "image":Lcom/oneplus/camera/ui/ScaleImageView;
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->resetPages()V
    invoke-static {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$1600(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V

    .line 643
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviewGallery:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v3, p2}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->setRotation(Lcom/oneplus/base/Rotation;)V

    .line 665
    :goto_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 666
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_a

    const v3, 0x7f070091

    :goto_3
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 667
    .local v2, "margin":I
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_CameraUndoDeletion:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v3, p2}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->setRotation(Lcom/oneplus/base/Rotation;)V

    .line 668
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v5, v2, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 670
    .end local v2    # "margin":I
    :cond_4
    return-void

    .line 645
    :cond_5
    sget-object v3, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    if-eq v3, p1, :cond_6

    sget-object v3, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    if-ne v3, p1, :cond_8

    .line 646
    :cond_6
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/ui/CameraPager;->setVisibility(I)V

    .line 647
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v3, v5}, Lcom/oneplus/camera/ui/CameraPager;->setVisibility(I)V

    .line 648
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v3}, Lcom/oneplus/camera/ui/CameraPager;->getCurrentItem()I

    move-result v3

    iput v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I

    .line 649
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    iget v4, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I

    invoke-interface {v3, v4}, Lcom/oneplus/camera/ui/CameraPager;->setCurrentItem(I)V

    .line 650
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    iget v4, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I

    invoke-direct {p0, v3, v4, v6}, Lcom/oneplus/camera/ui/PreviewGallery;->preFetch(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V

    .line 652
    iget v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I

    add-int/lit8 v0, v3, -0x2

    .restart local v0    # "i":I
    :goto_4
    iget v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_PreviousPosition:I

    if-gt v0, v3, :cond_8

    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;
    invoke-static {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$300(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 653
    if-gez v0, :cond_7

    .line 652
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 654
    :cond_7
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_Adapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;
    invoke-static {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$300(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/ScaleImageView;

    .line 655
    .restart local v1    # "image":Lcom/oneplus/camera/ui/ScaleImageView;
    invoke-virtual {v1}, Lcom/oneplus/camera/ui/ScaleImageView;->cancelDeocdingFullSizeImage()V

    goto :goto_5

    .line 658
    .end local v0    # "i":I
    .end local v1    # "image":Lcom/oneplus/camera/ui/ScaleImageView;
    :cond_8
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->resetPages()V
    invoke-static {v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$1600(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V

    .line 659
    sget-object v3, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    if-ne v3, p2, :cond_9

    .line 660
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    const/4 v4, 0x0

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->rotatePages(F)V
    invoke-static {v3, v4}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$1700(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;F)V

    goto/16 :goto_2

    .line 662
    :cond_9
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalAdapter:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    const/high16 v4, 0x43340000    # 180.0f

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->rotatePages(F)V
    invoke-static {v3, v4}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$1700(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;F)V

    goto/16 :goto_2

    .line 666
    :cond_a
    const v3, 0x7f070092

    goto/16 :goto_3
.end method

.method public setSwipeable(Z)V
    .locals 1
    .param p1, "swipeable"    # Z

    .prologue
    .line 673
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v0, p1}, Lcom/oneplus/camera/ui/CameraPager;->setSwipeable(Z)V

    .line 674
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;

    invoke-interface {v0, p1}, Lcom/oneplus/camera/ui/CameraPager;->setSwipeable(Z)V

    .line 675
    return-void
.end method
