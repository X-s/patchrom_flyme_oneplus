.class Lcom/oneplus/gallery/BurstViewer$6;
.super Ljava/lang/Object;
.source "BurstViewer.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media$SizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/BurstViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/BurstViewer;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$6;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$6;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/gallery/BurstViewer;->-wrap10(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/gallery2/media/Media;II)V

    .line 204
    return-void
.end method
