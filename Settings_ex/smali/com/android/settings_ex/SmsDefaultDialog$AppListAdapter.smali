.class Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmsDefaultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SmsDefaultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedIndex:I

.field final synthetic this$0:Lcom/android/settings_ex/SmsDefaultDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/SmsDefaultDialog;)V
    .locals 4

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings_ex/SmsDefaultDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 159
    invoke-direct {p0}, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    .line 160
    invoke-direct {p0}, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->getSelectedIndex()I

    move-result v1

    .line 162
    .local v1, "selected":I
    if-lez v1, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;

    .line 164
    .local v0, "item":Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;
    iget-object v2, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 165
    const/4 v1, 0x0

    .line 167
    .end local v0    # "item":Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;
    :cond_0
    iput v1, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->mSelectedIndex:I

    .line 168
    return-void
.end method

.method private getItems()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v6, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings_ex/SmsDefaultDialog;

    invoke-virtual {v6}, Lcom/android/settings_ex/SmsDefaultDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 229
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;>;"
    iget-object v6, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings_ex/SmsDefaultDialog;

    invoke-static {v6}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 233
    .local v0, "app":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :try_start_0
    iget-object v4, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 234
    .local v4, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 235
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 236
    new-instance v6, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;

    invoke-virtual {v1, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8, v4}, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;-><init>(Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 245
    .end local v0    # "app":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    return-object v3
.end method

.method private getSelectedIndex()I
    .locals 5

    .prologue
    .line 250
    iget-object v3, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings_ex/SmsDefaultDialog;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 252
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "defaultSmsAppPackageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 255
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 256
    iget-object v3, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;

    iget-object v3, v3, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;->packgeName:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    .end local v1    # "defaultSmsAppPackageName":Ljava/lang/String;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 255
    .restart local v1    # "defaultSmsAppPackageName":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "defaultSmsAppPackageName":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 182
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;

    .line 210
    .local v0, "item":Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;
    if-eqz v0, :cond_0

    .line 211
    iget-object v1, v0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;->packgeName:Ljava/lang/String;

    .line 213
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f120020

    const/4 v6, 0x0

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;

    .line 188
    .local v2, "item":Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;
    iget-object v5, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings_ex/SmsDefaultDialog;

    invoke-virtual {v5}, Lcom/android/settings_ex/SmsDefaultDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 189
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04000f

    invoke-virtual {v1, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 190
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f12001f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 191
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v5, v2, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;->label:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget v5, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->mSelectedIndex:I

    if-ne p1, v5, :cond_0

    .line 193
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :goto_0
    const v5, 0x7f12001e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 198
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v5, v2, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    return-object v4

    .line 195
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 223
    iget v0, p0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->mSelectedIndex:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
