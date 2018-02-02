.class final Lcom/oneplus/camera/ui/CaptureBar$1;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureBar;
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
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/widget/ImageView;Landroid/widget/ImageView;)I
    .locals 6
    .param p1, "lhs"    # Landroid/widget/ImageView;
    .param p2, "rhs"    # Landroid/widget/ImageView;

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/scene/Scene;

    sget-object v5, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, "leftId":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/scene/Scene;

    sget-object v5, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    .local v2, "rightId":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-get0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 149
    .local v1, "leftIndex":I
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar;->-get0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 150
    .local v3, "rightIndex":I
    if-ltz v1, :cond_1

    .line 152
    if-ltz v3, :cond_0

    .line 153
    sub-int v4, v1, v3

    return v4

    .line 155
    :cond_0
    const/4 v4, -0x1

    return v4

    .line 159
    :cond_1
    if-ltz v3, :cond_2

    .line 160
    const/4 v4, 0x1

    return v4

    .line 162
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 144
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/CaptureBar$1;->compare(Landroid/widget/ImageView;Landroid/widget/ImageView;)I

    move-result v0

    return v0
.end method
