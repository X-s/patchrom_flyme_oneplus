.class Lcom/oneplus/gallery2/media/ExternalMediaSource$1;
.super Ljava/lang/Object;
.source "ExternalMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/ExternalMediaSource;->onWorkerThreadStarted(Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/ExternalMediaSource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$1;->this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$1;->this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource;)V

    .line 804
    return-void
.end method
