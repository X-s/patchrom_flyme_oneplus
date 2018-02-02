.class final Lcom/oneplus/camera/ui/VerticalViewPager$1;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .param p2, "rhs"    # Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .prologue
    .line 90
    iget v0, p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    iget v1, p2, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/VerticalViewPager$1;->compare(Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;)I

    move-result v0

    return v0
.end method
