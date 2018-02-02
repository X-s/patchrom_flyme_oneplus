.class Lcom/oneplus/gallery/media/ContentObserverImpl$1;
.super Landroid/os/Handler;
.source "ContentObserverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/ContentObserverImpl;->startContentObserverThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/ContentObserverImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/ContentObserverImpl;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery/media/ContentObserverImpl$1;->this$0:Lcom/oneplus/gallery/media/ContentObserverImpl;

    .line 328
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/oneplus/gallery/media/ContentObserverImpl$1;->this$0:Lcom/oneplus/gallery/media/ContentObserverImpl;

    invoke-static {v0, p1}, Lcom/oneplus/gallery/media/ContentObserverImpl;->access$3(Lcom/oneplus/gallery/media/ContentObserverImpl;Landroid/os/Message;)V

    .line 334
    return-void
.end method
