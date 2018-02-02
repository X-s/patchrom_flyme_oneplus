.class public Landroid/support/v4/app/ListFragment;
.super Landroid/support/v4/app/Fragment;
.source "ListFragment.java"


# static fields
.field static final INTERNAL_EMPTY_ID:I = 0xff0001

.field static final INTERNAL_LIST_CONTAINER_ID:I = 0xff0003

.field static final INTERNAL_PROGRESS_CONTAINER_ID:I = 0xff0002


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Landroid/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Landroid/support/v4/app/ListFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$1;-><init>(Landroid/support/v4/app/ListFragment;)V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 55
    new-instance v0, Landroid/support/v4/app/ListFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$2;-><init>(Landroid/support/v4/app/ListFragment;)V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 72
    return-void
.end method

.method private ensureList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 323
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_1

    .line 330
    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_2

    const v1, 0xff0001

    .line 333
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 334
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 337
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v1, 0xff0002

    .line 339
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    const v1, 0xff0003

    .line 340
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    const v1, 0x102000a

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 342
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_4

    .line 352
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 353
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 355
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-nez v0, :cond_7

    .line 360
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    .line 361
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 362
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_8

    .line 369
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-nez v0, :cond_9

    .line 373
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    return-void

    .line 324
    :cond_0
    return-void

    .line 328
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    goto :goto_1

    :cond_3
    const v1, 0x1020004

    .line 335
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    goto :goto_0

    .line 343
    :cond_4
    if-eqz v0, :cond_5

    .line 348
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 356
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 363
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 364
    iput-object v3, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 365
    invoke-virtual {p0, v0}, Landroid/support/v4/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 370
    :cond_9
    invoke-direct {p0, v4, v4}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    goto :goto_2
.end method

.method private setListShown(ZZ)V
    .locals 6

    .prologue
    const v5, 0x10a0001

    const/high16 v4, 0x10a0000

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 280
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 281
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 284
    iget-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    if-eq v0, p1, :cond_1

    .line 287
    iput-boolean p1, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    .line 288
    if-nez p1, :cond_2

    .line 301
    if-nez p2, :cond_4

    .line 307
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 308
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 310
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :goto_1
    return-void

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_1
    return-void

    .line 289
    :cond_2
    if-nez p2, :cond_3

    .line 295
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 296
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 298
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 290
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 292
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 302
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 304
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 223
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 215
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 207
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 91
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 93
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v3, 0xff0002

    .line 98
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v3, 0x1

    .line 99
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x8

    .line 100
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 103
    new-instance v3, Landroid/widget/ProgressBar;

    const v4, 0x101007a

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0xff0003

    .line 114
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 116
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0xff0001

    .line 117
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    .line 118
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const v3, 0x102000a

    .line 123
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setId(I)V

    .line 124
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 125
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    return-object v1
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    .line 156
    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 157
    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 158
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 159
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 145
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 146
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 232
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 233
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 240
    :goto_0
    iput-object p1, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    .line 241
    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    move v0, v1

    .line 180
    :goto_0
    iput-object p1, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 181
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    if-nez v3, :cond_2

    .line 189
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 179
    goto :goto_0

    .line 182
    :cond_2
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    iget-boolean v3, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_2
    invoke-direct {p0, v2, v1}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    .line 259
    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    .line 267
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    .line 199
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 200
    return-void
.end method
