.class public Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
.super Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChooserListAdapter"
.end annotation


# static fields
.field private static final MAX_SERVICE_TARGETS:I = 0x8

.field public static final TARGET_BAD:I = -0x1

.field public static final TARGET_CALLER:I = 0x0

.field public static final TARGET_SERVICE:I = 0x1

.field public static final TARGET_STANDARD:I = 0x2


# instance fields
.field private final mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

.field private final mCallerTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$TargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLateFee:F

.field private final mServiceTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 14
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 768
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 771
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    .line 758
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    .line 759
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    .line 761
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    .line 763
    new-instance v1, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-direct {v1}, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    .line 773
    if-eqz p4, :cond_4

    .line 774
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 775
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p4

    array-length v1, v0

    if-ge v10, v1, :cond_4

    .line 776
    aget-object v3, p4, v10

    .line 777
    .local v3, "ii":Landroid/content/Intent;
    if-nez v3, :cond_0

    .line 775
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 780
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v3, v12, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 781
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v9, :cond_1

    .line 782
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 785
    :cond_1
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 786
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 787
    const-string v1, "user"

    invoke-virtual {p1, v1}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 789
    .local v13, "userManager":Landroid/os/UserManager;
    instance-of v1, v3, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_2

    move-object v11, v3

    .line 790
    check-cast v11, Landroid/content/pm/LabeledIntent;

    .line 791
    .local v11, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 792
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v1

    iput v1, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 793
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 794
    invoke-virtual {v11}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v1

    iput v1, v4, Landroid/content/pm/ResolveInfo;->icon:I

    .line 795
    iget v1, v4, Landroid/content/pm/ResolveInfo;->icon:I

    iput v1, v4, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 797
    .end local v11    # "li":Landroid/content/pm/LabeledIntent;
    :cond_2
    invoke-virtual {v13}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 798
    const/4 v1, 0x1

    iput-boolean v1, v4, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 799
    const/4 v1, 0x0

    iput v1, v4, Landroid/content/pm/ResolveInfo;->icon:I

    .line 801
    :cond_3
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v4, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    move-object v7, v3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 805
    .end local v3    # "ii":Landroid/content/Intent;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v10    # "i":I
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "userManager":Landroid/os/UserManager;
    :cond_4
    return-void
.end method

.method private insertServiceTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)V
    .locals 5
    .param p1, "chooserTargetInfo"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    .prologue
    .line 936
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getModifiedScore()F

    move-result v2

    .line 937
    .local v2, "newScore":F
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 938
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    .line 939
    .local v3, "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getModifiedScore()F

    move-result v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    .line 940
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v4, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 945
    .end local v3    # "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :goto_1
    return-void

    .line 937
    .restart local v3    # "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 944
    .end local v3    # "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private pruneServiceTargets()V
    .locals 3

    .prologue
    .line 949
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 950
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    .line 951
    .local v0, "cti":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 953
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 949
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 956
    .end local v0    # "cti":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method public addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;)V
    .locals 9
    .param p1, "origTarget"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    const v8, 0x3f733333    # 0.95f

    .line 904
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v3

    .line 905
    .local v3, "parentScore":F
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-static {p2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 906
    const/4 v2, 0x0

    .line 907
    .local v2, "lastScore":F
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 908
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/chooser/ChooserTarget;

    .line 909
    .local v4, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v5

    .line 910
    .local v5, "targetScore":F
    mul-float/2addr v5, v3

    .line 911
    iget v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    mul-float/2addr v5, v6

    .line 912
    if-lez v1, :cond_0

    cmpl-float v6, v5, v2

    if-ltz v6, :cond_0

    .line 915
    mul-float v5, v2, v8

    .line 917
    :cond_0
    new-instance v6, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v6, v7, p1, v4, v5}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;F)V

    invoke-direct {p0, v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->insertServiceTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)V

    .line 927
    move v2, v5

    .line 907
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 930
    .end local v4    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v5    # "targetScore":F
    :cond_1
    iget v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    mul-float/2addr v6, v8

    iput v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    .line 932
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->notifyDataSetChanged()V

    .line 933
    return-void
.end method

.method public getCallerTargetCount()I
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 833
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 750
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayInfoCount()I
    .locals 1

    .prologue
    .line 750
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getDisplayInfoCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    .prologue
    .line 750
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFilteredPosition()I
    .locals 1

    .prologue
    .line 750
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 878
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 750
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItemId(I)J
    .locals 2
    .param p1, "x0"    # I

    .prologue
    .line 750
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    .prologue
    .line 750
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPositionTargetType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 854
    const/4 v1, 0x0

    .line 856
    .local v1, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 857
    .local v0, "callerTargetCount":I
    if-ge p1, v0, :cond_0

    .line 858
    const/4 v4, 0x0

    .line 873
    :goto_0
    return v4

    .line 860
    :cond_0
    add-int/2addr v1, v0

    .line 862
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    .line 863
    .local v2, "serviceTargetCount":I
    sub-int v4, p1, v1

    if-ge v4, v2, :cond_1

    .line 864
    const/4 v4, 0x1

    goto :goto_0

    .line 866
    :cond_1
    add-int/2addr v1, v2

    .line 868
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    .line 869
    .local v3, "standardTargetCount":I
    sub-int v4, p1, v1

    if-ge v4, v3, :cond_2

    .line 870
    const/4 v4, 0x2

    goto :goto_0

    .line 873
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .locals 1
    .param p1, "x0"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 750
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v0

    return v0
.end method

.method public getServiceTargetCount()I
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getStandardTargetCount()I
    .locals 1

    .prologue
    .line 850
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getUnfilteredCount()I
    .locals 2

    .prologue
    .line 838
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic handlePackagesChanged()V
    .locals 0

    .prologue
    .line 750
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    return-void
.end method

.method public bridge synthetic hasExtendedInfo()Z
    .locals 1

    .prologue
    .line 750
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasExtendedInfo()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasFilteredItem()Z
    .locals 1

    .prologue
    .line 750
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 750
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900bf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListRebuilt()V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 822
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->pruneServiceTargets()V

    .line 824
    :cond_0
    return-void
.end method

.method public bridge synthetic resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Z

    .prologue
    .line 750
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public shouldGetResolvedFilter()Z
    .locals 1

    .prologue
    .line 828
    const/4 v0, 0x1

    return v0
.end method

.method public showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 810
    const/4 v0, 0x0

    return v0
.end method

.method public targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 5
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 883
    const/4 v1, 0x0

    .line 885
    .local v1, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 886
    .local v0, "callerTargetCount":I
    if-ge p1, v0, :cond_0

    .line 887
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .line 897
    :goto_0
    return-object v3

    .line 889
    :cond_0
    add-int/2addr v1, v0

    .line 891
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    .line 892
    .local v2, "serviceTargetCount":I
    sub-int v3, p1, v1

    if-ge v3, v2, :cond_1

    .line 893
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    sub-int v4, p1, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    goto :goto_0

    .line 895
    :cond_1
    add-int/2addr v1, v2

    .line 897
    if-eqz p2, :cond_2

    sub-int v3, p1, v1

    invoke-super {p0, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    goto :goto_0

    :cond_2
    sub-int v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v3

    goto :goto_0
.end method
