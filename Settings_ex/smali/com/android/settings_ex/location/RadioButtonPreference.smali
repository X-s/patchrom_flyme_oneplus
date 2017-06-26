.class public Lcom/android/settings_ex/location/RadioButtonPreference;
.super Lcom/oneplus/widget/preference/OPCheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/widget/preference/OPCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/location/RadioButtonPreference;->mListener:Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;

    .line 50
    const v0, 0x7f0400e1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setWidgetLayoutResource(I)V

    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setCanRecycleLayout(Z)V

    .line 52
    return-void
.end method

.method private setCanRecycleLayout(Z)V
    .locals 4
    .param p1, "bCanRecycle"    # Z

    .prologue
    .line 87
    :try_start_0
    const-class v2, Landroid/preference/Preference;

    const-string v3, "mCanRecycleLayout"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 88
    .local v0, "canRecycleLayoutField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 89
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .end local v0    # "canRecycleLayoutField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/oneplus/widget/preference/OPCheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 77
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    .local v0, "title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 80
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 82
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/location/RadioButtonPreference;->mListener:Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/location/RadioButtonPreference;->mListener:Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings_ex/location/RadioButtonPreference;->mListener:Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;

    .line 64
    return-void
.end method
