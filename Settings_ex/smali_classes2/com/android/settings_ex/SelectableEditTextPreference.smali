.class public Lcom/android/settings_ex/SelectableEditTextPreference;
.super Lcom/android/settings_ex/CustomEditTextPreference;
.source "SelectableEditTextPreference.java"


# static fields
.field public static final SELECTION_CURSOR_END:I = 0x0

.field public static final SELECTION_CURSOR_START:I = 0x1

.field public static final SELECTION_SELECT_ALL:I = 0x2


# instance fields
.field private mSelectionMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings_ex/CustomEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/SelectableEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 53
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    .line 54
    .local v1, "length":I
    :goto_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    iget v2, p0, Lcom/android/settings_ex/SelectableEditTextPreference;->mSelectionMode:I

    packed-switch v2, :pswitch_data_0

    .line 48
    :cond_0
    :goto_1
    return-void

    .line 53
    .end local v1    # "length":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "length":I
    goto :goto_0

    .line 57
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 60
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 63
    :pswitch_2
    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_1

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setInitialSelectionMode(I)V
    .locals 0
    .param p1, "selectionMode"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/settings_ex/SelectableEditTextPreference;->mSelectionMode:I

    .line 43
    return-void
.end method
