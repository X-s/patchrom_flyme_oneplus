.class Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplBase.java"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplBase;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/AppCompatDelegateImplBase;

    .prologue
    .line 198
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 204
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Landroid/support/v7/appcompat/R$attr;->homeAsUpIndicator:I

    aput v4, v3, v5

    const/4 v4, 0x0

    .line 203
    invoke-static {v2, v4, v3}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 205
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 206
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 207
    return-object v1
.end method

.method public isNavigationVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 218
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getDisplayOptions()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I

    .prologue
    .line 232
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 233
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 231
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 223
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 224
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 226
    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 222
    :cond_0
    return-void
.end method
