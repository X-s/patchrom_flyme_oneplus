.class Lcom/android/settings_ex/display/AppGridView$AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/display/AppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/display/AppGridView$ActivityEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIconResId:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "textResId"    # I
    .param p4, "iconResId"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 75
    iput p4, p0, Lcom/android/settings_ex/display/AppGridView$AppsAdapter;->mIconResId:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/display/AppGridView$AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/display/AppGridView$AppsAdapter;->loadAllApps()V

    .line 72
    return-void
.end method

.method private loadAllApps()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 107
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v5, p0, Lcom/android/settings_ex/display/AppGridView$AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 111
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v6, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/display/AppGridView$ActivityEntry;>;"
    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 113
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 114
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 115
    .local v3, "label":Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    .line 116
    new-instance v7, Lcom/android/settings_ex/display/AppGridView$ActivityEntry;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/android/settings_ex/display/AppGridView$ActivityEntry;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x1e

    if-ne v7, v8, :cond_0

    .line 126
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "label":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 128
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/display/AppGridView$AppsAdapter;->addAll(Ljava/util/Collection;)V

    .line 106
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 98
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 84
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/display/AppGridView$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/display/AppGridView$ActivityEntry;

    .line 85
    .local v0, "entry":Lcom/android/settings_ex/display/AppGridView$ActivityEntry;
    iget v4, p0, Lcom/android/settings_ex/display/AppGridView$AppsAdapter;->mIconResId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 86
    .local v2, "iconView":Landroid/widget/ImageView;
    iget-object v4, v0, Lcom/android/settings_ex/display/AppGridView$ActivityEntry;->info:Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings_ex/display/AppGridView$AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 87
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-object v3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method
