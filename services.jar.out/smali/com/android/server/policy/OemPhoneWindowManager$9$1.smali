.class Lcom/android/server/policy/OemPhoneWindowManager$9$1;
.super Landroid/widget/ArrayAdapter;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemPhoneWindowManager$9;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/OemPhoneWindowManager$9;

.field final synthetic val$availableApps:Ljava/util/ArrayList;

.field final synthetic val$nowWhich:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager$9;Landroid/content/Context;II[Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/OemPhoneWindowManager$9;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # [Ljava/lang/String;
    .param p6, "val$nowWhich"    # I

    .prologue
    .line 1987
    .local p7, "val$availableApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;>;"
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$9$1;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$9;

    iput p6, p0, Lcom/android/server/policy/OemPhoneWindowManager$9$1;->val$nowWhich:I

    iput-object p7, p0, Lcom/android/server/policy/OemPhoneWindowManager$9$1;->val$availableApps:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 1990
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 1992
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1993
    .local v1, "view":Landroid/view/View;
    iget v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$9$1;->val$nowWhich:I

    if-ne p1, v2, :cond_0

    .line 1995
    const v2, 0x50c0009

    .line 1994
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 1996
    .local v0, "checkTextView":Landroid/widget/CheckedTextView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1999
    .end local v0    # "checkTextView":Landroid/widget/CheckedTextView;
    :cond_0
    const v2, 0x50c000a

    .line 1998
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 2000
    .restart local v0    # "checkTextView":Landroid/widget/CheckedTextView;
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$9$1;->val$availableApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v2, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/CheckedTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2002
    return-object v1
.end method
