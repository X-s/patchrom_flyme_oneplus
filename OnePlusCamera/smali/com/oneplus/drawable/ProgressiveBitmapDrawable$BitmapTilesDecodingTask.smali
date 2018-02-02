.class final Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;
.super Ljava/lang/Object;
.source "ProgressiveBitmapDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/drawable/ProgressiveBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BitmapTilesDecodingTask"
.end annotation


# instance fields
.field public final decoder:Landroid/graphics/BitmapRegionDecoder;

.field public final decodingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile isCancelled:Z

.field public final sampleSize:I

.field final synthetic this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;


# direct methods
.method public constructor <init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Landroid/graphics/BitmapRegionDecoder;ILjava/util/Queue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable;
    .param p2, "decoder"    # Landroid/graphics/BitmapRegionDecoder;
    .param p3, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/BitmapRegionDecoder;",
            "I",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p4, "decodingQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 143
    iput p3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I

    .line 144
    iput-object p4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->decodingQueue:Ljava/util/Queue;

    .line 140
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-static {v0, p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->-wrap1(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;)V

    .line 149
    return-void
.end method
