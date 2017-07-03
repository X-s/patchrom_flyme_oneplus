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
.field private final decoder:Landroid/graphics/BitmapRegionDecoder;

.field private final decodingQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile isCancelled:Z

.field private final sampleSize:I

.field final synthetic this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;


# direct methods
.method public constructor <init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Landroid/graphics/BitmapRegionDecoder;ILjava/util/LinkedList;)V
    .locals 0
    .param p2, "decoder"    # Landroid/graphics/BitmapRegionDecoder;
    .param p3, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/BitmapRegionDecoder;",
            "I",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p4, "decodingQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 122
    iput p3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I

    .line 123
    iput-object p4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->decodingQueue:Ljava/util/LinkedList;

    .line 124
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;)I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    iget v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->sampleSize:I

    iget-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->decodingQueue:Ljava/util/LinkedList;

    # invokes: Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->decodeTilesAsync(Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;Landroid/graphics/BitmapRegionDecoder;ILjava/util/LinkedList;)V
    invoke-static {v0, p0, v1, v2, v3}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->access$2(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;Landroid/graphics/BitmapRegionDecoder;ILjava/util/LinkedList;)V

    .line 131
    return-void
.end method
