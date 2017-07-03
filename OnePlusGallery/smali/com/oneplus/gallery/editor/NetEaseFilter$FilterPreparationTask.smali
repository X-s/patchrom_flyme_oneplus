.class final Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;
.super Ljava/lang/Object;
.source "NetEaseFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/editor/NetEaseFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FilterPreparationTask"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public surfaceSize:Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;

.field final synthetic this$0:Lcom/oneplus/gallery/editor/NetEaseFilter;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/editor/NetEaseFilter;Landroid/graphics/Bitmap;Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;)V
    .locals 0
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "surfaceSize"    # Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;->this$0:Lcom/oneplus/gallery/editor/NetEaseFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;->bitmap:Landroid/graphics/Bitmap;

    .line 142
    iput-object p3, p0, Lcom/oneplus/gallery/editor/NetEaseFilter$FilterPreparationTask;->surfaceSize:Lcom/oneplus/gallery/editor/NetEaseFilter$SurfaceSize;

    .line 143
    return-void
.end method
