.class Lcom/oneplus/camera/io/FileManagerImpl$4;
.super Ljava/lang/Object;
.source "FileManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/io/FileManagerImpl;->notifyCameraThread(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/io/FileManagerImpl;

.field final synthetic val$args:Lcom/oneplus/base/EventArgs;

.field final synthetic val$event:Lcom/oneplus/base/EventKey;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/io/FileManagerImpl;
    .param p3, "val$args"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 416
    .local p2, "val$event":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/EventArgs;>;"
    iput-object p1, p0, Lcom/oneplus/camera/io/FileManagerImpl$4;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    iput-object p2, p0, Lcom/oneplus/camera/io/FileManagerImpl$4;->val$event:Lcom/oneplus/base/EventKey;

    iput-object p3, p0, Lcom/oneplus/camera/io/FileManagerImpl$4;->val$args:Lcom/oneplus/base/EventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$4;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    iget-object v1, p0, Lcom/oneplus/camera/io/FileManagerImpl$4;->val$event:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/io/FileManagerImpl$4;->val$args:Lcom/oneplus/base/EventArgs;

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/io/FileManagerImpl;->-wrap6(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 419
    return-void
.end method
