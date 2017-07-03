.class Lcom/oneplus/gallery/media/MediaManagerImpl$35;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->startContentThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V
    .locals 0

    .prologue
    .line 5069
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$35;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5073
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$35;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->checkStorages()V
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5700(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    .line 5074
    return-void
.end method
