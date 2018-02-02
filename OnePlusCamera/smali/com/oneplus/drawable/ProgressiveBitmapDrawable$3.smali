.class Lcom/oneplus/drawable/ProgressiveBitmapDrawable$3;
.super Ljava/lang/Object;
.source "ProgressiveBitmapDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

.field final synthetic val$decoder:Landroid/graphics/BitmapRegionDecoder;


# direct methods
.method constructor <init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable;
    .param p2, "val$decoder"    # Landroid/graphics/BitmapRegionDecoder;

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$3;->this$0:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    iput-object p2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$3;->val$decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$3;->val$decoder:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v1

    .line 1046
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$3;->val$decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1042
    return-void

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
