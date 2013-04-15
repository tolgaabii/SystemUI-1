.class public Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
.super Landroid/widget/FrameLayout;
.source "SmartSwitcherRecentsPanelView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/systemui/recent/RecentsCallback;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;,
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnKeyLaunchButton;,
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchGoogleButton;,
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;,
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickShortcutButton;,
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnTouchShortcutIcon;,
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;,
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;,
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnLongClickDelegate;,
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;,
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnRecentsPanelVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final ASSIST_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field static final DEBUG:Z = false

.field private static final GOOGLEBUTTON_3RDAPP:I = 0x2

.field private static final GOOGLEBUTTON_DEFAULT:I = 0x0

.field private static final GOOGLEBUTTON_NONE:I = 0x3

.field private static final GOOGLEBUTTON_SEARCH:I = 0x1

.field public static final INTENT_ACTION_TASK_MANAGER:Ljava/lang/String; = "com.sec.android.app.controlpanel.MAIN"

.field private static final MAX_NUM_SHORTCUT_BUTTONS:I = 0x4

.field private static final PATTERN_COMMA:Ljava/util/regex/Pattern; = null

.field static final TAG:Ljava/lang/String; = "SmartSwitcherRecentsPanelView"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mChoreo:Lcom/android/systemui/recent/smartswitcher/Choreographer;

.field private mContext:Landroid/content/Context;

.field private mFirstScreenful:Z

.field private mFitThumbnailToXY:Z

.field mHideRecentsAfterThumbnailScaleUpStarted:Z

.field private mHighEndGfx:Z

.field private mIsTaskManagerInstalled:Z

.field private mListAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

.field private mMultiWindowEnabled:Z

.field private mNoRecentApp:Landroid/widget/TextView;

.field private mNumItemsWaitingForThumbnailsAndIcons:I

.field mPlaceholderThumbnail:Landroid/widget/ImageView;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mPreloadTasksRunnable:Ljava/lang/Runnable;

.field private mReadyToShow:Z

.field private mRecentItemLayoutId:I

.field private mRecentTaskDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasksDirty:Z

.field private mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

.field private mRecentsContainer:Landroid/view/ViewGroup;

.field private mRecentsGoogleButton:Landroid/view/View;

.field private mRecentsLaunchButton:Landroid/view/View;

.field private mRecentsNoApps:Landroid/view/View;

.field private mRecentsRemoveAllButton:Landroid/view/View;

.field private mRecentsScrim:Landroid/view/View;

.field private mShortcutComponentNames:[Ljava/lang/String;

.field private mShowRecentApplicationShortCut:Z

.field private mShowRecentGoogleNowButton:Z

.field private mShowRecentRemoveAllButton:Z

.field private mShowing:Z

.field private mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

.field mThumbnailScaleUpStarted:Z

.field private mThumbnailWidth:I

.field mTransitionBg:Landroid/view/View;

.field private mUseTouchWizGUI:Z

.field mVisibilityChangedListener:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnRecentsPanelVisibilityChangedListener;

.field private mWaitingToShow:Z

.field private mWaitingToShowAnimated:Z

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 309
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    iput-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksDirty:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mFirstScreenful:Z

    .line 163
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mMultiWindowEnabled:Z

    .line 310
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->updateValuesFromResources()V

    .line 313
    sget-object v4, Lcom/android/systemui/R$styleable;->RecentsPanelView:[I

    invoke-virtual {p1, p2, v4, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 316
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentItemLayoutId:I

    .line 317
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 321
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mUseTouchWizGUI:Z

    .line 322
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    .line 323
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentGoogleNowButton:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentApplicationShortCut:Z

    .line 333
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->isTaskManagerInstalled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mIsTaskManagerInstalled:Z

    .line 337
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/multiwindow/Utilities;->isMultiWindowEnabled(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mMultiWindowEnabled:Z

    .line 340
    return-void

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, ex:Landroid/content/res/Resources$NotFoundException;
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mUseTouchWizGUI:Z

    .line 326
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    .line 327
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentGoogleNowButton:Z

    goto :goto_0

    .end local v1           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    move v2, v3

    .line 331
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentItemLayoutId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mHighEndGfx:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->updateIcon(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method

.method static synthetic access$510(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    return v0
.end method

.method private checkAssistAppIsInstalled()I
    .locals 4

    .prologue
    .line 1373
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1374
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 1375
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1376
    .local v1, component:Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 1377
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1378
    .local v0, className:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1379
    const/4 v3, 0x0

    .line 1388
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #component:Landroid/content/ComponentName;
    :goto_0
    return v3

    .line 1380
    .restart local v0       #className:Ljava/lang/String;
    .restart local v1       #component:Landroid/content/ComponentName;
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1381
    const/4 v3, 0x1

    goto :goto_0

    .line 1383
    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    .line 1388
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_2
    const/4 v3, 0x3

    goto :goto_0
.end method

.method private createCustomAnimations(Landroid/animation/LayoutTransition;)V
    .locals 3
    .parameter "transitioner"

    .prologue
    .line 858
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 859
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 860
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 861
    return-void
.end method

.method private getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 1490
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1491
    .local v1, mAM:Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    .line 1493
    .local v2, mIconDpi:I
    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1498
    .local v3, result:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v3

    .line 1494
    .end local v3           #result:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 1495
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    .restart local v3       #result:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private isTaskManagerInstalled()Z
    .locals 5

    .prologue
    .line 1360
    const/4 v3, 0x0

    .line 1361
    .local v3, retVal:Z
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1362
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.controlpanel.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1363
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1365
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 1367
    :cond_0
    return v3
.end method

.method private loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "ri"

    .prologue
    .line 1467
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1469
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v4, :cond_1

    .line 1470
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1471
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1485
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 1475
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 1476
    .local v2, iconRes:I
    if-eqz v2, :cond_2

    .line 1477
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1478
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 1485
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .end local v2           #iconRes:I
    :cond_2
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1482
    :catch_0
    move-exception v1

    .line 1483
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "SmartSwitcherRecentsPanelView"

    const-string v5, "Couldn\'t find resources for package"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "v"

    .prologue
    .line 362
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 363
    .local v1, l:I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 364
    .local v2, r:I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 365
    .local v3, t:I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 366
    .local v0, b:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private refreshRecentTasksList(Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter
    .parameter "firstScreenful"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, recentTasksList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v1, 0x1

    .line 989
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksDirty:Z

    if-eqz v0, :cond_0

    .line 990
    if-eqz p1, :cond_1

    .line 991
    iput-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mFirstScreenful:Z

    .line 992
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;)V

    .line 997
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksDirty:Z

    .line 999
    :cond_0
    return-void

    .line 994
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mFirstScreenful:Z

    .line 995
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->loadTasksInBackground()V

    goto :goto_0
.end method

.method private replaceGoogleButtonTextAndIcon(I)V
    .locals 4
    .parameter "assist_type"

    .prologue
    const v3, 0x7f02022d

    const/4 v2, 0x0

    .line 1392
    if-nez p1, :cond_2

    .line 1393
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a012b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1395
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1397
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1400
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 1401
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->replaceGoogleButtonToSearchTextAndIcon()V

    goto :goto_0

    .line 1402
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1403
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->replaceGoogleButtonTo3rdAppTextAndIcon()V

    goto :goto_0

    .line 1405
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private replaceGoogleButtonTo3rdAppTextAndIcon()V
    .locals 24

    .prologue
    .line 1421
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1422
    .local v15, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v12

    .line 1423
    .local v12, intent:Landroid/content/Intent;
    if-eqz v12, :cond_0

    .line 1424
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 1425
    .local v16, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v16, :cond_0

    .line 1426
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1429
    .local v7, buttonText:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    const/16 v21, 0x80

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    .line 1433
    .local v13, metaData:Landroid/os/Bundle;
    if-eqz v13, :cond_1

    const-string v20, "com.android.systemui.action_assist_icon"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .local v11, iconResId:I
    if-eqz v11, :cond_1

    .line 1434
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v17

    .line 1435
    .local v17, res:Landroid/content/res/Resources;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1440
    .end local v11           #iconResId:I
    .end local v17           #res:Landroid/content/res/Resources;
    .local v6, buttonIcon:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f02022e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1441
    .local v4, SearchIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 1442
    .local v19, width:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 1443
    .local v10, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    .line 1445
    .local v18, scale:F
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_0

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 1447
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1463
    .end local v4           #SearchIcon:Landroid/graphics/drawable/Drawable;
    .end local v6           #buttonIcon:Landroid/graphics/drawable/Drawable;
    .end local v7           #buttonText:Ljava/lang/String;
    .end local v10           #height:I
    .end local v13           #metaData:Landroid/os/Bundle;
    .end local v16           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v18           #scale:F
    .end local v19           #width:I
    :cond_0
    :goto_1
    return-void

    .line 1437
    .restart local v7       #buttonText:Ljava/lang/String;
    .restart local v13       #metaData:Landroid/os/Bundle;
    .restart local v16       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .restart local v6       #buttonIcon:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1450
    .restart local v4       #SearchIcon:Landroid/graphics/drawable/Drawable;
    .restart local v10       #height:I
    .restart local v18       #scale:F
    .restart local v19       #width:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ImageButton;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1451
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6           #buttonIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1452
    .local v5, bitmap:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v18

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    mul-float v21, v21, v18

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1453
    .local v8, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1456
    .end local v4           #SearchIcon:Landroid/graphics/drawable/Drawable;
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #d:Landroid/graphics/drawable/Drawable;
    .end local v10           #height:I
    .end local v13           #metaData:Landroid/os/Bundle;
    .end local v18           #scale:F
    .end local v19           #width:I
    :catch_0
    move-exception v9

    .line 1457
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "SmartSwitcherRecentsPanelView"

    const-string v21, " (NameNotFoundException e) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1458
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v14

    .line 1459
    .local v14, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v20, "SmartSwitcherRecentsPanelView"

    const-string v21, " (Resources.NotFoundException e) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private replaceGoogleButtonToSearchTextAndIcon()V
    .locals 4

    .prologue
    const v3, 0x7f02022e

    const/4 v2, 0x0

    .line 1411
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1412
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x104000c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1413
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1415
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 400
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showIfReady()V
    .locals 4

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWaitingToShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mReadyToShow:Z

    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWaitingToShowAnimated:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->show(ZZLjava/util/ArrayList;Z)V

    .line 397
    :cond_0
    return-void
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 1190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1192
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1193
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1194
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 3
    .parameter "h"
    .parameter "icon"
    .parameter "show"
    .parameter "anim"

    .prologue
    .line 864
    if-eqz p2, :cond_1

    .line 865
    iget-object v0, p1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    if-eqz p3, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    if-eqz p4, :cond_0

    .line 868
    iget-object v0, p1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 871
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 874
    :cond_1
    return-void
.end method

.method private updateThumbnail(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 3
    .parameter "h"
    .parameter "thumbnail"
    .parameter "show"
    .parameter "anim"

    .prologue
    .line 877
    if-eqz p2, :cond_4

    .line 881
    iget-object v0, p1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 885
    iget-object v0, p1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 888
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 890
    :cond_1
    if-eqz p3, :cond_3

    iget-object v0, p1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 891
    if-eqz p4, :cond_2

    .line 892
    iget-object v0, p1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 895
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 897
    :cond_3
    iput-object p2, p1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    .line 899
    :cond_4
    return-void
.end method

.method private updateUiElements(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "config"

    .prologue
    const/4 v4, 0x0

    .line 1029
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1031
    .local v0, items:I
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-lez v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1034
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1036
    .local v1, numRecentApps:I
    if-nez v1, :cond_1

    .line 1037
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1043
    .local v2, recentAppsAccessibilityDescription:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1044
    return-void

    .line 1031
    .end local v1           #numRecentApps:I
    .end local v2           #recentAppsAccessibilityDescription:Ljava/lang/String;
    :cond_0
    const/16 v3, 0x8

    goto :goto_0

    .line 1040
    .restart local v1       #numRecentApps:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v5, 0x7f0e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #recentAppsAccessibilityDescription:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public clearRecentTasksList()V
    .locals 1

    .prologue
    .line 975
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    .line 977
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 978
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksDirty:Z

    .line 981
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->hide(Z)V

    .line 516
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 564
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 565
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 566
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 568
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getFirstScreenful()Z
    .locals 1

    .prologue
    .line 1025
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mFirstScreenful:Z

    return v0
.end method

.method public getRecentTasksList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter "selectedView"
    .parameter "anchorView"
    .parameter "thumbnailView"

    .prologue
    .line 1214
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 1247
    .end local p2
    :goto_0
    return-void

    .line 1216
    .restart local p2
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1217
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    move-object p2, p1

    .end local p2
    :cond_1
    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1219
    .local v0, popup:Landroid/widget/PopupMenu;
    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    .line 1220
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100001

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1221
    new-instance v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$3;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1240
    new-instance v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$4;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$4;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1246
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method public handleOnClick(Landroid/view/View;)V
    .locals 23
    .parameter "view"

    .prologue
    .line 1050
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->bringToFront()V

    .line 1051
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;

    .line 1052
    .local v10, holder:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;
    iget-object v4, v10, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 1053
    .local v4, ad:Lcom/android/systemui/recent/TaskDescription;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1054
    .local v8, context:Landroid/content/Context;
    const-string v19, "activity"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 1056
    .local v5, am:Landroid/app/ActivityManager;
    iget-object v7, v10, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    .line 1058
    .local v7, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    iget-object v0, v10, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getWidth()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    iget-object v0, v10, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1060
    const/16 v17, 0x0

    .line 1067
    .local v17, usingDrawingCache:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPlaceholderThumbnail:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 1068
    const v19, 0x7f0d007e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPlaceholderThumbnail:Landroid/widget/ImageView;

    .line 1071
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mTransitionBg:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1072
    const v19, 0x7f0d002d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mTransitionBg:Landroid/view/View;

    .line 1074
    const-string v19, "window"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v18

    .line 1077
    .local v18, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/view/IWindowManager;->hasSystemNavBar()Z

    move-result v19

    if-nez v19, :cond_1

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mTransitionBg:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 1080
    .local v12, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x105000a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 1082
    .local v16, statusBarHeight:I
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mTransitionBg:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    .end local v12           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v16           #statusBarHeight:I
    .end local v18           #wm:Landroid/view/IWindowManager;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPlaceholderThumbnail:Landroid/widget/ImageView;

    .line 1091
    .local v14, placeholderThumbnail:Landroid/widget/ImageView;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mHideRecentsAfterThumbnailScaleUpStarted:Z

    .line 1092
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1093
    if-nez v17, :cond_4

    .line 1094
    invoke-virtual {v14, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1099
    :goto_2
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 1100
    .local v15, r:Landroid/graphics/Rect;
    iget-object v0, v10, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1102
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1103
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1104
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1105
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 1106
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1107
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1109
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->show(ZZ)V

    .line 1111
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mThumbnailScaleUpStarted:Z

    .line 1112
    iget-object v0, v10, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    new-instance v22, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$2;

    invoke-direct/range {v22 .. v23}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$2;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v7, v1, v2, v3}, Landroid/app/ActivityOptions;->makeDelayedThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v13

    .line 1125
    .local v13, opts:Landroid/app/ActivityOptions;
    invoke-virtual {v4}, Lcom/android/systemui/recent/TaskDescription;->getTaskId()I

    move-result v19

    if-ltz v19, :cond_5

    .line 1127
    invoke-virtual {v4}, Lcom/android/systemui/recent/TaskDescription;->getTaskId()I

    move-result v19

    const/16 v20, 0x1

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v21

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1137
    :goto_3
    if-eqz v17, :cond_2

    .line 1138
    iget-object v0, v10, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 1140
    :cond_2
    return-void

    .line 1062
    .end local v13           #opts:Landroid/app/ActivityOptions;
    .end local v14           #placeholderThumbnail:Landroid/widget/ImageView;
    .end local v15           #r:Landroid/graphics/Rect;
    .end local v17           #usingDrawingCache:Z
    :cond_3
    iget-object v0, v10, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 1063
    iget-object v0, v10, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1064
    const/16 v17, 0x1

    .restart local v17       #usingDrawingCache:Z
    goto/16 :goto_0

    .line 1085
    .restart local v18       #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v9

    .line 1086
    .local v9, e:Landroid/os/RemoteException;
    const-string v19, "SmartSwitcherRecentsPanelView"

    const-string v20, "Failing checking whether status bar is visible"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1096
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v18           #wm:Landroid/view/IWindowManager;
    .restart local v14       #placeholderThumbnail:Landroid/widget/ImageView;
    :cond_4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1097
    .local v6, b2:Landroid/graphics/Bitmap;
    invoke-virtual {v14, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 1130
    .end local v6           #b2:Landroid/graphics/Bitmap;
    .restart local v13       #opts:Landroid/app/ActivityOptions;
    .restart local v15       #r:Landroid/graphics/Rect;
    :cond_5
    invoke-virtual {v4}, Lcom/android/systemui/recent/TaskDescription;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 1131
    .local v11, intent:Landroid/content/Intent;
    const v19, 0x10104000

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1135
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v11, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_3
.end method

.method public handleSwipe(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1158
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;

    iget-object v0, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 1159
    .local v0, ad:Lcom/android/systemui/recent/TaskDescription;
    if-nez v0, :cond_1

    .line 1160
    const-string v2, "SmartSwitcherRecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to find activity description for swiped task; view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1170
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1171
    invoke-virtual {p0, v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->hide(Z)V

    .line 1176
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1178
    .local v1, am:Landroid/app/ActivityManager;
    if-eqz v1, :cond_0

    .line 1179
    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getPersistentTaskId()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 1182
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00d2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1184
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->sendAccessibilityEvent(I)V

    .line 1185
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public hide(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 519
    if-nez p1, :cond_0

    .line 520
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setVisibility(I)V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapse(I)V

    .line 526
    :cond_1
    return-void
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1143
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mThumbnailScaleUpStarted:Z

    if-nez v0, :cond_0

    .line 1144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mHideRecentsAfterThumbnailScaleUpStarted:Z

    .line 1151
    :goto_0
    return-void

    .line 1146
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setVisibility(I)V

    .line 1147
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mTransitionBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPlaceholderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mHideRecentsAfterThumbnailScaleUpStarted:Z

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 370
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    return v0
.end method

.method public numItemsInOneScreenful()I
    .locals 3

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;

    if-eqz v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;

    .line 346
    .local v0, scrollView:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;
    invoke-interface {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;->numItemsInOneScreenful()I

    move-result v1

    return v1

    .line 348
    .end local v0           #scrollView:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "missing Recents[Horizontal]ScrollView"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 529
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 532
    iget-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    if-eqz v1, :cond_0

    .line 533
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 534
    .local v0, transitioner:Landroid/animation/LayoutTransition;
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 535
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->createCustomAnimations(Landroid/animation/LayoutTransition;)V

    .line 540
    .end local v0           #transitioner:Landroid/animation/LayoutTransition;
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 538
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->clearRecentTasksList()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 543
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 546
    return-void
.end method

.method protected onFinishInflate()V
    .locals 23

    .prologue
    .line 641
    invoke-super/range {p0 .. p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 643
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 644
    const v1, 0x7f0d002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    .line 645
    const v1, 0x7f0d00bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/StatusBarTouchProxy;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    .line 646
    new-instance v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    .line 647
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;

    if-eqz v1, :cond_5

    .line 648
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v15, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;

    .line 650
    .local v15, scrollView:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    invoke-interface {v15, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;->setAdapter(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;)V

    .line 651
    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    .line 656
    const v1, 0x7f0d002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsScrim:Landroid/view/View;

    .line 657
    const v1, 0x7f0d0033

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    .line 658
    new-instance v1, Lcom/android/systemui/recent/smartswitcher/Choreographer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsScrim:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    move-object/from16 v2, p0

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/recent/smartswitcher/Choreographer;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mChoreo:Lcom/android/systemui/recent/smartswitcher/Choreographer;

    .line 661
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v1, :cond_7

    .line 662
    const v1, 0x7f0d0030

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    .line 663
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v1, :cond_0

    .line 664
    const v1, 0x7f0d0031

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    .line 666
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v1, :cond_1

    .line 667
    const v1, 0x7f0d0032

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    .line 669
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 671
    .local v11, lp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 673
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnKeyLaunchButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 679
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v1, :cond_2

    .line 680
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchGoogleButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchGoogleButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnKeyLaunchButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 685
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v1, :cond_3

    .line 686
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnKeyLaunchButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 692
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentApplicationShortCut:Z

    if-eqz v1, :cond_7

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 694
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 695
    .local v19, shortcutAppList:Ljava/lang/String;
    sget-object v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    .line 696
    const/4 v1, 0x4

    new-array v0, v1, [Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    .line 697
    .local v17, shortCutLayout:[Landroid/widget/LinearLayout;
    const/4 v1, 0x4

    new-array v0, v1, [Landroid/widget/ImageView;

    move-object/from16 v16, v0

    .line 698
    .local v16, shortCutIcons:[Landroid/widget/ImageView;
    const/4 v1, 0x4

    new-array v0, v1, [Landroid/widget/TextView;

    move-object/from16 v18, v0

    .line 700
    .local v18, shortCutTexts:[Landroid/widget/TextView;
    const/4 v12, 0x0

    .line 702
    .local v12, numIcons:I
    const/4 v2, 0x0

    const v1, 0x7f0d00fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    aput-object v1, v17, v2

    .line 703
    const/4 v2, 0x1

    const v1, 0x7f0d00fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    aput-object v1, v17, v2

    .line 704
    const/4 v2, 0x2

    const v1, 0x7f0d0100

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    aput-object v1, v17, v2

    .line 705
    const/4 v2, 0x3

    const v1, 0x7f0d0103

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    aput-object v1, v17, v2

    .line 707
    const/4 v2, 0x0

    const v1, 0x7f0d00fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v16, v2

    .line 708
    const/4 v2, 0x1

    const v1, 0x7f0d00fe

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v16, v2

    .line 709
    const/4 v2, 0x2

    const v1, 0x7f0d0101

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v16, v2

    .line 710
    const/4 v2, 0x3

    const v1, 0x7f0d0104

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v16, v2

    .line 712
    const/4 v2, 0x0

    const v1, 0x7f0d00fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v18, v2

    .line 713
    const/4 v2, 0x1

    const v1, 0x7f0d00ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v18, v2

    .line 714
    const/4 v2, 0x2

    const v1, 0x7f0d0102

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v18, v2

    .line 715
    const/4 v2, 0x3

    const v1, 0x7f0d0105

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v18, v2

    .line 718
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v9, v1, :cond_6

    const/4 v1, 0x4

    if-ge v9, v1, :cond_6

    .line 719
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 722
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 723
    const/4 v1, 0x0

    invoke-virtual {v13, v10, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 724
    .local v14, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_4

    .line 725
    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 726
    .local v22, shortcutText:Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 727
    .local v20, shortcutIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v20, :cond_4

    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 728
    aget-object v1, v17, v9

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 729
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x5a

    const/16 v4, 0x5a

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 731
    aget-object v1, v16, v9

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 732
    aget-object v1, v16, v9

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 733
    aget-object v1, v16, v9

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 734
    aget-object v1, v16, v9

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 735
    aget-object v1, v16, v9

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 736
    aget-object v1, v16, v9

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearFocus()V

    .line 738
    aget-object v1, v18, v9

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    aget-object v1, v16, v9

    new-instance v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnTouchShortcutIcon;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnTouchShortcutIcon;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 741
    aget-object v1, v16, v9

    new-instance v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickShortcutButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickShortcutButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    add-int/lit8 v12, v12, 0x1

    .line 718
    .end local v20           #shortcutIcon:Landroid/graphics/drawable/Drawable;
    .end local v22           #shortcutText:Ljava/lang/String;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 653
    .end local v9           #i:I
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v12           #numIcons:I
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    .end local v14           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v15           #scrollView:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;
    .end local v16           #shortCutIcons:[Landroid/widget/ImageView;
    .end local v17           #shortCutLayout:[Landroid/widget/LinearLayout;
    .end local v18           #shortCutTexts:[Landroid/widget/TextView;
    .end local v19           #shortcutAppList:Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "missing Recents[Horizontal]ScrollView"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 746
    .restart local v9       #i:I
    .restart local v11       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v12       #numIcons:I
    .restart local v13       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v15       #scrollView:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;
    .restart local v16       #shortCutIcons:[Landroid/widget/ImageView;
    .restart local v17       #shortCutLayout:[Landroid/widget/LinearLayout;
    .restart local v18       #shortCutTexts:[Landroid/widget/TextView;
    .restart local v19       #shortcutAppList:Ljava/lang/String;
    :cond_6
    if-lez v12, :cond_7

    .line 747
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 748
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    const v1, 0x7f0d00f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 751
    .local v21, shortcutLine:Landroid/widget/ImageView;
    const v1, 0x7f0d00f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 753
    .local v7, applicationShortcutLayout:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 754
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 763
    .end local v7           #applicationShortcutLayout:Landroid/widget/LinearLayout;
    .end local v9           #i:I
    .end local v11           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v12           #numIcons:I
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #shortCutIcons:[Landroid/widget/ImageView;
    .end local v17           #shortCutLayout:[Landroid/widget/LinearLayout;
    .end local v18           #shortCutTexts:[Landroid/widget/TextView;
    .end local v19           #shortcutAppList:Ljava/lang/String;
    .end local v21           #shortcutLine:Landroid/widget/ImageView;
    :cond_7
    const v1, 0x7f0d00f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    .line 767
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsScrim:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 768
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 770
    .local v8, d:Landroid/view/Display;
    invoke-static {v8}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mHighEndGfx:Z

    .line 771
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mHighEndGfx:Z

    if-nez v1, :cond_9

    .line 772
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsScrim:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 779
    .end local v8           #d:Landroid/view/Display;
    :cond_8
    :goto_1
    new-instance v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    .line 790
    return-void

    .line 773
    .restart local v8       #d:Landroid/view/Display;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_8

    .line 775
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1198
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "disable_pen_gesture"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 1199
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return v0

    .line 1204
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-nez v1, :cond_0

    .line 1207
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 1154
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->handleOnClick(Landroid/view/View;)V

    .line 1155
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1254
    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    .line 1255
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1256
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1258
    :cond_1
    const/4 v0, 0x1

    .line 1261
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 354
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->show(ZZ)V

    .line 356
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 554
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 555
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mChoreo:Lcom/android/systemui/recent/smartswitcher/Choreographer;

    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/Choreographer;->setPanelHeight(I)V

    .line 556
    return-void
.end method

.method onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 7
    .parameter "td"

    .prologue
    .line 902
    monitor-enter p1

    .line 903
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 904
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    .line 905
    .local v1, container:Landroid/view/ViewGroup;
    instance-of v5, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;

    if-eqz v5, :cond_0

    .line 906
    const v5, 0x7f0d007f

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #container:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 910
    .restart local v1       #container:Landroid/view/ViewGroup;
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 911
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 912
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;

    if-eqz v5, :cond_1

    .line 913
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;

    .line 914
    .local v2, h:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;
    iget-boolean v5, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    if-nez v5, :cond_1

    iget-object v5, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    if-ne v5, p1, :cond_1

    .line 919
    const/4 v0, 0x0

    .line 920
    .local v0, animateShow:Z
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->updateIcon(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 921
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    .line 922
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    .line 923
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    .line 910
    .end local v0           #animateShow:Z
    .end local v2           #h:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 928
    .end local v1           #container:Landroid/view/ViewGroup;
    .end local v3           #i:I
    .end local v4           #v:Landroid/view/View;
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->showIfReady()V

    .line 930
    return-void

    .line 928
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public onTasksLoaded(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v1, 0x0

    .line 1002
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mFirstScreenful:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 1005
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mFirstScreenful:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mNumItemsWaitingForThumbnailsAndIcons:I

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1009
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 1013
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    .line 1014
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->updateUiElements(Landroid/content/res/Configuration;)V

    .line 1015
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mReadyToShow:Z

    .line 1016
    iput-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mFirstScreenful:Z

    .line 1017
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->showIfReady()V

    goto :goto_0

    .line 1005
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    .line 1011
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "ev"

    .prologue
    const/16 v2, 0x8

    .line 937
    iget-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    if-nez v1, :cond_0

    .line 938
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 939
    .local v0, action:I
    if-nez v0, :cond_1

    .line 940
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->post(Ljava/lang/Runnable;)Z

    .line 955
    .end local v0           #action:I
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 941
    .restart local v0       #action:I
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 942
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setVisibility(I)V

    .line 943
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->clearRecentTasksList()V

    .line 945
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 946
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 948
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 949
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 950
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setVisibility(I)V

    .line 951
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->clearRecentTasksList()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 960
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->dismiss()V

    .line 963
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public preloadRecentTasksList()V
    .locals 1

    .prologue
    .line 968
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    if-nez v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 971
    :cond_0
    return-void
.end method

.method public refreshRecentTasksList()V
    .locals 2

    .prologue
    .line 984
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 985
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 1268
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1271
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 1275
    :cond_1
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 582
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 2
    .parameter "minAlpha"

    .prologue
    .line 793
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;

    if-eqz v1, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;

    .line 796
    .local v0, scrollView:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;
    invoke-interface {v0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;->setMinSwipeAlpha(F)V

    .line 798
    .end local v0           #scrollView:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;
    :cond_0
    return-void
.end method

.method public setOnVisibilityChangedListener(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnRecentsPanelVisibilityChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mVisibilityChangedListener:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnRecentsPanelVisibilityChangedListener;

    .line 597
    return-void
.end method

.method public setRecentTasksLoader(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)V
    .locals 0
    .parameter "loader"

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    .line 592
    return-void
.end method

.method public setStatusBarView(Landroid/view/View;)V
    .locals 1
    .parameter "statusBarView"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/StatusBarTouchProxy;->setStatusBar(Landroid/view/View;)V

    .line 588
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mVisibilityChangedListener:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnRecentsPanelVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 601
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mVisibilityChangedListener:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnRecentsPanelVisibilityChangedListener;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnRecentsPanelVisibilityChangedListener;->onRecentsPanelVisibilityChanged(Z)V

    .line 603
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 604
    return-void

    .line 601
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(ZZ)V
    .locals 2
    .parameter "show"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 381
    if-eqz p1, :cond_0

    .line 382
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 383
    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWaitingToShow:Z

    .line 384
    iput-boolean p2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWaitingToShowAnimated:Z

    .line 385
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->showIfReady()V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->show(ZZLjava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public show(ZZLjava/util/ArrayList;Z)V
    .locals 8
    .parameter "show"
    .parameter "animate"
    .parameter
    .parameter "firstScreenful"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, recentTaskDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 410
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    const-string v7, "recentapps"

    invoke-static {v6, v7}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 412
    if-eqz p1, :cond_b

    .line 414
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 415
    .local v0, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {v0, v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 512
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_0
    :goto_0
    return-void

    .line 424
    .restart local v0       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 428
    iget-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mFirstScreenful:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_8

    move v2, v3

    .line 429
    .local v2, noApps:Z
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v6, :cond_a

    .line 430
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 431
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v2, :cond_2

    move v5, v4

    :cond_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-boolean v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v5, :cond_3

    .line 435
    if-eqz v2, :cond_9

    .line 436
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 457
    :cond_3
    :goto_2
    iget-boolean v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v5, :cond_5

    .line 458
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-boolean v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v5, :cond_4

    .line 461
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->checkAssistAppIsInstalled()I

    move-result v1

    .line 462
    .local v1, mAssistApp:I
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 464
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->replaceGoogleButtonTextAndIcon(I)V

    .line 466
    .end local v1           #mAssistApp:I
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v5, :cond_5

    .line 467
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 489
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v2           #noApps:Z
    :cond_5
    :goto_3
    if-eqz p2, :cond_d

    .line 490
    iget-boolean v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    if-eq v5, p1, :cond_7

    .line 491
    iput-boolean p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    .line 492
    if-eqz p1, :cond_6

    .line 493
    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setVisibility(I)V

    .line 495
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mChoreo:Lcom/android/systemui/recent/smartswitcher/Choreographer;

    invoke-virtual {v4, p1}, Lcom/android/systemui/recent/smartswitcher/Choreographer;->startAnimation(Z)V

    .line 503
    :cond_7
    :goto_4
    if-eqz p1, :cond_f

    .line 504
    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setFocusable(Z)V

    .line 505
    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setFocusableInTouchMode(Z)V

    .line 506
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->requestFocus()Z

    goto :goto_0

    .restart local v0       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_8
    move v2, v4

    .line 428
    goto :goto_1

    .line 438
    .restart local v2       #noApps:Z
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 443
    :cond_a
    if-eqz v2, :cond_3

    .line 447
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    invoke-virtual {v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    .line 448
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksDirty:Z

    .line 450
    iput-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWaitingToShow:Z

    .line 451
    iput-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mReadyToShow:Z

    goto/16 :goto_0

    .line 474
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v2           #noApps:Z
    :cond_b
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    invoke-virtual {v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    .line 475
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksDirty:Z

    .line 476
    iput-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWaitingToShow:Z

    .line 477
    iput-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mReadyToShow:Z

    .line 480
    iget-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v6, :cond_5

    .line 481
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 482
    iget-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v6, :cond_c

    .line 483
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 484
    :cond_c
    iget-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v6, :cond_5

    .line 485
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 498
    :cond_d
    iput-boolean p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    .line 499
    if-eqz p1, :cond_e

    :goto_5
    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setVisibility(I)V

    .line 500
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mChoreo:Lcom/android/systemui/recent/smartswitcher/Choreographer;

    invoke-virtual {v4, p1}, Lcom/android/systemui/recent/smartswitcher/Choreographer;->jumpTo(Z)V

    .line 501
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_4

    .line 499
    :cond_e
    const/16 v4, 0x8

    goto :goto_5

    .line 508
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_0

    .line 509
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->dismiss()V

    goto/16 :goto_0
.end method

.method public updateValuesFromResources()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 607
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 608
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mThumbnailWidth:I

    .line 609
    iput-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mFitThumbnailToXY:Z

    .line 612
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v2, :cond_3

    .line 613
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/Button;

    if-eqz v2, :cond_4

    .line 614
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0a012a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 619
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v2, :cond_1

    .line 621
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->checkAssistAppIsInstalled()I

    move-result v0

    .line 622
    .local v0, mAssistApp:I
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 623
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->replaceGoogleButtonTextAndIcon(I)V

    .line 626
    .end local v0           #mAssistApp:I
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v2, :cond_2

    .line 627
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/Button;

    if-eqz v2, :cond_5

    .line 628
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0a012c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 633
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 634
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    const v3, 0x7f0a0068

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 637
    :cond_3
    return-void

    .line 615
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 616
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x7f02022f

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 629
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 630
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x7f02022c

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method
