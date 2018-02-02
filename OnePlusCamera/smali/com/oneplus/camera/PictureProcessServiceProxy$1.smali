.class Lcom/oneplus/camera/PictureProcessServiceProxy$1;
.super Ljava/lang/Object;
.source "PictureProcessServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/PictureProcessServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/PictureProcessServiceProxy;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/PictureProcessServiceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/PictureProcessServiceProxy;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oneplus/camera/PictureProcessServiceProxy$1;->this$0:Lcom/oneplus/camera/PictureProcessServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy$1;->this$0:Lcom/oneplus/camera/PictureProcessServiceProxy;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/PictureProcessServiceProxy;->-wrap1(Lcom/oneplus/camera/PictureProcessServiceProxy;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 38
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy$1;->this$0:Lcom/oneplus/camera/PictureProcessServiceProxy;

    invoke-static {v0, p1}, Lcom/oneplus/camera/PictureProcessServiceProxy;->-wrap2(Lcom/oneplus/camera/PictureProcessServiceProxy;Landroid/content/ComponentName;)V

    .line 44
    return-void
.end method
