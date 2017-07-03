.class Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;
.super Ljava/lang/Object;
.source "BorderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/drawable/BorderDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BorderInfo"
.end annotation


# instance fields
.field public border:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

.field public borderWidth:I

.field public color:I


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/drawable/BorderDrawable$Border;II)V
    .locals 0
    .param p1, "border"    # Lcom/oneplus/gallery/drawable/BorderDrawable$Border;
    .param p2, "color"    # I
    .param p3, "borderWidth"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;->border:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    .line 54
    iput p3, p0, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;->borderWidth:I

    .line 55
    iput p2, p0, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderInfo;->color:I

    .line 56
    return-void
.end method
