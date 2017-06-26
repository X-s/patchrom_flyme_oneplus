.class public Lcom/android/settings_ex/ui/OPNotificationExamplePreference;
.super Landroid/preference/Preference;
.source "OPNotificationExamplePreference.java"


# static fields
.field public static final BLOCK:I = 0x1

.field public static final NORMAL:I = 0x2

.field public static final PRIORITY:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutResId:I

.field private mNotificationLockImage:Landroid/widget/ImageView;

.field private mNotificationTopImage:Landroid/widget/ImageView;

.field private mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 14
    const v0, 0x7f0400a7

    iput v0, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mLayoutResId:I

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mStyle:I

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->initViews(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const v0, 0x7f0400a7

    iput v0, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mLayoutResId:I

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mStyle:I

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->initViews(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const v0, 0x7f0400a7

    iput v0, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mLayoutResId:I

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mStyle:I

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->initViews(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public initStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mStyle:I

    .line 89
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 52
    const v0, 0x7f120146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mNotificationLockImage:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f120147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mNotificationTopImage:Landroid/widget/ImageView;

    .line 54
    iget v0, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mStyle:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->setStyle(I)V

    .line 55
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mLayoutResId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, "view":Landroid/view/View;
    return-object v1
.end method

.method public setStyle(I)V
    .locals 3
    .param p1, "style"    # I

    .prologue
    .line 67
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zhuyang-style:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    iput p1, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mStyle:I

    .line 69
    packed-switch p1, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mNotificationLockImage:Landroid/widget/ImageView;

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mNotificationTopImage:Landroid/widget/ImageView;

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mNotificationLockImage:Landroid/widget/ImageView;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mNotificationTopImage:Landroid/widget/ImageView;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mNotificationLockImage:Landroid/widget/ImageView;

    const v1, 0x7f020081

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPNotificationExamplePreference;->mNotificationTopImage:Landroid/widget/ImageView;

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
