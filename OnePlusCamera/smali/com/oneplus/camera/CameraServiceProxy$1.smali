.class Lcom/oneplus/camera/CameraServiceProxy$1;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraServiceProxy;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraServiceProxy;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oneplus/camera/CameraServiceProxy$1;->this$0:Lcom/oneplus/camera/CameraServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/camera/CameraServiceProxy$1;->this$0:Lcom/oneplus/camera/CameraServiceProxy;

    # invokes: Lcom/oneplus/camera/CameraServiceProxy;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/CameraServiceProxy;->access$000(Lcom/oneplus/camera/CameraServiceProxy;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 35
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/camera/CameraServiceProxy$1;->this$0:Lcom/oneplus/camera/CameraServiceProxy;

    # invokes: Lcom/oneplus/camera/CameraServiceProxy;->onServiceDisconnected(Landroid/content/ComponentName;)V
    invoke-static {v0, p1}, Lcom/oneplus/camera/CameraServiceProxy;->access$100(Lcom/oneplus/camera/CameraServiceProxy;Landroid/content/ComponentName;)V

    .line 41
    return-void
.end method
