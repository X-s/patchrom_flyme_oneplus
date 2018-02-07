.class Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RestrictedDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/RestrictedDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestrictedArrayItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TEXT_RES_ID:I = 0x1020014


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/RestrictedDropDownPreference;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;->this$0:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    .line 200
    const v0, 0x7f0401a1

    const v1, 0x1020014

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 199
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 205
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 206
    .local v3, "rootView":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 207
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;->this$0:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-static {v5, v0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->-wrap0(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 208
    .local v1, "isEntryRestricted":Z
    const v5, 0x1020014

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 209
    .local v4, "text":Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 210
    if-eqz v1, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 212
    :cond_0
    const v5, 0x7f1102b5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 213
    .local v2, "restrictedIcon":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 214
    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :cond_1
    return-object v3

    .line 210
    .end local v2    # "restrictedIcon":Landroid/view/View;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 214
    .restart local v2    # "restrictedIcon":Landroid/view/View;
    :cond_3
    const/16 v6, 0x8

    goto :goto_1
.end method
