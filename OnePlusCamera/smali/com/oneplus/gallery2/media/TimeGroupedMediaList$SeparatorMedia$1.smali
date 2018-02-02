.class Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia$1;
.super Ljava/lang/Object;
.source "TimeGroupedMediaList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia$1;->this$1:Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia$1;->this$1:Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->access$0(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;Z)V

    .line 105
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia$1;->this$1:Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->access$1(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)V

    .line 106
    return-void
.end method
