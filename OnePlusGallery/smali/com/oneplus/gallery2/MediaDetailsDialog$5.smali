.class Lcom/oneplus/gallery2/MediaDetailsDialog$5;
.super Ljava/lang/Object;
.source "MediaDetailsDialog.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/MediaDetailsDialog;->onPrepareDialog(Landroid/content/Context;)V
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
    .line 321
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$5;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDurationObtained(Lcom/oneplus/gallery2/media/VideoMedia;J)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/VideoMedia;
    .param p2, "duration"    # J

    .prologue
    .line 325
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$5;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    # setter for: Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Duration:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$902(Lcom/oneplus/gallery2/MediaDetailsDialog;Ljava/lang/Long;)Ljava/lang/Long;

    .line 326
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$5;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    # invokes: Lcom/oneplus/gallery2/MediaDetailsDialog;->checkMediaInfoReadyState()Z
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$800(Lcom/oneplus/gallery2/MediaDetailsDialog;)Z

    .line 327
    return-void
.end method
