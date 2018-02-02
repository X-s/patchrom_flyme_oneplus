.class Lcom/oneplus/camera/CameraActivity$6;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->bindToCameraThread(Lcom/oneplus/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 990
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$6;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 5
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    const/4 v4, 0x0

    .line 995
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$6;->this$0:Lcom/oneplus/camera/CameraActivity;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {p3}, Lcom/oneplus/base/EventArgs;->clone()Lcom/oneplus/base/EventArgs;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, -0x1

    invoke-static {v0, v2, v4, v4, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 993
    return-void
.end method
