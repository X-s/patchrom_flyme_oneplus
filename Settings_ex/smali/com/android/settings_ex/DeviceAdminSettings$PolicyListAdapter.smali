.class Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PolicyListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings_ex/DeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DeviceAdminSettings;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings_ex/DeviceAdminSettings;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 194
    invoke-virtual {p1}, Lcom/android/settings_ex/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 193
    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 192
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/app/admin/DeviceAdminInfo;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 280
    iget-object v6, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 281
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;

    .line 282
    .local v5, "vh":Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 283
    .local v1, "activityIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 284
    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-static {v8, p2}, Lcom/android/settings_ex/DeviceAdminSettings;->-wrap2(Lcom/android/settings_ex/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 283
    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 285
    .local v2, "badgedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v6, v5, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v6, v5, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v6, v5, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-static {v7, p2}, Lcom/android/settings_ex/DeviceAdminSettings;->-wrap0(Lcom/android/settings_ex/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 288
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->isEnabled(Ljava/lang/Object;)Z

    move-result v4

    .line 290
    .local v4, "enabled":Z
    :try_start_0
    iget-object v6, v5, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    iget-object v6, v5, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 294
    iget-object v6, v5, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 295
    iget-object v6, v5, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 296
    iget-object v6, v5, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 279
    return-void

    .line 291
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method private isEnabled(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    .line 250
    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .line 252
    .local v0, "info":Landroid/app/admin/DeviceAdminInfo;
    iget-object v1, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-static {v1, v0}, Lcom/android/settings_ex/DeviceAdminSettings;->-wrap1(Lcom/android/settings_ex/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const/4 v1, 0x0

    return v1

    .line 255
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private newDeviceAdminView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04006c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 270
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;-><init>()V

    .line 271
    .local v0, "h":Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;
    const/high16 v2, 0x7f110000

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 272
    const v2, 0x7f110145

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    .line 273
    const v2, 0x7f110072

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 274
    const v2, 0x7f110146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    .line 275
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 276
    return-object v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-static {v0}, Lcom/android/settings_ex/DeviceAdminSettings;->-get0(Lcom/android/settings_ex/DeviceAdminSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-static {v0}, Lcom/android/settings_ex/DeviceAdminSettings;->-get0(Lcom/android/settings_ex/DeviceAdminSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminSettings$DeviceAdminListItem;->info:Landroid/app/admin/DeviceAdminInfo;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 219
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 261
    .local v0, "o":Ljava/lang/Object;
    if-nez p2, :cond_0

    .line 262
    invoke-direct {p0, p3}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->newDeviceAdminView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 264
    :cond_0
    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-direct {p0, p2, v0}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->bindView(Landroid/view/View;Landroid/app/admin/DeviceAdminInfo;)V

    .line 265
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 246
    .local v0, "o":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
