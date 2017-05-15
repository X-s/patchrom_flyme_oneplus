.class public Lcom/android/settings_ex/ApnPreference;
.super Landroid/preference/Preference;
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

    .line 53
    sput-object v0, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 54
    sput-object v0, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const v0, 0x7f01002e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnPreference;->mApnReadOnly:Z

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ApnPreference;->initViews(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApnPreference;->setLayoutResource(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public getSelectable()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 65
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 67
    .local v4, "view":Landroid/view/View;
    const v6, 0x7f12000c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 68
    .local v5, "widget":Landroid/view/View;
    if-eqz v5, :cond_1

    instance-of v6, v5, Landroid/widget/RadioButton;

    if-eqz v6, :cond_1

    move-object v1, v5

    .line 69
    check-cast v1, Landroid/widget/RadioButton;

    .line 70
    .local v1, "rb":Landroid/widget/RadioButton;
    iget-boolean v6, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    if-eqz v6, :cond_4

    .line 71
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 74
    .local v0, "isChecked":Z
    if-eqz v0, :cond_0

    .line 75
    sput-object v1, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 79
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    .line 80
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 81
    iput-boolean v8, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    .line 82
    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 88
    .end local v0    # "isChecked":Z
    .end local v1    # "rb":Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const v6, 0x7f12000b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "textLayout":Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v6, v2, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_2

    .line 90
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_2
    const v6, 0x1020016

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 93
    .local v3, "titleView":Landroid/widget/TextView;
    if-eqz v3, :cond_3

    .line 94
    const/4 v6, 0x2

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 97
    :cond_3
    return-object v4

    .line 84
    .end local v2    # "textLayout":Landroid/view/View;
    .end local v3    # "titleView":Landroid/widget/TextView;
    .restart local v1    # "rb":Landroid/widget/RadioButton;
    :cond_4
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 109
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 114
    :cond_0
    if-eqz p2, :cond_2

    .line 115
    sget-object v0, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 118
    :cond_1
    sput-object p1, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_2
    sput-object v3, Lcom/android/settings_ex/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 123
    sput-object v3, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    if-eqz p1, :cond_0

    const v4, 0x7f12000b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 132
    .local v2, "pos":I
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v2

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 133
    .local v3, "url":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "DISABLE_EDITOR"

    iget-boolean v5, p0, Lcom/android/settings_ex/ApnPreference;->mApnReadOnly:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
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
    .line 149
    iput-boolean p1, p0, Lcom/android/settings_ex/ApnPreference;->mApnReadOnly:Z

    .line 150
    return-void
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/settings_ex/ApnPreference;->mSelectable:Z

    .line 142
    return-void
.end method
