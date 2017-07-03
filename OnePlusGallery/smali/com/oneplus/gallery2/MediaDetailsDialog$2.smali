.class Lcom/oneplus/gallery2/MediaDetailsDialog$2;
.super Ljava/lang/Object;
.source "MediaDetailsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/MediaDetailsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaDetailsDialog;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$2;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$2;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    # invokes: Lcom/oneplus/gallery2/MediaDetailsDialog;->onMediaInfoTimeout()V
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$500(Lcom/oneplus/gallery2/MediaDetailsDialog;)V

    .line 93
    return-void
.end method
