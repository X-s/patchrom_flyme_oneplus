.class public Lcom/android/setupwizardlib/items/SwitchItem;
.super Lcom/android/setupwizardlib/items/Item;
.source "SwitchItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/Item;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-boolean v2, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    .line 46
    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwSwitchItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwSwitchItem_android_checked:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    return-void
.end method


# virtual methods
.method protected getDefaultLayoutResource()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/setupwizardlib/R$layout;->suw_items_switch:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/items/Item;->onBindView(Landroid/view/View;)V

    .line 84
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_items_switch:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 85
    .local v0, "switchView":Landroid/support/v7/widget/SwitchCompat;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    iget-boolean v1, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 87
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/SwitchItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 82
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 97
    iput-boolean p2, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    .line 98
    iget-object v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;

    invoke-interface {v0, p0, p2}, Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;->onCheckedChange(Lcom/android/setupwizardlib/items/SwitchItem;Z)V

    .line 96
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 53
    iput-boolean p1, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    .line 54
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/SwitchItem;->notifyChanged()V

    .line 55
    iget-object v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;->onCheckedChange(Lcom/android/setupwizardlib/items/SwitchItem;Z)V

    .line 51
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;

    .line 91
    return-void
.end method

.method public toggle(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 76
    iget-boolean v1, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    .line 77
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_items_switch:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 78
    .local v0, "switchView":Landroid/support/v7/widget/SwitchCompat;
    iget-boolean v1, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 75
    return-void

    .line 76
    .end local v0    # "switchView":Landroid/support/v7/widget/SwitchCompat;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
