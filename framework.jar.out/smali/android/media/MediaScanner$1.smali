.class Landroid/media/MediaScanner$1;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaScanner;->confirmRingtoneSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method constructor <init>(Landroid/media/MediaScanner;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$000(Landroid/media/MediaScanner;)Landroid/media/MediaScanner$MyMediaScannerClient;

    move-result-object v0

    # invokes: Landroid/media/MediaScanner$MyMediaScannerClient;->restoreSettings()V
    invoke-static {v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->access$100(Landroid/media/MediaScanner$MyMediaScannerClient;)V

    .line 461
    return-void
.end method
