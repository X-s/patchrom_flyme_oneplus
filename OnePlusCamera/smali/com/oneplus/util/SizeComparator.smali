.class public Lcom/oneplus/util/SizeComparator;
.super Ljava/lang/Object;
.source "SizeComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/Size;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/oneplus/util/SizeComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/oneplus/util/SizeComparator;

    invoke-direct {v0}, Lcom/oneplus/util/SizeComparator;-><init>()V

    sput-object v0, Lcom/oneplus/util/SizeComparator;->DEFAULT:Lcom/oneplus/util/SizeComparator;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Size;Landroid/util/Size;)I
    .locals 4
    .param p1, "x"    # Landroid/util/Size;
    .param p2, "y"    # Landroid/util/Size;

    .prologue
    .line 22
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int v0, v2, v3

    .line 23
    .local v0, "sizeX":I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int v1, v2, v3

    .line 24
    .local v1, "sizeY":I
    :goto_1
    sub-int v2, v0, v1

    return v2

    .line 22
    .end local v0    # "sizeX":I
    .end local v1    # "sizeY":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "sizeX":I
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "y"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Landroid/util/Size;

    .end local p1    # "x":Ljava/lang/Object;
    check-cast p2, Landroid/util/Size;

    .end local p2    # "y":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/util/SizeComparator;->compare(Landroid/util/Size;Landroid/util/Size;)I

    move-result v0

    return v0
.end method
