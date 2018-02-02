.class public Lcom/oneplus/camera/ui/menu/MenuListView;
.super Landroid/widget/ListView;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/menu/MenuListView$1;,
        Lcom/oneplus/camera/ui/menu/MenuListView$2;,
        Lcom/oneplus/camera/ui/menu/MenuListView$3;,
        Lcom/oneplus/camera/ui/menu/MenuListView$4;,
        Lcom/oneplus/camera/ui/menu/MenuListView$5;,
        Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;,
        Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;
    }
.end annotation


# instance fields
.field private final m_Adapter:Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;

.field private m_DefaultItemPadding:I

.field private final m_IsCheckedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_IsEnabledChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_MenuItemViewResId:I

.field private m_MenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_OnInternalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private m_OnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private m_SubTitleItemPaddingBottom:I

.field private final m_SummaryChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final m_TitleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/menu/MenuListView;)Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_Adapter:Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/menu/MenuListView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_MenuItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/menu/MenuListView;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/menu/MenuListView;->getMenuItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/menu/MenuListView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/camera/ui/menu/MenuListView;->onItemClicked(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/menu/MenuListView;Lcom/oneplus/camera/ui/menu/MenuItem;)V
    .locals 0
    .param p1, "menuItem"    # Lcom/oneplus/camera/ui/menu/MenuItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/menu/MenuListView;->onMenuItemCheckedChanged(Lcom/oneplus/camera/ui/menu/MenuItem;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/menu/MenuListView;Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;Z)V
    .locals 0
    .param p1, "viewInfo"    # Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;
    .param p2, "isChecked"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/menu/MenuListView;->onMenuItemSwitchChanged(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const v0, 0x7f030009

    iput v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_MenuItemViewResId:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_MenuItems:Ljava/util/List;

    .line 36
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/menu/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_DefaultItemPadding:I

    .line 37
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/menu/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_SubTitleItemPaddingBottom:I

    .line 41
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/menu/MenuListView$1;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_IsCheckedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 49
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/menu/MenuListView$2;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_IsEnabledChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 57
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuListView$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/menu/MenuListView$3;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_SummaryChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 65
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuListView$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/menu/MenuListView$4;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_TitleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 76
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuListView$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/menu/MenuListView$5;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_OnInternalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 135
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView;Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_Adapter:Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;

    .line 136
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_Adapter:Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_OnInternalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    return-void
.end method

.method private attachToMenuItem(Lcom/oneplus/camera/ui/menu/MenuItem;)V
    .locals 2
    .param p1, "menuItem"    # Lcom/oneplus/camera/ui/menu/MenuItem;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 146
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_IsCheckedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 147
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_ENABLED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_IsEnabledChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 148
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_SummaryChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 149
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_TitleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 142
    :cond_0
    return-void
.end method

.method private detachFromMenuItem(Lcom/oneplus/camera/ui/menu/MenuItem;)V
    .locals 2
    .param p1, "menuItem"    # Lcom/oneplus/camera/ui/menu/MenuItem;

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 159
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_IsCheckedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 160
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_ENABLED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_IsEnabledChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 161
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_SummaryChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 162
    sget-object v0, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_TitleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 155
    :cond_0
    return-void
.end method

.method private getMenuItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 172
    if-nez p2, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/menu/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_MenuItemViewResId:I

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 175
    new-instance v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;

    invoke-direct {v2, v5}, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V

    .line 176
    .local v2, "viewInfo":Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;
    const v3, 0x7f090029

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->titleTextView:Landroid/widget/TextView;

    .line 177
    const v3, 0x7f09002a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->subTitleTextView:Landroid/widget/TextView;

    .line 178
    const v3, 0x7f09002b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->summaryTextView:Landroid/widget/TextView;

    .line 179
    const v3, 0x7f09002c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    .line 180
    iget-object v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    if-eqz v3, :cond_0

    .line 182
    move-object v0, p2

    .line 183
    .local v0, "itemView":Landroid/view/View;
    iget-object v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    new-instance v4, Lcom/oneplus/camera/ui/menu/MenuListView$6;

    invoke-direct {v4, p0, p2}, Lcom/oneplus/camera/ui/menu/MenuListView$6;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 196
    .end local v0    # "itemView":Landroid/view/View;
    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 202
    :goto_0
    iget-object v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/menu/MenuListView;->detachFromMenuItem(Lcom/oneplus/camera/ui/menu/MenuItem;)V

    .line 205
    iget-object v3, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_MenuItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 206
    .local v1, "menuItem":Lcom/oneplus/camera/ui/menu/MenuItem;
    iput-object v1, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 207
    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/menu/MenuListView;->attachToMenuItem(Lcom/oneplus/camera/ui/menu/MenuItem;)V

    .line 210
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->isUpdatingViews:Z

    .line 211
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/menu/MenuListView;->setupMenuItemSummary(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V

    .line 212
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/menu/MenuListView;->setupMenuItemSwitch(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V

    .line 213
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/menu/MenuListView;->setupMenuItemTitle(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V

    .line 214
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/menu/MenuListView;->setupMenuItemSubTile(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V

    .line 215
    sget-object v3, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUBTITLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/ui/menu/MenuItem;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 217
    iget v3, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_DefaultItemPadding:I

    iget v4, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_DefaultItemPadding:I

    iget v5, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_DefaultItemPadding:I

    iget v6, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_SubTitleItemPaddingBottom:I

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 221
    :goto_1
    iput-boolean v7, v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->isUpdatingViews:Z

    .line 224
    return-object p2

    .line 199
    .end local v1    # "menuItem":Lcom/oneplus/camera/ui/menu/MenuItem;
    .end local v2    # "viewInfo":Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;

    .restart local v2    # "viewInfo":Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;
    goto :goto_0

    .line 219
    .restart local v1    # "menuItem":Lcom/oneplus/camera/ui/menu/MenuItem;
    :cond_2
    iget v3, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_DefaultItemPadding:I

    iget v4, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_DefaultItemPadding:I

    invoke-virtual {p2, v3, v7, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method private onItemClicked(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 230
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;

    .line 231
    .local v8, "viewInfo":Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;
    iget-object v7, v8, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    .line 232
    .local v7, "switchView":Landroid/widget/Switch;
    if-eqz v7, :cond_1

    iget-object v0, v8, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Landroid/widget/Switch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 234
    invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    .local v6, "isChecked":Z
    :goto_0
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 236
    return-void

    .line 234
    .end local v6    # "isChecked":Z
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_OnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_OnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 228
    :cond_2
    return-void
.end method

.method private onMenuItemCheckedChanged(Lcom/oneplus/camera/ui/menu/MenuItem;)V
    .locals 0
    .param p1, "menuItem"    # Lcom/oneplus/camera/ui/menu/MenuItem;

    .prologue
    .line 245
    return-void
.end method

.method private onMenuItemSwitchChanged(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;Z)V
    .locals 4
    .param p1, "viewInfo"    # Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;
    .param p2, "isChecked"    # Z

    .prologue
    .line 254
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 257
    .local v0, "oldValue":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 252
    .end local v0    # "oldValue":Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method private setupMenuItemSubTile(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V
    .locals 3
    .param p1, "viewInfo"    # Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;

    .prologue
    .line 328
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->subTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUBTITLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 331
    .local v0, "subTitle":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 332
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->subTitleTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    .end local v0    # "subTitle":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 335
    .restart local v0    # "subTitle":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->subTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->subTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupMenuItemSummary(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V
    .locals 3
    .param p1, "viewInfo"    # Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;

    .prologue
    .line 295
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->summaryTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 298
    .local v0, "summary":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 299
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->summaryTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 302
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->summaryTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->summaryTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupMenuItemSwitch(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V
    .locals 3
    .param p1, "viewInfo"    # Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;

    .prologue
    .line 312
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 315
    .local v0, "isChecked":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 316
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 310
    .end local v0    # "isChecked":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 319
    .restart local v0    # "isChecked":Ljava/lang/Boolean;
    :cond_1
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 320
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->switchView:Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method private setupMenuItemTitle(Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;)V
    .locals 3
    .param p1, "viewInfo"    # Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;

    .prologue
    .line 344
    iget-object v0, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v0, :cond_0

    .line 345
    iget-object v1, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->titleTextView:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/oneplus/camera/ui/menu/MenuListView$ViewInfo;->menuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :cond_0
    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 267
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot change adapter."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMenuItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/menu/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/ui/menu/MenuItem;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_MenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 278
    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_MenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_Adapter:Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;->notifyDataSetChanged()V

    .line 275
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/oneplus/camera/ui/menu/MenuListView;->m_OnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 286
    return-void
.end method
