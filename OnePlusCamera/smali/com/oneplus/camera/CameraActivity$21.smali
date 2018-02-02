.class Lcom/oneplus/camera/CameraActivity$21;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->onCameraThreadStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;

.field final synthetic val$eventKeys:Ljava/util/List;

.field final synthetic val$initialMediaType:Lcom/oneplus/camera/media/MediaType;

.field final synthetic val$propKeys:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "val$initialMediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 3265
    .local p3, "val$eventKeys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventKey<*>;>;"
    .local p4, "val$propKeys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyKey<*>;>;"
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$21;->this$0:Lcom/oneplus/camera/CameraActivity;

    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity$21;->val$initialMediaType:Lcom/oneplus/camera/media/MediaType;

    iput-object p3, p0, Lcom/oneplus/camera/CameraActivity$21;->val$eventKeys:Ljava/util/List;

    iput-object p4, p0, Lcom/oneplus/camera/CameraActivity$21;->val$propKeys:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$21;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$21;->val$initialMediaType:Lcom/oneplus/camera/media/MediaType;

    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$21;->val$eventKeys:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$21;->val$propKeys:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->-wrap2(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V

    .line 3268
    return-void
.end method
