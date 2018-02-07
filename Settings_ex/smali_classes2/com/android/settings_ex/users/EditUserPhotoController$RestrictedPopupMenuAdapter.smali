.class final Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedPopupMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/users/EditUserPhotoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RestrictedPopupMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 431
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;>;"
    const v0, 0x7f04016b

    const v1, 0x7f1100c8

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 430
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 436
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 437
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedPopupMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;

    .line 438
    .local v1, "item":Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;
    const v4, 0x7f1100c8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 439
    .local v2, "text":Landroid/widget/TextView;
    const v4, 0x7f1102b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 441
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByAdmin()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByBase()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 442
    invoke-virtual {v1}, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByAdmin()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByBase()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 443
    :cond_1
    const/16 v5, 0x8

    .line 442
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    return-object v3

    .line 441
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method
