.class Lcom/oneplus/camera/ui/ReviewScreenImpl$3;
.super Ljava/lang/Object;
.source "ReviewScreenImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ReviewScreenImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

.field final synthetic val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

.field final synthetic val$cameraThread:Lcom/oneplus/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$cameraThread:Lcom/oneplus/camera/CameraThread;

    iput-object p3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$cameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$1;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 427
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$cameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$2;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 447
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$cameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$3$3;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 462
    return-void
.end method
