.class final Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;
.super Ljava/lang/Object;
.source "PhotoEditorDrawing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/editor/PhotoEditorDrawing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PathInfo"
.end annotation


# instance fields
.field public final color:I

.field public volatile data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final fill:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

.field public final thickness:F


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;IF)V
    .locals 1
    .param p1, "fill"    # Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;
    .param p2, "color"    # I
    .param p3, "thickness"    # F

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->data:Ljava/util/List;

    .line 88
    iput-object p1, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->fill:Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathFill;

    .line 89
    iput p2, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->color:I

    .line 90
    iput p3, p0, Lcom/oneplus/gallery/editor/PhotoEditorDrawing$PathInfo;->thickness:F

    .line 91
    return-void
.end method
