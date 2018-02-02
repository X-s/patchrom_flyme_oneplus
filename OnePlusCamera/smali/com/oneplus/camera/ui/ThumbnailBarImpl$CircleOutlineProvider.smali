.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "ThumbnailBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CircleOutlineProvider"
.end annotation


# instance fields
.field private final m_Size:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 154
    iput p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;->m_Size:I

    .line 152
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v2, 0x0

    .line 161
    iget v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;->m_Size:I

    iget v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;->m_Size:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 159
    return-void
.end method
