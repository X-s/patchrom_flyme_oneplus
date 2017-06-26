.class public Lcom/android/settings_ex/applications/AppDomainsPreference;
.super Lcom/android/settings_ex/accessibility/ListDialogPreference;
.source "AppDomainsPreference.java"


# instance fields
.field private mNumEntries:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AppDomainsPreference;->setDialogLayoutResource(I)V

    .line 34
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AppDomainsPreference;->setListItemLayoutResource(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppDomainsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "context":Landroid/content/Context;
    iget v3, p0, Lcom/android/settings_ex/applications/AppDomainsPreference;->mNumEntries:I

    if-nez v3, :cond_0

    .line 47
    const v3, 0x7f0c0d28

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    :goto_0
    return-object v3

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/accessibility/ListDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 52
    .local v1, "summary":Ljava/lang/CharSequence;
    iget v3, p0, Lcom/android/settings_ex/applications/AppDomainsPreference;->mNumEntries:I

    if-ne v3, v4, :cond_1

    const v2, 0x7f0c0d29

    .line 55
    .local v2, "whichVersion":I
    :goto_1
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 52
    .end local v2    # "whichVersion":I
    :cond_1
    const v2, 0x7f0c0d2a

    goto :goto_1
.end method

.method protected onBindListItem(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/applications/AppDomainsPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 61
    .local v1, "title":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 62
    const v2, 0x7f120012

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    .local v0, "domainName":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .end local v0    # "domainName":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setTitles([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "titles"    # [Ljava/lang/CharSequence;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    iput v0, p0, Lcom/android/settings_ex/applications/AppDomainsPreference;->mNumEntries:I

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings_ex/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 41
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
