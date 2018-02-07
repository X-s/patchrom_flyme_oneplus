.class public Lcom/android/settings_ex/ApnPreference;
.super Landroid/support/v7/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "ApnPreference"

.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mApnReadOnly:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const v0, 0x7f0101d0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnPreference;->mApnReadOnly:Z

    .line 38
    return-void
.end method


# virtual methods
.method public getApnReadOnly()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnPreference;->mApnReadOnly:Z

    return v0
.end method

.method public getSelectable()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    return v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 7
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v6, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 60
    const v4, 0x7f11009a

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 61
    .local v3, "widget":Landroid/view/View;
    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/widget/RadioButton;

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 62
    check-cast v1, Landroid/widget/RadioButton;

    .line 63
    .local v1, "rb":Landroid/widget/RadioButton;
    iget-boolean v4, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    if-eqz v4, :cond_3

    .line 64
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    .local v0, "isChecked":Z
    if-eqz v0, :cond_0

    .line 68
    sput-object v1, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 72
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 74
    iput-boolean v6, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    .line 75
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 81
    .end local v0    # "isChecked":Z
    .end local v1    # "rb":Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const v4, 0x7f110099

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 82
    .local v2, "textLayout":Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v4, v2, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_2

    .line 83
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :cond_2
    return-void

    .line 77
    .end local v2    # "textLayout":Landroid/view/View;
    .restart local v1    # "rb":Landroid/widget/RadioButton;
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 96
    const-string/jumbo v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    if-eqz p2, :cond_2

    .line 102
    sget-object v0, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 105
    :cond_1
    sput-object p1, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 95
    :goto_0
    return-void

    .line 109
    :cond_2
    sput-object v3, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 110
    sput-object v3, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f110099

    if-ne v5, v4, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 119
    .local v2, "pos":I
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v2

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 120
    .local v3, "url":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.EDIT"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "DISABLE_EDITOR"

    iget-boolean v5, p0, Lcom/android/settings_ex/ApnPreference;->mApnReadOnly:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pos":I
    .end local v3    # "url":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public setApnReadOnly(Z)V
    .locals 0
    .param p1, "apnReadOnly"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/settings_ex/ApnPreference;->mApnReadOnly:Z

    .line 135
    return-void
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    .line 127
    return-void
.end method
