.class Lcom/oneplus/gallery2/GridViewItemAdapter$2;
.super Ljava/lang/Object;
.source "GridViewItemAdapter.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GridViewItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/GridViewItemAdapter;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$2;->this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDurationObtained(Lcom/oneplus/gallery2/media/VideoMedia;J)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/VideoMedia;
    .param p2, "duration"    # J

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$2;->this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;

    # invokes: Lcom/oneplus/gallery2/GridViewItemAdapter;->onVideoDurationObtained(Lcom/oneplus/gallery2/media/Media;J)V
    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/gallery2/GridViewItemAdapter;->access$200(Lcom/oneplus/gallery2/GridViewItemAdapter;Lcom/oneplus/gallery2/media/Media;J)V

    .line 78
    return-void
.end method
